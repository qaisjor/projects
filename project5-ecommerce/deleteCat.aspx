<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteCat.aspx.cs" Inherits="Project5.deleteCat" %>

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
                    <span>Users</span></a>
            </li>



            <!-- Divider -->
            <hr class="sidebar-divider">

           
            
            <!-- Nav Item - Charts -->
           

            <!-- Nav Item - Tables -->
         
             <li class="nav-item">
                <a class="nav-link" href="category.aspx">
                    <i class="fas fa-fw fa-table"></i>
                    <span>  Categories</span></a>
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
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

         

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
         
                    <h2>Categories</h2>
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <li>
                            <button class="buttonTop"><a href="Login.aspx" class="nav-link">Log Out</a></button>
                        </li>
                    </ul>

                </nav>
                <!-- End of Topbar -->

                <div id="add" runat="server">
                    <h1>Edit Category</h1>
                    <table>
                        <tr>
                            <td>
                                <label>Edit Category Name  : </label>
                            </td>
                            <td>
                                <asp:TextBox ID="catName" runat="server"></asp:TextBox></td>

                        </tr>
                        <tr>
                            <td>
                                <label>Edit Category  Descreption : </label>
                            </td>
                            <td>
                                <asp:TextBox ID="catDesc" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Edit Category  Image : </label>
                            </td>

                            <td>

                                <asp:FileUpload ID="FileUploadImage" runat="server" />
                                <img src="" runat="server" id="image">
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <label>Edit Category  Logo : </label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUploadLogo" runat="server" />
                                <img src="" runat="server" id="logo">
                            </td>
                        </tr>

                    </table>

                    <asp:Button ID="editCat" runat="server" Text="Edit" OnClick="editCat_Click" />
                    
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