<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project5.Home" %>
<%@ import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/homepage.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Home</title>
    <script src="https://kit.fontawesome.com/629d25c12e.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap" rel="stylesheet">
    <link href="img/Mobail_Zone_Logo.png" rel="icon" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap');
    </style>
<%--    <script>
        $(document).ready(function () {

            $('.counter').each(function () {
                $(this).prop('Counter', 0).animate({
                    Counter: $(this).text()
                }, {
                    duration: 4000,
                    easing: 'swing',
                    step: function (now) {
                        $(this).text(Math.ceil(now));
                    }
                });
            });

        });
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
       

    <!-- navbarone end -->

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
                    <li class="nav-item" id="dash" runat="server" visible="false">
                        <a class="nav-link  p-lg-3" aria-current="page" href="admin.aspx">Dashboard</a>
                    </li>
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
                        <div class="d-flex align-items-center mt-ms-5" id="login" runat="server"><button class="buttonTop"><a href="Login.aspx">Log In</a></button></div>
                    </li>
                    <li class="nav-item">
                        <div class="d-flex align-items-center mt-ms-5" id="register" runat="server"><button class="buttonTop"><a href="Registration.aspx">Register</a></button></div>
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
        
    <!-- Carousel Start -->
      <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
    
        <div class="carousel-inner">
          <div class="carousel-item active c-item">
            <img src="img/mobail4.jpg" class="d-block w-100 c-img" alt="Slide 1">
            <div class="carousel-caption top-0 mt-4">
              <p class="mt-5 fs-3 text-uppercase">Up To 30% off</p>
              <h1 class="display-1 fw-bolder text-capitalize">Big Winter Sale</h1>
              <button class="btn btn-primary px-4 py-2 fs-5 mt-5"><a href="#br" style="text-decoration:none; color:white">Shop Now</a></button>
            </div>
          </div>
          <div class="carousel-item c-item">
            <img src="img/mobaile2.jpeg" class="d-block w-100 c-img" alt="Slide 2">
            <div class="carousel-caption top-0 mt-4">
              <p class="text-uppercase fs-3 mt-5">The season has arrived</p>
              <p class="display-1 fw-bolder text-capitalize">3 available tours</p>
              <button class="btn btn-primary px-4 py-2 fs-5 mt-5" data-bs-toggle="modal"
                data-bs-target="#booking-modal"><a href="#br" style="text-decoration:none; color:white">Shop Now</a></button>
            </div>
          </div>
          <div class="carousel-item c-item">
            <img src="img/mobail3.jpg" class="d-block w-100 c-img" alt="Slide 3">
            <div class="carousel-caption top-0 mt-4">
              <p class="text-uppercase fs-3 mt-5">Up To 30% off</p>
              <p class="display-1 fw-bolder text-capitalize">Samsung Or Iphone ?</p>
              <button class="btn btn-primary px-4 py-2 fs-5 mt-5" data-bs-toggle="modal"
                data-bs-target="#booking-modal"><a href="#br" style="text-decoration:none; color:white">Shop Now</a></button>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#hero-carousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#hero-carousel" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <!-- Carousel End -->
