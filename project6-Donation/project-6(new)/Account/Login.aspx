<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project_6_new_.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  <h2 style="text-align:center;"><span class="log"> LOG IN </span></h2><br />
    <div class="both" style="display:flex; width: 72%; height:500px; align-content:center; margin: 0 auto;">
        <div class="box" style=" height: 500px; justify-content: space-between; width: 75%;
">
    <div class="row">
        <div class="col-md-12">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4 style="text-align:center;">Welcome Back </h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group "  >
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-3 control-label col-md-offset-1 " >Email</asp:Label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-3 control-label col-md-offset-1 " >Password</asp:Label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-5 col-md-7">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-4 col-md-8">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" style="background-color:darkred; color:white; font-size:15px; border:none;" />
                        </div>
                    </div>

                     <div class="form-group">
                        <div class="col-md-offset-4 col-md-8">
                             <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                        </div>
                          <div class="col-md-offset-4 col-md-8">
<%--                             <a href=""> Back To HomePage </a>--%>
                        </div>
                    </div
                </div>
            </section>
        </div>
        </div>
            </div>
         <div style="width: 80%;"><img style="width:105%;" src="/img/Footer4.jpg " /></div>
    </div>

</asp:Content>
