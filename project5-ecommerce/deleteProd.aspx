<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteProd.aspx.cs" Inherits="Project5.deleteProd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
         <script src="https://kit.fontawesome.com/cf9682991b.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link rel="stylesheet" href="admin.css">
     <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <style>
        img {
          width:100px; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
<%--                    <i class="fas fa-laugh-wink"></i>--%>
                    <img src="\images\Mobail Zone Logo.png" style="width:60px;" />
                </div>
                <div class="sidebar-brand-text mx-3">Mobile Zone </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="admin.aspx">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>User</span></a>
            </li>



            <!-- Divider -->
            <hr class="sidebar-divider">

           
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Pages</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="login.html">Login</a>
                        <a class="collapse-item" href="register.html">Register</a>
                        <div class="collapse-divider"></div>
                      
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
           

            <!-- Nav Item - Tables -->
         
             <li class="nav-item">
                <a class="nav-link" href="category.aspx">
                    <i class="fas fa-fw fa-table"></i>
                    <span>  Category</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="adminProdut.aspx">
                    <i class="fas fa-fw fa-table"></i>
                    <span>  Products</span></a>
            </li>
               <li class="nav-item">
                <a class="nav-link" href="messeges.aspx">
                    <i class="fas fa-fw fa-table"></i>
                    <span>  Messeges</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Home.aspx">
                    <i class="fas fa-fw fa-table"></i>
                    <span>  Home</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
    
         

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            

                    <!-- Topbar Navbar -->

        <h2>Products</h2>
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <li>
                            <button class="buttonTop"><a href="Login.aspx" class="nav-link">Log Out</a></button>
                        </li>
                    </ul>

                    </>

                </nav>
                <!-- End of Topbar -->

 

                <div id="add" runat="server">
                    <h1>Add Product</h1>
                     <table>
                         <tr>
                             <td><label>Product Name  : </label></td>
                             <td><asp:TextBox ID="productName" runat="server"></asp:TextBox></td>
                         </tr>
                         <tr>
                             <td><label>Product  Descreption : </label></td>
                             <td><asp:TextBox ID="productDesc" runat="server"></asp:TextBox></td>
                         </tr>
                           <tr>
                             <td><label>Product  Price : </label></td>
                             <td><asp:TextBox ID="productPrice" runat="server"></asp:TextBox></td>
                         </tr>
                            <tr>
                             <td><label>Product  Category : </label></td>
                                <td><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
                         </tr>
                         <tr>
                             <td> <label>Product First Image  : </label> </td>
                             <td><asp:FileUpload ID="FileUploadImage1" runat="server" /> <span id="Span1" runat="server">please fill this field</span></td> 
                             <img src="#" alt="Alternate Text" id="image1" runat="server"/>
                         </tr>
                         <tr>
                             <td> <label>Product Second Image  : </label> </td>
                             <td><asp:FileUpload ID="FileUploadImage2" runat="server" /><span id="Span2" runat="server">please fill this field</span></td>
                                                          <img src="#" alt="Alternate Text" id="image2" runat="server" />

                         </tr>
                         <tr>
                             <td> <label>Product Third Image  : </label> </td>
                             <td><asp:FileUpload ID="FileUploadImage3" runat="server" /><span id="Span3" runat="server">please fill this field</span></td>
                                                          <img src="#" alt="Alternate Text" id="image3" runat="server" />

                         </tr>
                       
                                   
                    </table>

                    <asp:Button ID="addProduct" runat="server" Text="Edit" OnClick="editProduct_Click" />

                    <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click" />

                </div>



                <!-- Begin Page Content -->
                            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

    </form>
</body>
</html>
