<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="Project5.contactUs" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="contact.css" rel="stylesheet" />
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/homepage.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Contact Us</title>
    <script src="https://kit.fontawesome.com/629d25c12e.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap" rel="stylesheet">
    <link href="img/Mobail_Zone_Logo.png" rel="icon" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap');
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




        <div class="container">

            <div class="one">
          

           <div class="brief">
               <h3>Contact Us</h3>
            <p>Need an expert? <br /> you are more than welcome to leave your<br /> contact info  and we will be in touch shortly</p>
                <img src="\images\Direction towards the mobile zone, 1 km away.jpg" style="width:100%; height:350px" />
               
           </div>

          

            </div>
            

         <div class="info" >
             
               <asp:Label ID="Label1" Class="labels" runat="server" Text="First Name"  ></asp:Label> <br />
                <asp:TextBox ID="TextBox3" class="inputtext" runat="server" required></asp:TextBox><br /> <br /><br />
              

                <asp:Label ID="Label2" Class="labels" runat="server" Text="Last Name"></asp:Label> <br />
               <asp:TextBox ID="TextBox2" class="inputtext" runat="server" required></asp:TextBox><br /> <br /><br />

                <asp:Label ID="Label3" Class="labels" runat="server" Text="Email Adress"></asp:Label> <br />
               <asp:TextBox ID="TextBox1" class="inputtext" runat="server" required></asp:TextBox><br /> <br /><br />

                 <asp:Label ID="Label4" Class="labels" runat="server" Text="Messeges / Questions"></asp:Label> <br />
               <textarea id="TextArea1" runat="server" class="textaria" cols="30" rows="2" required></textarea> <br /> <br /> <br /> 


               <asp:Button ID="Button1" runat="server" Class="send" Text="Send" OnClick="Button1_Click" />
             <br />
             <asp:Label ID="Label5" runat="server" Text=""></asp:Label>

           </div>
            </div>


           
         <div class="awesome">

             <div class="awe">
                   <i class="fa-solid fa-phone" style=" color: #EF5513; font-size:50px;"></i>
                 <h4>CALL US</h4>
                 <p>Do not hesitate to call us</p>
                 <p class="orangepara">+962 797620295</p>
             </div>
              

             <div class="awe">
                   <i class="fa-solid fa-house" style=" color: #EF5513;font-size:50px;"></i>
                 <h4>VISIT US</h4>
                 <p>it is honor to visit us <br /> in our gallery </p>
                 <p class="orangepara">Taj LifeStyle Center, عمّان 11183</p>
             </div>


              <div class="awe">
                   <i class="fa-solid fa-message" style=" color: #EF5513;font-size:50px;"></i>
                  <h4>MESSAGE US</h4>
                  <p>you can message us any time </p>
                  <p class="orangepara">mobilezone@gmail.com</p>
              </div>



               

            </div>
    </form>
</body>
</html>
