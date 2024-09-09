<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Education_development.aspx.cs" EnableEventValidation="false" Inherits="web.Education_development" %>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">

    <link rel="icon" href="Resources/img/cropped-logo-color-en-32x32.png" sizes="32x32">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>سواعد 2024</title>


    <link href="Resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <link href="Resources/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Resources/css/sweatalert.css">

    <script src="Resources/js/sweetalert2.min.js"></script>
    <style>
        input[type="radio"] {
            margin: 0 10px 0 10px;
        }

        .error-message {
            color: orangered;
            padding: 10px;
            list-style: none;
        }

        .chkmarginright {
            margin-right: 31px;
        }
    </style>
    <style>
        .stars {
            font-size: 40px;
            direction: rtl;
            cursor: pointer;
        }

        .rating {
            display: inline-block;
            direction: rtl;
            text-align: right;
        }

            .rating input {
                display: none;
                direction: rtl;
            }

            .rating label {
                cursor: pointer;
                display: inline-block;
                font-size: 41px;
                color: lightgray;
                direction: rtl;
            }

                .rating label:hover,
                .rating label:hover ~ label,
                .rating input:checked ~ label {
                    color: #ffcd40;
                }

        .custom-alert {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
        }

        .custom-alert-success {
            color: #155724;
            background-color: #d4edda;
            border-color: #c3e6cb;
        }

        .custom-alert-danger {
            color: #721c24;
            background-color: #f8d7da;
            border-color: #f5c6cb;
        }

        .custom-alert-warning {
            color: #856404;
            background-color: #fff3cd;
            border-color: #ffeeba;
        }

        .custom-alert-info {
            color: #0c5460;
            background-color: #d1ecf1;
            border-color: #bee5eb;
        }
    </style>





</head>

