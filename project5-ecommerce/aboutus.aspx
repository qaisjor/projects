<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Project5.aboutus" %>
<%@ import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>About Us</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link rel="stylesheet" href="aboutus.css" />
  <script src="https://kit.fontawesome.com/629d25c12e.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap%27);
    </style>


</head>
<body>
    <form id="form1" runat="server">
  <nav class="navbar navbar-expand-lg sticky-top ">
        <div class="container-fluid">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav d-flex align-items-center">
                    <li class="nav-itemp-lg-1">
                        <img  aria-current="page" style="width:15%;" src="img/Mobail Zone Logo.png" alt="">

                    </li>
                 <%--<li class="nav-item" id="dash" runat="server" visible="false">
                        <a class="nav-link  p-lg-3" aria-current="page" href="admin.aspx">Dashboard</a>
                    </li>--%>
                    <li class="nav-item">
                        <a class="nav-link  p-lg-3" aria-current="page" href="Home.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  p-lg-3" aria-current="page" href="aboutus.aspx">AboutUs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  p-lg-3 " href="contactUs.aspx">ContactUs</a>
                    </li>
                  
                    <li class="nav-item" id="profile" runat="server" >
                        <a class="nav-link  p-lg-3" href="CustomerProfile.aspx">Profile</a>
                    </li>
                   
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle  p-lg-3 " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Categories
                        </a>
                        <ul class="dropdown-menu">
                                        <%
             SqlConnection conn = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security = SSPI");
             conn.Open();
             SqlCommand comm = new SqlCommand($"select * from category", conn);
             SqlDataReader sdrr = comm.ExecuteReader();
             while (sdrr.Read())
             {
            %>
    
                            <li><a class="dropdown-item" href="sth.aspx?catID=<%=sdrr[0]%>" ><%=sdrr[1]%></a></li>
        
            <%


                }%>
                    

                        </ul>
                    </li>

                    <li class="nav-item">
                        <div class="d-flex align-items-center mt-ms-5" id="logout" runat="server"><asp:Button ID="logoutBtn"  runat="server" Text="Log Out" CssClass="buttonTop" OnClick="logoutBtn_Click"/></div>
                    </li>
                    <li class="nav-item">
                        <div class="d-flex align-items-center mt-ms-5" id="login" runat="server"><button class="buttonTop"><a href="Login.aspx" style="text-decoration:none;">Log In</a></button></div>
                    </li>
                    <li class="nav-item">
                        <div class="d-flex align-items-center mt-ms-5" id="register" runat="server"><button class="buttonTop"><a href="Registration.aspx" style="text-decoration:none;">Register</a></button></div>
                    </li>
                  <%--  <li class="nav-item">
                        <div class="d-flex align-items-center"><button class="buttonTop">Sign Up</button></div>
                    </li>--%>

                    <li class="nav-item" id="cart" runat="server">
                        <a href="cart.aspx" >
                            <i class="fa-solid fa-cart-shopping" id="cart"></i>
                        </a>
                    </li>

                </ul>

            </div>
        </div>
    </nav>
         <section class="breadcrumbs-section">
    <div class="container p-1 p-sm-3">
      <div class="row">
        <div class="col-12">
          <h2>About Us</h2>
         
        </div>
      </div>
    </div>

  </section>

  <section class="about-company-section">
    <div class="container p-1 p-sm-3">
      <div class="row">
        <div class="col-12 text-center">
          <h2>Who We Are?</h2>
          <hr />
        </div>

        <div class="col-md-3">
          <img class="img-fluid" src="\images\Mobail Zone Logo.png" alt="">

        </div>

        <div class="col-md-9">
          <p>
            Mobile Zone is the leading distributor and retailer of mobile devices
             in the Middle East, representing some of leading brands in the world
              since its inception in 2006.<br>
              <br>
 
              Mobile Zonewas established with a singular objective: to offer cutting edge 
              mobile technologies to all consumer segments, making sure that we fulfill the
               often-ignored promise of an unparalleled customer experience. Today, we serve
                a growing customer base through more than 3,200 points of sale, 13 showrooms and 
                15 service centers across Palestine, Jordan and Iraq. We also launched an online
                 store that was conceived to elevate the online shopping experience in the region
                  by offering choice, ease-of-use, and security.a, consectetur odit quidem!
          </p>

        </div>
      </div>
    </div>
  </section>

  <!-- START : Home page 5rd section - Newsletter section -->
 
  <!-- END : Home page 5th section - Newsletter section -->


  <!-- START :  Home page 6th section - Our services -->
  <section class="pt-3 pb-4">
      <div class="container">
          <div class="row mt-4">
            <div class="col text-center">
              <h3>
                Our awesome team
              </h3>
            </div>
          </div>
          <hr>
          <div class="row">
            <div class="col-md-4 text-center">
              <img class="img-fluid qualities-img p-4" src="\images\sohaib.png" >
              <h5>
                member
              </h5>
              <p>
                <i>- Sohaib AL-Rousan</i>
              </p>
    
            </div>
            <div class="col-md-4 text-center">
              <img class="img-fluid qualities-img p-4" src="\images\haitham.png">
              <h5>
                Manager
              </h5>
              <p>
                <i>- Sheikh Haitham Hazaimeh</i>
              </p>
    
            </div>
            <div class="col-md-4 text-center">
                
                <img class="img-fluid qualities-img p-4" src="\images\swalha.png">
                <h5>
                 Scrum master
                </h5>
                <p>
                  <i>- Mohammad Swalha</i>
                </p>
            </div>
          </div>
    
          <div class="row mb-md-3">
            <div class="col-md-4 text-center">
                <img class="img-fluid qualities-img p-4" src="\images\malik.png"/>
                <h5>
                  member
                </h5>
                <p>
                  <i>- Malik Obidat</i>
                </p>
            </div>
            <div class="col-md-4 text-center">
                <img class="img-fluid qualities-img p-4" src="\images\yazeed.png" ;">
                <h5>
