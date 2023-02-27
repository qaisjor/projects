<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerProfile.aspx.cs" Inherits="Project5.CustomerProfile" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>




    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/homepage.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/629d25c12e.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap" rel="stylesheet">
    <link href="img/Mobail_Zone_Logo.png" rel="icon" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap');
        @media only screen and (min-device-width:0px) and (max-device-width:480px){
            .user_orders{
                display:none;
            }
        }
    </style>
    <link rel="stylesheet" href="style.css">
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
                            <img aria-current="page" style="width: 15%;" src="img/Mobail Zone Logo.png" alt="">
                        </li>
                     <%--   <li class="nav-item" id="dash" runat="server" visible="false">
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

                        <li class="nav-item" id="profile" runat="server">
                            <a class="nav-link  p-lg-3" href="CustomerProfile.aspx">Profile</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle  p-lg-3 " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Categories
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

                                <li><a class="dropdown-item" href="sth.aspx?catID=<%=sdrr[0]%>"><%=sdrr[1]%></a></li>

                                <%}%>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <div class="d-flex align-items-center mt-ms-5" id="logout" runat="server">
                                <asp:Button ID="logoutBtn" runat="server" Text="Log Out" CssClass="buttonTop" OnClick="logoutBtn_Click" /></div>
                        </li>
                        <li class="nav-item">
                            <div class="d-flex align-items-center mt-ms-5" id="login" runat="server">
                                <button class="buttonTop"><a href="Login.aspx">Log In</a></button></div>
                        </li>
                        <li class="nav-item">
                            <div class="d-flex align-items-center mt-ms-5" id="register" runat="server">
                                <button class="buttonTop"><a href="Registration.aspx">Register</a></button></div>
                        </li>
                        <%--  <li class="nav-item">
                        <div class="d-flex align-items-center"><button class="buttonTop">Sign Up</button></div>
                    </li>--%>

                        <li class="nav-item"  id="cart" runat="server">
                            <a href="cart.aspx">
                                <i class="fa-solid fa-cart-shopping" id="cart"></i>
                            </a>
                        </li>

                    </ul>

                </div>
            </div>
        </nav>
        <div class="container" style="margin-top: 70px">
           
    <div class="main-body">



        <div class="row gutters-sm" id="vv" runat="server">
            <%
                int id = Convert.ToInt32(Session["userID"].ToString());
                //int id=int.Parse(Request.QueryString["pid"]);
                SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security = SSPI");
                con.Open();
                SqlCommand getUserCom = new SqlCommand($"select * from Users where id={id}", con);
                SqlDataReader sdr = getUserCom.ExecuteReader();
                sdr.Read();



            %>
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="\images\avatar.jpg" alt="Admin" class="rounded-circle" width="150" />
                            <div class="mt-3">
                                <h4><%=sdr[1].ToString().ToUpper() %> <%=sdr[2].ToString().ToUpper() %></h4>
                                <p class="text-secondary mb-1"><%=sdr[3].ToString() %></p>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-8">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">First Name</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=sdr[1].ToString().ToUpper() %>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Last Name</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=sdr[2].ToString().ToUpper() %>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Email</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=sdr[3].ToString() %>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Phone Number</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                0<%=sdr[5].ToString() %>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-12">

                                <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="Edit" OnClick="Button1_Click1" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="user_orders">
                <h2>Your Previous Orders </h2>
              <asp:Label ID="ordersTable" runat="server" Text="Label" CssClass="col-12"></asp:Label>
                
           </div>
        </div>

    </div>
        </div>


        <div class="mask d-flex align-items-center h-100 gradient-custom-3" id="editForm" runat="server" visible="false">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                        <div class="card" style="border-radius: 15px;">
                            <div class="card-body p-5">
                                <h2 class="text-uppercase text-center mb-5">Edit Your Information</h2>



                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form3Example3cg">First Name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form3Example3cg">Last Name</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-outline mb-4">

                                    <label class="form-label" for="form3Example4cg">Email</label>
                                    <p id="TextBox3" runat="server"></p>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form3Example4cdg">Password</label>
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>

                                    <%--                    <input type="password" name="name" value="" id="TextBox4" runat="server"/>--%>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form3Example4cdg">Phone Number</label>
                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="d-flex justify-content-center">
                                    <asp:Button ID="Button2" runat="server" Text="Save Changes" class="btn btn-info btn-block btn-lg gradient-custom-4 text-body" OnClick="Button2_Click" />
                                    &nbsp;&nbsp;

                    <asp:Button ID="Button3" runat="server" Text="Cancel" class="btn btn-info btn-block btn-lg gradient-custom-4 text-body" OnClick="Button3_Click" />
                                </div>





                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            document.getElementById("TextBox4").type = "password";

        </script>
    </form>
    <script src="script11.js"></script>

</body>
</html>
