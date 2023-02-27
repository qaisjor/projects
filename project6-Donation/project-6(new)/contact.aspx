<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="project_6_new_.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>--%>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

    <style>

 .con {
    margin-right: 50px;
    margin-left: -40px;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}
        .ic{
            background-color:darkred;;
            padding:25px;
            border-radius:50%;
            color:white;
            font-size:25px;
            margin-bottom:20px;
        }
        .tel{
            text-decoration:none;
            color:gray;
        }
        .p{
            font-size:20px;
            font-weight:bold;
        }
        .box1{
            background-color:#F0EAE7;
            padding:15px;
            border-radius:25px;
            margin-right:20px;
        }
        .label{
            font-weight:bold;
        }
        #name{
            background: transparent;
            border-bottom:1px solid darkred ;
            background-color:white;
        }
        #email{
            background: transparent;
            border-bottom:1px solid darkred ;
            background-color:white;
        }
        #subject{
            background: transparent;
            border-bottom:1px solid darkred ;
            background-color:white;
        }
        #message{
            background: transparent;
            border-bottom:1px solid darkred ;
            background-color:white;
        }
        #message1{
            color:white !important;
            background-color:darkred !important;
        }
        .row no-gutters{
            display:flex;
            justify-content:space-between;
            
        }
        .btn btn-primary{
            color:white !important;
            background-color:darkred !important;
        }
      .btn btn-danger{
                color:white !important;
            background-color:darkred !important;
      }
   .font{
       color:darkred;
   }
   @media(min-device-width:0px) and (max-device-width:1100px) {
            .mm{
                width:50%;
                display:flex;
                justify-content:center;
            }
            #gmap_canvas{
                width:50%;
                text-align:center;
                margin-right:70px;
            }
            .mapouter{
                width:50%;
                
            }
            -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    --blue: #007bff;
    --indigo: #6610f2;
    --purple: #6f42c1;
    --pink: #e83e8c;
    --red: #dc3545;
    --orange: #fd7e14;
    --yellow: #ffc107;
    --green: #28a745;
    --teal: #20c997;
    --cyan: #17a2b8;
    --white: #fff;
    --gray: #6c757d;
    --gray-dark: #343a40;
    --primary: #007bff;
    --secondary: #6c757d;
    --success: #28a745;
    --info: #17a2b8;
    --warning: #ffc107;
    --danger: #dc3545;
    --light: #f8f9fa;
    --dark: #343a40;
    --breakpoint-xs: 0;
    --breakpoint-sm: 576px;
    --breakpoint-md: 768px;
    --breakpoint-lg: 992px;
    --breakpoint-xl: 1200px;
    --font-family-sans-serif: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    --font-family-monospace: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
    box-sizing: border-box;
    margin: 0;
    text-align: left;
    font-family: "Poppins", Arial, sans-serif;
    font-size: 16px;
    line-height: 1.8;
    font-weight: normal;
    background: #fafafa;
    color: #666666;
    </style>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script defer="" referrerpolicy="origin" src="/cdn-cgi/zaraz/s.js?z=JTdCJTIyZXhlY3V0ZWQlMjIlM0ElNUIlNUQlMkMlMjJ0JTIyJTNBJTIyQ29udGFjdCUyMEZvcm0lMjAwMyUyMiUyQyUyMnglMjIlM0EwLjEyNjU2Mzg0ODUyNTEzMzI1JTJDJTIydyUyMiUzQTE1MzYlMkMlMjJoJTIyJTNBODY0JTJDJTIyaiUyMiUzQTY5NiUyQyUyMmUlMjIlM0ExNTM2JTJDJTIybCUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGcHJldmlldy5jb2xvcmxpYi5jb20lMkZ0aGVtZSUyRmJvb3RzdHJhcCUyRmNvbnRhY3QtZm9ybS0wMyUyRiUyMiUyQyUyMnIlMjIlM0ElMjJodHRwcyUzQSUyRiUyRmNvbG9ybGliLmNvbSUyRiUyMiUyQyUyMmslMjIlM0EyNCUyQyUyMm4lMjIlM0ElMjJVVEYtOCUyMiUyQyUyMm8lMjIlM0EwJTJDJTIycSUyMiUzQSU1QiU1RCU3RA=="></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="ftco-section">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6 text-center mb-5">