member

                </h5>
                <p>
                  <i>- Yazeed ALdamen</i>
                </p>
            </div>
            <div class="col-md-4 text-center">
                <img class="img-fluid qualities-img p-4" src="\images\intern.png"/>
                <h5>
                  member                </h5>
                <p>
                  <i>- Qais Drabseh</i>
                </p>
            </div>
          </div>
  </section>
  <!-- END : Home page 6th section - Our services -->

<!-- START :  Home page 7th section - clients -->
<section class="pt-3 pb-4 clients-section">
    <div class="container">
        <div class="row">
          <div class="col text-center">
            <h3>
                Some of our trusted clients.
            </h3>
          </div>
         
        </div>
        <hr>
        <div class="row">
            <div class="col-md-2 col-6">
              <img class="img-fluid feature-img p-2" src="\images\surlatable.jfif" alt="Card images cap">
            </div>
            <div class="col-md-2 col-6">
              <img class="img-fluid feature-img p-2" src="\images\goul.png" alt="Card images cap">
            </div>
            <div class="col-md-2 col-6">
              <img class="img-fluid feature-img p-2" src="\images\plot bound.png" alt="Card images cap">
            </div>
            <div class="col-md-2 col-6">
              <a class="navtext" class="navbar-brand " href="#" style="font-family: 'Ink Free'; font-size: 28px;margin-top: 250px;">Shine</a>
              <!-- <img class="img-fluid feature-img p-2" src="imgs/clients/lnt.png" alt="Card images cap"> -->
            </div>
             <div class="col-md-2 col-6">
              <img class="img-fluid feature-img p-2" src="\images\medical.png" alt="Card images cap">
            </div>
          
          </div>
        </div>
  
       
  </section>
        <!-- Footer Start -->
    <!-- Footer -->
    <footer class="bg-dark text-center text-white">
        <!-- Grid container -->
        <div class="container p-4">
            <!-- Section: Social media -->
            <section class="mb-4">
                <!-- Facebook -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button">
                    <i class="fab fa-facebook-f"></i>
                </a>

                <!-- Twitter -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button">
                    <i class="fab fa-twitter"></i>
                </a>

                <!-- Google -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button">
                    <i class="fab fa-google"></i>
                </a>

                <!-- Instagram -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button">
                    <i class="fab fa-instagram"></i>
                </a>

                <!-- Linkedin -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button">
                    <i class="fab fa-linkedin-in"></i>
                </a>

                <!-- Github -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button">
                    <i class="fab fa-github"></i>
                </a>
            </section>
            <!-- Section: Social media -->
            <!-- Section: Form -->
            <section class="">
                    <!--Grid row-->
                    <div class="row d-flex justify-content-center">
                        <!--Grid column-->
                        <div class="col-auto">

                        </div>
                        <!--Grid column-->
                        <!--Grid column-->
                        <div class="col-md-5 col-12">

                            <!--Grid column-->
                        </div>
                        <!--Grid row-->
            </section>
            <!-- Section: Form -->
            <!-- Section: Text -->
            <section class="mb-4">
                <p>
                    Mobile Zone is the leading distributor and retailer of mobile devices in the Middle East, representing some of leading brands in the world since its inception in 2006.

                </p>
            </section>
            <!-- Section: Text -->
            <!-- Section: Links -->
            <section class="">
                <!--Grid row-->
                <div class="row">
                    <!--Grid column-->
                    <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Important Links</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">Home</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Contact Us</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">About Us</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Blog</a>
                            </li>
                        </ul>
                    </div>
                    <!--Grid column-->
                    <!--Grid column-->
                    <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Product</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">Samsung</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Apple</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Xiaomi</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">OppO</a>
                            </li>
                        </ul>
                    </div>
                    <!--Grid column-->
                    <!--Grid column-->
                    <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Terms</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">Privacy Policy</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Terms & Conditions</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Refund and Return Policy</a>
                            </li>
                           
                        </ul>
                    </div>
                    <!--Grid column-->
                   
                </div>
                <!--Grid row-->
            </section>
            <!-- Section: Links -->
        </div>
        <!-- Grid container -->
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2022 Copyright:
            <a class="text-white" href="">Mobile Zone</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->
  <!-- END : Home page 7th section - clients -->




  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>
  <script src="bootstrap/js/popper.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