<%--        start--%>
        <%--<div class="container">

            <div class="row">

                <div class="four col-md-3">
                    <div class="counter-box colored">
                        <i class="fa fa-thumbs-o-up"></i>
                        <span class="counter">2147</span>
                        <p>Happy Customers</p>
                    </div>
                </div>
                <div class="four col-md-3">
                    <div class="counter-box">
                        <i class="fa fa-group"></i>
                        <span class="counter">3275</span>
                        <p>Registered Members</p>
                    </div>
                </div>
                <div class="four col-md-3">
                    <div class="counter-box">
                        <i class="fa  fa-shopping-cart"></i>
                        <span class="counter">289</span>
                        <p>Available Products</p>
                    </div>
                </div>
                <div class="four col-md-3">
                    <div class="counter-box">
                        <i class="fa  fa-user"></i>
                        <span class="counter">1563</span>
                        <p>Saved Trees</p>
                    </div>
                </div>
            </div>
        </div>--%>

        <%--end--%>
    <!-- Services Section -->
        <br />
        <br />
    <section id="services">
        <div class="container-fluid mt-lg-5 mt-sm-2">


            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary "></i>
                        <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading  pt-5  ">7 days of experience</h4>
                    <p class="text-muted"> Mobile Zone was launched 7 days ago, this long experience in the field of selling mobile phones enables us to sell mobile phones with high quality and great customer service</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading  pt-5 ">Flexible Pricing</h4>
                    <p class="text-muted">The customer is our most valuable asset, this is our motto, so you will find the best possible prices with us</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading pt-5 ">Web Security</h4>
                    <p class="text-muted">The customer is our most valuable asset, this is our motto, so you will find the best possible prices with us</p>
                </div>
            </div>
        </div>
        </div>
    </section>

    <!-- category start  -->
        <br id="br" />
        <br />
        <br />
                <div id="vvv" style="height:50px">
            Category
        </div>
        
    <div class="container-fluid mt-5" >

        <div class="row">


            <%
                SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security = SSPI");
                con.Open();
                SqlCommand com = new SqlCommand($"select * from category", con);
                SqlDataReader sdr = com.ExecuteReader();
                while (sdr.Read())
                {
                       if (sdr[1].ToString() == "Discount")
                                                {
                                                    continue;
                                                }
            %>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="box" id="samsung">
                    <a href="sth.aspx?catID=<%=sdr[0]%>">
                        <img src="<%=sdr[2]%>" class="img-fluid" /></a>

                </div>
            </div>

            <%


                }
                con.Close();%>
        </div>
    </div>

    <!-- category end  -->
    <!-- logo slaider start -->
    <div class="row  text-center pt-5 pb-5 display-6 "><p class="text-primary">We are Proud to work with these companies</p></div>
    <div class="brand-carousel section-padding owl-carousel">

        <div class="single-logo">
            <img src="img/brand-3 copy.png" alt="">
        </div>
        <div class="single-logo">
            <img src="img/plot bound.png" alt="">
        </div>
        <div class="single-logo">
            <img src="img/goul.png" alt="">
        </div>
        <div class="single-logo">
            <img src="img/surcay.png" alt="">
        </div>
        <div class="single-logo">
            <img src="img/resize for best view (2) copy.png" alt="">
        </div>
        <div class="single-logo">
            <img src="https://i.postimg.cc/B6qxYvgX/brand-3.png" alt="">
        </div>
    </div>

    <!-- logo slaider END -->

    <!-- ADS START -->
    <div class="container-fluid mt-5 ">
        <div class="row">
            <div class="col-12 mt-" class="ads">
                <a href="sth.aspx?catID=16"><img width="100%" src="img/ads.png" alt=""> </a>
            </div>
        </div>
    </div>

    <!-- ADS END -->

    <!-- Card proudact  start -->
    <div class="row  text-center pt-5 pb-2 display-6 "><p class="text-primary">BestSellers</p></div>
    <div class="container-fluid bg-trasparent my-4 p-3" style="position: relative">
        <div class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3">
            <div class="col hp">
                <div class="card h-100 shadow-sm">
                    <a href="#">
                        <img src="img/iphone 14 pro max.png" class="card-img-top" alt="product.title" />
                    </a>

                    <div class="label-top shadow-sm">
                        <a class="text-white" href="#">Apple</a>
                    </div>
                    <div class="card-body">
                        <div class="clearfix mb-3">
                            <span class="float-start badge rounded-pill bg-success">999JOD</span>

                            <span class="float-end"><a href="#" class="small text-muted text-uppercase aff-link">reviews</a></span>
                        </div>
                        <h5 class="card-title">
                            <a target="_blank" href="#">iphone 14 pro max  With Ceramic Shield, tougher than any smartphone glass. Water resistance.1 Surgical-grade stainless steel. 6.1′′ and 6.7′′ display sizes.2 All in four Pro colors.</a>
                        </h5>

                        <div class="d-grid gap-2 my-4">

                            <a href="sth.aspx?catID=2" class="btn btn-warning bold-btn">Find More</a>

                        </div>
                        <div class="clearfix mb-1">

                            <span class="float-start"><a href="#"><i class="fas fa-question-circle"></i></a></span>

                            <span class="float-end">
                                <i class="far fa-heart" style="cursor: pointer"></i>

                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col hp">
                <div class="card h-100 shadow-sm">
                    <a href="#">
                        <img src="img/Samsung fold 4.png" class="card-img-top" alt="product.title" />
                    </a>

                    <div class="label-top shadow-sm">
                        <a class="text-white" href="#">Samsung</a>
                    </div>
                    <div class="card-body">
                        <div class="clearfix mb-3">
                            <span class="float-start badge rounded-pill bg-success">1200JOD</span>

                            <span class="float-end"><a href="#" class="small text-muted text-uppercase aff-link">reviews</a></span>
                        </div>
                        <h5 class="card-title">
                            <a target="_blank" href="#">
                                Samsung Galaxy Z Fold 4 review: A smarter foldable
                                The Samsung Galaxy Z Fold 4 delivers a better multitasking experience and improved cameras in a (slightly) sleeker design
                            </a>
                        </h5>

                        <div class="d-grid gap-2 my-4">

                            <a href="sth.aspx?catID=1" class="btn btn-warning bold-btn">Find More</a>

                        </div>
                        <div class="clearfix mb-1">

                            <span class="float-start"><a href="#"><i class="fas fa-question-circle"></i></a></span>

                            <span class="float-end">
                                <i class="far fa-heart" style="cursor: pointer"></i>

                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col hp">
                <div class="card h-100 shadow-sm">
                    <a href="#">
                        <img src="img/OPPO Find N2.png" class="card-img-top" alt="product.title" />
                    </a>

                    <div class="label-top shadow-sm">
                        <a class="text-white" href="#">oppo</a>
                    </div>
                    <div class="card-body">
                        <div class="clearfix mb-3">
                            <span class="float-start badge rounded-pill bg-success">700JOD</span>

                            <span class="float-end"><a href="#" class="small text-muted text-uppercase aff-link">reviews</a></span>
                        </div>
                        <h5 class="card-title">
                            <a target="_blank" href="#">OPPO released its first foldable smartphone in 2021, and is now projected to add a second generation of the same device, as well as a first-gen clamshell alternative, in 2022. </a>
                        </h5>

                        <div class="d-grid gap-2 my-4">

                            <a href="sth.aspx?catID=3" class="btn btn-warning bold-btn">Find More</a>

                        </div>
                        <div class="clearfix mb-1">

                            <span class="float-start"><a href="#"><i class="fas fa-question-circle"></i></a></span>

                            <span class="float-end">
                                <i class="far fa-heart" style="cursor: pointer"></i>

                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col hp">
                <div class="card h-100 shadow-sm">
                    <a href="#">
                        <img src="img/OnePlus 10 Pro.png" class="card-img-top" alt="product.title" />
                    </a>
                    <!-- <div class="label-top shadow-sm">Asus Rog</div>  -->
                    <div class="label-top shadow-sm">
                        <a class="text-white" href="#">One Plus</a>
                    </div>
                    <div class="card-body">
                        <div class="clearfix mb-3">
                            <span class="float-start badge rounded-pill bg-success">650JOD</span>

                            <span class="float-end"><a href="#" class="small text-muted text-uppercase aff-link">reviews</a></span>
                        </div>
                        <h5 class="card-title">
                            <a target="_blank" href="#">
                                OnePlus 10 Pro | 5G Android Smartphone | 8GB+128GB | U.S. Unlocked | Triple Camera co-Developed with Hasselblad | Volcanic Black
                            </a>
                        </h5>

                        <div class="d-grid gap-2 my-4">

                            <a href="sth.aspx?catID=6" class="btn btn-warning bold-btn">Find More</a>

                        </div>
                        <div class="clearfix mb-1">

                            <span class="float-start"><a href="#"><i class="fas fa-question-circle"></i></a></span>

                            <span class="float-end">

                                <i class="far fa-heart" style="cursor: pointer"></i>

                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Card proudact  end -->
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
    <!-- Footer End -->
    <!-- script for javascript start -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="custom.js"></script>
    <!-- script for javascript End -->
    <SCript src="script11.js"></SCript>

    </form>
</body>
</html>