<h2 class="heading-section">Contact Us</h2>
</div>
</div>
<div class="row justify-content-center">
<div class="col-md-12">
<div class="wrapper">
<div class="row mb-5">
<div class="col-md-3">
<div class="dbox w-100 text-center">
<div class="icon d-flex align-items-center justify-content-center">
<span class="fa fa-map-marker ic" ></span>
</div>
<div class="text">
<p class="p"><span>Address:</span> </p><p class="tel">Jordan , irbid alhoson street </p>
</div>
</div>
</div>
<div class="col-md-3">
<div class="dbox w-100 text-center">
<div class="icon d-flex align-items-center justify-content-center">
<span class="fa fa-phone ic"></span>
</div>
<div class="text">
<p class="p"><span>Phone:</span> </p><span ><a class="tel" href="tel://1234567920">079999999</a></span>
</div>
</div>
</div>
<div class="col-md-3">
<div class="dbox w-100 text-center">
<div class="icon d-flex align-items-center justify-content-center">
<span class="fa fa-paper-plane ic"></span>
</div>
<div class="text">
<p class="p"><span>Email:</span></p><span > <a class="tel" href="mailto:info@yoursite.com">eldery@yahoo.com</a></span>
</div>
</div>
</div>
<div class="col-md-3">
<div class="dbox w-100 text-center">
<div class="icon d-flex align-items-center justify-content-center">
<span class="fa fa-globe ic"></span>
</div>
<div class="text">
<p class="p"><span>Website :</span> </p><a class="tel" href="#">eldery@gmail.com</a>
</div>
</div>
</div>
</div>
    <div class="con">
<div class="row no-gutters asp">
<div class="col-md-7">
    <div class="box1">
<div class="contact-wrap w-100 p-md-5 p-4">
<h3 class="mb-4">Contact Us</h3>
<div id="form-message-warning" class="mb-4"></div>
<div id="form-message-success" class="mb-4">
    <asp:Label ID="Label1" runat="server" CssClass="font" Text="Your message was sent, thank you!"></asp:Label>

</div>
<%--<form method="POST" id="contactForm" name="contactForm" class="contactForm" novalidate="novalidate">--%>
<div class="row">
<div class="col-md-6">
<div class="form-group">
<label class="label" for="name">Full Name</label>
<input type="text" runat="server" class="form-control " required name="name" id="name" placeholder="Name">
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label class="label" for="email">Email Address</label>
<input type="email" runat="server" class="form-control" required name="email" id="email" placeholder="Email">
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<label class="label" for="subject">Subject</label>
<input type="text" runat="server" class="form-control" required name="subject" id="subject" placeholder="Subject">
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<label class="label" for="#">Message</label>
<textarea name="message" runat="server" class="form-control" required id="message" cols="30" rows="4" placeholder="Message"></textarea>
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<%--<input type="submit" value="Send Message" class="btn btn-primary" id="message1">--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:Button  runat="server" Text="Send Message"  class="btn btn-danger" id="message1"  OnClick="message1_Click"  />
            </ContentTemplate>
        </asp:UpdatePanel>
<div class="submitting"></div>
</div>
</div>
</div>
<%--</form>--%>
</div>
        </div>
<%--    commentbox--%>
</div>
<div class="col-md-5 d-flex align-items-stretch">
<%--<div class="info-wrap w-100 p-5 img" style="background-image: url(img/contact.jpg); width:100%;">
</div>--%>
  <img src="img/contact.jpg" width="120%"; height="100%" style="border-radius:40px;"/> 
</div>
</div>
</div>

</div>
</div>
</div>
</div>
</section>
    <div class="mm" style="display:flex;justify-content:center;margin-top:100px">
        <div class="mapouter"><div class="gmap_canvas"><iframe style="border-radius:10px" width="1080" height="546" id="gmap_canvas" src="https://maps.google.com/maps?q=amman&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies-to.org"></a><br><style>.mapouter{position:relative;text-align:right;height:546px;width:1080px;}</style><a href="https://www.embedgooglemap.net">embed google map into website</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:546px;width:1080px;}</style></div></div>

    </div>
<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/main.js"></script>
<script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Your message has been sent succesfully !',
                html: '<a href="https://localhost:44379/HomePage">Return To Home Page</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

            }).then(function () {
                window.location = "https://localhost:44379/contact";
            });


        }
    </script>
</asp:Content>
