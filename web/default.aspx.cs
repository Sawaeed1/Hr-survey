﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.Entity;

namespace web
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                pnlregister.Visible = true;
                pnlThankyou.Visible = false;
            }
        }
        protected void lnkSubmit_Click(object sender, EventArgs e)
        {
            try
            {

              


                int question1 = 0;
                // rating_PerformanceCurrentDevice = Convert.ToInt32(Request.Form["rating_PerformanceCurrentDevice"]);
                question1 = Convert.ToInt32(hiddenSelectedRating1.Value);

                int question2 = 0;
                question2 = Convert.ToInt32(hiddenSelectedRating2.Value);//Convert.ToInt32(Request.Form["rating_speedAccessworkdevice"]);


                int question3 = 0;
                question3 = Convert.ToInt32(hiddenSelectedRating3.Value);//Convert.ToInt32(Request.Form["rating_swsConnect"]);

                int question4 = 0;
                question4 = Convert.ToInt32(hiddenSelectedRating4.Value);//Convert.ToInt32(Request.Form["rating_shared_files_and_copying"]);


                int question5 = 0;
                question5 = Convert.ToInt32(hiddenSelectedRating5.Value);

                int question6 = 0;
                question6 = Convert.ToInt32(hiddenSelectedRating6.Value);

                int question7 = 0;
                question7 = Convert.ToInt32(hiddenSelectedRating7.Value);

                int question8 = 0;
                question8 = Convert.ToInt32(hiddenSelectedRating8.Value);


                string ipAddress = string.Empty;
                string latitude = string.Empty;
                string longitude = string.Empty;
                try
                {
                    if (!String.IsNullOrEmpty(HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"]))
                        ipAddress = HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"];
                    else
                        ipAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];


                 
                }
                catch (Exception Ex)
                {
                    
                }

                try
                {
                    latitude = Request.Form["latitude"];
                    longitude = Request.Form["longitude"];
                }
                catch (Exception)
                {
                    
                }


                DataTable dt = new DataTable();
                dt.Clear();
                dt.Columns.Add("QuestionID", typeof(int));
                dt.Columns.Add("Answer", typeof(string));


                dt.Rows.Add(1, question1);
                dt.Rows.Add(2, question2);
                dt.Rows.Add(3, question3);
                dt.Rows.Add(4, question4);
                dt.Rows.Add(5, question5);
                dt.Rows.Add(6, question6);
                dt.Rows.Add(7, question7);
                dt.Rows.Add(8, question8);
             

                dt.Columns.Add("ID", typeof(Int32));

                int id = 1;
                foreach (DataRow row in dt.Rows)
                {
                    row["ID"] = Convert.ToString(id);
                    id++;
                }

                bool isSaved = false;
                string constr = ConfigurationManager.ConnectionStrings["LogConnection"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("HR_Survey_Insert_SurveyAnswers", connection))
                    {
                        connection.Open();
                        cmd.Parameters.AddWithValue("@ipAddress", ipAddress);
                        cmd.Parameters.AddWithValue("@Lat", latitude);
                        cmd.Parameters.AddWithValue("@Long", longitude);
                        cmd.Parameters.AddWithValue("@SurveyType", 1);
                        cmd.Parameters.AddWithValue("@department", Convert.ToInt32(ddlDepartment.SelectedValue));
                        cmd.Parameters.AddWithValue("@zone", Convert.ToInt32(ddlZone.SelectedValue));                        
                        cmd.Parameters.AddWithValue("@tAnswer", dt);
                        cmd.CommandType = CommandType.StoredProcedure;
                        int isRowEffected = cmd.ExecuteNonQuery();


                        isSaved = isRowEffected == 0 ? false : true;
                        connection.Close();

                        if (isSaved)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('تم إرسال البيانات بنجاح!');window.location='Education_development.aspx';</script>'");
                            //pnlregister.Visible = false;
                            //pnlThankyou.Visible = true;
                            //Response.Redirect("Education_development.aspx");
                        }
                    }
                }


            }
            catch (Exception Ex)
            {

                string ipAddress = string.Empty;
                if (!String.IsNullOrEmpty(HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"]))
                    ipAddress = HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"];
                else
                    ipAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];

                ExceptionLogging.SendErrorToText(Ex, ipAddress);
            }
        }
    }
}