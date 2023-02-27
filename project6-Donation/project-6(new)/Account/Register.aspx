<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project_6_new_.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<%--    <h1 style="text-align:center; margin-top:-15px;">  Register </h1>--%>
   <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="both">
    <div class="box">
    <div class="form-horizontal">
        
        <h2 style="text-align:center;font-weight:bold;margin-top:-10px;">Create a new account</h2>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">

            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-4 control-label">Email</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" placeholder=" Enter Your Email" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-4 control-label">Full Name</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Name" CssClass="form-control" placeholder=" Enter Your Full Name" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The  field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-4 control-label">City</asp:Label>
            <div class="col-md-8" style="width: 60.5%;">
                <asp:DropDownList ID="City" runat="server" CssClass="form-control " >
                    <asp:ListItem>Irbid</asp:ListItem>
                    <asp:ListItem>Jerash</asp:ListItem>
                    <asp:ListItem>Zarqa</asp:ListItem>
                    <asp:ListItem>Ajloun</asp:ListItem>
                    <asp:ListItem>Amman</asp:ListItem>
                    <asp:ListItem>Maadba</asp:ListItem>
                    <asp:ListItem>Al-balqaa</asp:ListItem>
                    <asp:ListItem>Karak</asp:ListItem>
                    <asp:ListItem>Tafilah</asp:ListItem>
                    <asp:ListItem>Maan</asp:ListItem>
                    <asp:ListItem>Aqaba</asp:ListItem>
                    <asp:ListItem>Mafraq</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                </div>
          </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-4 control-label">Role</asp:Label>
            <div class="col-md-8" style="width: 60.5%"; >
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" >
                <asp:ListItem>Volunteer</asp:ListItem>
                <asp:ListItem>Beneficiary</asp:ListItem>
                
            </asp:DropDownList>
                </div>
          </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Gender" CssClass="col-md-4 control-label">Gender</asp:Label>
            <div class="col-md-8">
                 <asp:RadioButtonList ID="Gender" runat="server">
                     <asp:ListItem Value="Female">Female</asp:ListItem>
                     <asp:ListItem>Male</asp:ListItem>
                 </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Gender"
                    CssClass="text-danger" ErrorMessage="The gender field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-4 control-label">Address</asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="Address" runat="server" CssClass="form-control" placeholder=" Enter Your Address"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                    CssClass="text-danger" ErrorMessage="Address is required." />
            </div>
        </div>
      <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Image" CssClass="col-md-4 control-label">Image</asp:Label>
            <div class="col-md-8">
                <asp:FileUpload ID="Image" runat="server"/>
                
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PhoneNumber" CssClass="col-md-4 control-label" >Phone Number</asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="PhoneNumber" runat="server" CssClass="form-control" placeholder=" Enter Your Phone Number"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" ControlToValidate="PhoneNumber"
                    CssClass="text-danger" ErrorMessage="Phone Number is required." />
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PhoneNumber"  runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^07[789]-\d{7}$"></asp:RegularExpressionValidator>--%>
                
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Emergancy" CssClass="col-md-4 control-label">Emergancy Contact</asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="Emergancy" runat="server" CssClass="form-control" placeholder=" Enter Your Emergancy Contact"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" ControlToValidate="PhoneNumber"
                    CssClass="text-danger" ErrorMessage="Phone Number is required." />
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="Emergancy"  runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^07[789]-\d{7}$"></asp:RegularExpressionValidator>--%>
                
            </div>
        </div>
      
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-4 control-label">Password</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" placeholder=" Enter Your Password" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-4 control-label" >Confirm password</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" placeholder="Confirm Your Password" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" 
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" Width="280px" style="background-color:darkred;width: 282px;     margin-left: 21%;color:white; font-size:15px; border:none; "/>
            </div>
        </div>
    </div>
        </div>

        <div class="img1">
            <img src="/img/Footer4.jpg">
            
        </div>
</asp:Content>
