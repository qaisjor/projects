<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singleProduct.aspx.cs" Inherits="Project5.singleProduct" %>
<%@ import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<html lang="en">
<head>

   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/homepage.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Products</title>
    <script src="https://kit.fontawesome.com/629d25c12e.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap');
    </style>
    <link href="img/Mobail_Zone_Logo.png" rel="icon" />

    <link rel="stylesheet" href="single.css">
    <!---Boxicons CDN Setup for icons-->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <style>
        .cont {
          width:80%;
          margin:0 auto;
          padding: 87px 0px;
        }
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
                   <%-- <li class="nav-item" id="dash" runat="server" visible="false">
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
        
            <%}%>
                    

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

                    <li class="nav-item"  id="cart" runat="server">
                        <a href="cart.aspx" >
                            <i class="fa-solid fa-cart-shopping" id="cart"></i>
                        </a>
                    </li>

                </ul>

            </div>
        </div>
    </nav>
       <%
           string id = Request.QueryString["pid"];
           SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security = SSPI");
           con.Open();
           SqlCommand com = new SqlCommand($"select * from Product where product_id={id}", con);
           SqlDataReader sdr = com.ExecuteReader();
         
           sdr.Read();
             if (sdr[7].ToString() == "16")
           {
               discount.Visible = true;
           }
        %>

       
    <div class="container">
        <div class="single-product">
            <div class="row">
                <div class="col-5">
                    <div class="product-image">
                        <div class="product-image-main" style="background-color:white;">
                            <img src="<%=sdr[3]%>" alt="" id="product-main-image"/>
                        </div>
                        <div class="product-image-slider">
                            <img src="<%=sdr[3]%>" alt=""  class="image-list">
                            <img src="<%=sdr[4]%>" alt=""  class="image-list">
                            <img src="<%=sdr[5]%>" alt=""  class="image-list">
                            
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="breadcrumb">
                        <span><a href="Home.aspx">Home</a></span>
                        <span><a href="sth.aspx?catID=<%= sdr[7] %>">Product</a></span>
                        <span class="active">Phone</span>
                    </div>
        

                    <div class="product">
                        <div class="product-title">
                            <h2 id="productTitle" runat="server"></h2>
                        </div>
                        <div class="product-rating">
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span class="review">(47 Review)</span>
                        </div>
                        <div class="product-price">
                            <span class="offer-price" id="price" runat="server">$</span>&nbsp;&nbsp;<span id="discount" runat="server" visible="false" style="font-weight:bold;">50% OFF</span>
                        </div>

                        <div class="product-details">
                            <h3>Description</h3>
                            <p id="description" runat="server">
                               
                               
                                &nbsp;</p>
                        </div>

                        <br />
                        <br />
                        <span class="divider">
                            <span>Quantity &nbsp;&nbsp;&nbsp;<input id="ProductQtn" runat="server" min="1" max="99" name="quantity" value="1" type="number"
                                class="form-control form-control-sm" style="width:50px"/></span>
<%--                            <input type="number" name="name" value="1" min="1" max="99" id="ProductQtn" runat="server" style="width: 40px;" />--%>
                            
                        </span>
                    

              <%--        <input id="form1" min="0" name="quantity" value="1" type="number"
                        class="form-control form-control-sm" />--%>

<%--                      <button class="btn btn-link px-2"
                        onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                        <i class="fas fa-plus"></i>
                      </button>--%>
                    </div>
                            <br />
                    <br />
                        <div class="product-btn-group">
                            
                            <asp:Button CssClass="button add-cart" ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" />
                            <button class="button add-cart"><a href="Home.aspx" style="text-decoration:none; color:black;">Continue Shopping</a></button>
<%--                            <asp:Label ID="Label1" runat="server" Text="Your Items Have been added to your cart"></asp:Label>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
       <div class="cont">
             <div class="addComment" id="addCommentt" runat="server">
               <asp:TextBox ID="comment" runat="server"></asp:TextBox>
               <asp:Button ID="addComment" runat="server" Text="Add Comment" OnClick="addComment_Click" />
            </div>

              <asp:Label  cssclass="conmments" ID="commentContainer" runat="server" ></asp:Label>
        </div>
    <!--script-->
    <script src="script.js"></script>
       </form>
</body>
</html>
