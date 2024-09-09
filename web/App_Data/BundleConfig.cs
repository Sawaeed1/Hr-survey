using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace web
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/Resources/bundles/WebFormsJs").Include(
                            "~/Resources/Path/WebForms/WebForms.js",
                            "~/Resources/Path/WebForms/WebForms.js",
                            "~/Resources/Path/WebForms/WebUIValidation.js",
                            "~/Resources/Path/WebForms/MenuStandards.js",
                            "~/Resources/Path/WebForms/Focus.js",
                            "~/Resources/Path/WebForms/GridView.js",
                            "~/Resources/Path/WebForms/DetailsView.js",
                            "~/Resources/Path/WebForms/TreeView.js",
                            "~/Resources/Path/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Resources/Path/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Resources/Path/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Resources/Path/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Resources/Path/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

           

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Resources/Path/modernizr-*"));


            //ScriptManager.ScriptResourceMapping.AddDefinition(
            //    "respond",
            //    new ScriptResourceDefinition
            //    {
            //        Path = "~/Resources/Path/respond.min.js",
            //        DebugPath = "~/Resources/Path/respond.js",
            //    });
        }
    }
}