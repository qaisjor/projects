<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project5.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Reg.css"/>
    
    <style type="text/css">
        .auto-style1 {
            left: -1px;
            top: 1px;
        }
        body{
            box-sizing:border-box;
            margin:0;
            padding:0;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
            <div class="imagebox">
                <asp:Image ID="Image1" runat="server" src="\images\log in (1).jpg"/>
            </div>
            <div class="information">
               <div class="registratiom">
                   <a href="Home.aspx"><asp:Image ID="Image2" runat="server" src="\images\Mobail Zone Logo.png"/></a>

               <div class="inputbox">
                    <input id="FirstName" class="firstname" name="firstname" value="" placeholder="First Name" runat="server" required="required"/>
                </div>

                <div class="inputbox" >
                  <input id="LastName" class="lastname" name="lastname" value="" placeholder="Last Name" runat= "server" required="required" />
                </div>

                 <div class="inputbox">
                    <input  id="PhoneNumber" class="phonenumber" name="phonenumber" value="" placeholder="Phone Number" runat="server" required="required"/>
                </div>

                 <div class="inputbox">
                    <input  id="Email" class="email" name="email" value="" placeholder="E-mail" runat="server" type="text"/>
                </div>

                 <div class="password">
                    <input id="Password1" class="password1" type="password" name="password" value="" placeholder="Password" runat="server" required="required"/>

                </div>

                 <div class="already">
                      <p >Alredy a Member ?<a href="Login.aspx"> log in </a></p>
                     </div>
                <div class="button">
                <asp:Button runat="server" ID="Register" Text="Register" CssClass="auto-style1" OnClick="Register_Click"    />
                    <br/>
                    <br/>

                 <asp:Label ID="Label1" runat="server" Text=""  ></asp:Label>
            </div>
                  
    </form>
</body>
</html>