<body class="bg-gradient-primary">
    <form id="frm" runat="server">
        <div class="container">


            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">

                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image" style="position: static !important"></div>
                                <div class="col-lg-10" style="text-align: right !important">

                                    <div class="p-5">
                                        <%--style="margin-left: 10%"--%>

                                        <div class="form-group" style="text-align: center">
                                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Resources/img/Sawaeed-logo.png" Height="145" />

                                            <div style="height: 25px"></div>
                                        </div>

                                        <asp:Panel ID="pnlregister" Visible="true" runat="server">
                                            <div class="text-center">
                                                <h1 class="h4 text-gray-900 mb-4">إستفتاء حول خدمات إدارة رأس المال البشري</h1>
                                                <hr />

                                            </div>

                                            <form class="user">
                                                <br />
                                                <div style="direction: rtl">
                                                    <div id="notifications" runat="server" clientidmode="Static" style="text-align: right"></div>
                                                </div>
                                                <span style="font-size: 8pt">التقييم من 1 الى 5 حيث ان 1 غير راضي و 5 راضي جدا </span>
                                                <br />
                                                <br />


                                                <asp:Panel ID="pnlEmployment" runat="server">
                                                    <div class="custom-alert custom-alert-success">
                                                        تعليم والتطوير
                                                    </div>
                                                    <div class="custom-alert custom-alert-warning" style="width: 35%; direction: rtl; text-align: right; float: right">
                                                        جميع الموظفين
                                                    </div>
                                                    <div style="height: 80px"></div>
                                                    <input type="hidden" id="latitude" name="latitude">
                                                    <input type="hidden" id="longitude" name="longitude">
                                                

                                                    <div class="question">
                                                        <div class="form-group" dir="rtl">
                                                            <asp:Image ID="img1" runat="server" ImageUrl="~/Resources/img/question.png" Width="30px" Height="28px" />
                                                            <asp:Label ID="Label10" Text="ما مدى فعالية برامج التدريب في تعزيز مهاراتك ومعرفتك؟ " ForeColor="Black" runat="server" Style="direction: rtl"></asp:Label>
                                                            <b style="color: red">*</b><br />

                                                            <div style="direction: rtl">


                                                                <div class="stars">
                                                                    <span class="star" data-value="1">&#9733;</span>
                                                                    <span class="star" data-value="2">&#9733;</span>
                                                                    <span class="star" data-value="3">&#9733;</span>
                                                                    <span class="star" data-value="4">&#9733;</span>
                                                                    <span class="star" data-value="5">&#9733;</span>
                                                                </div>
                                                                <div style="display: none">
                                                                    <asp:Label ID="selectedRating1" runat="server"></asp:Label>
                                                                </div>
                                                                <asp:HiddenField ID="hiddenSelectedRating1" runat="server" />


                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="question">
                                                        <div class="form-group" dir="rtl">
                                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/img/question.png" Width="30px" Height="28px" />
                                                            <asp:Label ID="Label1" Text="ما مدى سهولة الوصول إلى فرص التعلم والتطوير داخل الشركة؟ " ForeColor="Black" runat="server" Style="direction: rtl"></asp:Label>
                                                            <b style="color: red">*</b><br />

                                                            <div style="direction: rtl">


                                                                <div class="stars">
                                                                    <span class="star" data-value="1">&#9733;</span>
                                                                    <span class="star" data-value="2">&#9733;</span>
                                                                    <span class="star" data-value="3">&#9733;</span>
                                                                    <span class="star" data-value="4">&#9733;</span>
                                                                    <span class="star" data-value="5">&#9733;</span>
                                                                </div>
                                                                <div style="display: none">
                                                                    <asp:Label ID="selectedRating2" runat="server"></asp:Label>
                                                                </div>
                                                                <asp:HiddenField ID="hiddenSelectedRating2" runat="server" />

                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="question">
                                                        <div class="form-group" dir="rtl">
                                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Resources/img/question.png" Width="30px" Height="28px" />
                                                            <asp:Label ID="Label2" Text="ما مدى توافق برامج التعلم والتطوير مع أهداف نموك المهني؟ " ForeColor="Black" runat="server" Style="direction: rtl"></asp:Label>
                                                            <b style="color: red">*</b><br />

                                                            <div style="direction: rtl">


                                                                <div class="stars">
                                                                    <span class="star" data-value="1">&#9733;</span>
                                                                    <span class="star" data-value="2">&#9733;</span>
                                                                    <span class="star" data-value="3">&#9733;</span>
                                                                    <span class="star" data-value="4">&#9733;</span>
                                                                    <span class="star" data-value="5">&#9733;</span>
                                                                </div>
                                                                <div style="display: none">
                                                                    <asp:Label ID="selectedRating3" runat="server"></asp:Label>
                                                                </div>
                                                                <asp:HiddenField ID="hiddenSelectedRating3" runat="server" />

                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="question">
                                                        <div class="form-group" dir="rtl">
                                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/Resources/img/question.png" Width="30px" Height="28px" />
                                                            <asp:Label ID="Label3" Text="ما مدى رضاك عن تنوع وملاءمة الدورات التدريبية المتاحة؟" ForeColor="Black" runat="server" Style="direction: rtl"></asp:Label>
                                                            <b style="color: red">*</b><br />

                                                            <div style="direction: rtl">


                                                                <div class="stars">
                                                                    <span class="star" data-value="1">&#9733;</span>
                                                                    <span class="star" data-value="2">&#9733;</span>
                                                                    <span class="star" data-value="3">&#9733;</span>
                                                                    <span class="star" data-value="4">&#9733;</span>
                                                                    <span class="star" data-value="5">&#9733;</span>
                                                                </div>
                                                                <div style="display: none">
                                                                    <asp:Label ID="selectedRating4" runat="server"></asp:Label>
                                                                </div>
                                                                <asp:HiddenField ID="hiddenSelectedRating4" runat="server" />

                                                            </div>
                                                        </div>

                                                    </div>




                                                   

                                                    <div id="errorList" class="error-message"></div>


                                                    <br />
                                                    <div class="rowzz">
                                                        <asp:LinkButton ID="lnkSubmit" runat="server" ClientIDMode="Static" Style="width: 70%" CssClass="btn btn-primary btn-user btn-block" OnClientClick="return validate();" OnClick="lnkSubmit_Click"> التالي</asp:LinkButton>
                                                    </div>
                                                    <hr>
                                                    <style>
                                                        .rowzz {
                                                            display: flex;
                                                            justify-content: center; /* Horizontally centers the button */
                                                            align-items: center; /* Vertically centers the button */
                                                            /* Additional styles for the row if needed */
                                                        }
                                                    </style>

                                                </asp:Panel>
                                            </form>

                                        </asp:Panel>
                                        <asp:Panel ID="pnlThankyou" runat="server" Visible="false">
                                            <div class="container thank-you-container">
                                                <div class="row">


                                                    <div class="alert alert-success alert-dismissible fade show" style="width: 100%" role="alert">
                                                        <div class="col-md-8 offset-md-2 text-center">
                                                            <h1 class="mb-4" dir="rtl">شكرًا لك!</h1>
                                                            <p class="lead" dir="rtl">نحن ممتنون لدعمكم</p>

                                                            <div style="height: 55px"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <div class="text-center">
                                            <label style="text-align: center; font-size: 10pt">
                                                Copyright <a href="https://sawaeed.sa/ar/"><b style="color: #4e73df">SAWAEED</b> </a>KSA @
                                                <script>document.write(/\d{4}/.exec(Date())[0])</script>



                                            </label>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>


        <script src="Resources/vendor/jquery/jquery.min.js"></script>
        <script src="Resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


        <script src="Resources/vendor/jquery-easing/jquery.easing.min.js"></script>


        <%--  <script src="Resources/js/sb-admin-2.min.js"></script>
        <script src="Resources/js/Main.js"></script>--%>
        <script>

            document.addEventListener('DOMContentLoaded', function () {
                getLocation();
            });



            function getLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition);
                } else {
                    //   alert("Geolocation is not supported by this browser.");
                }
            }

            function showPosition(position) {
                document.getElementById("latitude").value = position.coords.latitude;
                document.getElementById("longitude").value = position.coords.longitude;
            }





            function clearErrorMessages() {
                var errorList = document.getElementById("errorList");
                while (errorList.firstChild) {
                    errorList.removeChild(errorList.firstChild);
                }
            }
            function displayErrorMessage(message) {
                var errorList = document.getElementById("errorList");
                var listItem = document.createElement("li");
                listItem.innerText = "•" + message;
                errorList.appendChild(listItem);
            }


            function showConfirmation() {

                Swal.fire({
                    title: "تم تعبئة الاستبيان بنجاح،",
                    text: "نشكر لكم تعبئة الاستبيان!",
                    icon: "success",
                    confirmButtonText: "نعم"
                });

            }



            const questions = document.querySelectorAll('.question');

            questions.forEach((question, index) => {
                const stars = question.querySelectorAll('.star');
                const selectedRating = question.querySelector(`#selectedRating${index + 1}`);
                const hiddenField = question.querySelector(`#hiddenSelectedRating${index + 1}`);

                stars.forEach((star, starIndex) => {
                    star.addEventListener('click', () => {
                        const rating = star.getAttribute('data-value');
                        selectedRating.textContent = rating;
                        highlightStars(stars, starIndex + 1);
                        hiddenField.value = rating;
                    });

                    // Add other event listeners (mouseover, mouseout) as needed
                });
            });

            function highlightStars(stars, rating) {
                stars.forEach((star, index) => {
                    if (index < rating) {
                        star.style.color = 'gold';
                    } else {
                        star.style.color = '';
                    }
                });
            }

            function validate() {
                clearErrorMessages();
                var isValid = true;

                var txt1 = document.getElementById('<%= hiddenSelectedRating1.ClientID %>');
                var txt2 = document.getElementById('<%= hiddenSelectedRating2.ClientID %>');
                var txt3 = document.getElementById('<%= hiddenSelectedRating3.ClientID %>');
                var txt4 = document.getElementById('<%= hiddenSelectedRating4.ClientID %>');
             

                if (txt1.value == "") {
                    displayErrorMessage("ما مدى فعالية برامج التدريب في تعزيز مهاراتك ومعرفتك؟");
                    isValid = false;
                }



                if (txt2.value == "") {
                    displayErrorMessage("ما مدى سهولة الوصول إلى فرص التعلم والتطوير داخل الشركة؟");
                    isValid = false;
                }



                if (txt3.value == "") {
                    displayErrorMessage("ما مدى توافق برامج التعلم والتطوير مع أهداف نموك المهني؟");
                    isValid = false;
                }


                if (txt4.value == "") {
                    displayErrorMessage("ما مدى رضاك عن تنوع وملاءمة الدورات التدريبية المتاحة؟");
                    isValid = false;
                }


               

                if (!isValid) {
                    return false;
                }

            }
        </script>

    </form>
</body>

</html>
