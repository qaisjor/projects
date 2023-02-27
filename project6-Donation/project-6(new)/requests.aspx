<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-masterpage.Master" AutoEventWireup="true" CodeBehind="requests.aspx.cs" Inherits="project_6_new_.requests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div <%--style="    margin: 0px 23px;"--%> id="requestContainer">
            
            role&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem Selected Value="A">All</asp:ListItem>
                <asp:ListItem Value="V">Volunteer</asp:ListItem>
                <asp:ListItem Value="B">Beneficiary</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eldaryDBConnectionString %>" SelectCommand="select pb.id, AspNetUsers.Name, AspNetRoles.Name as Role, programs.name as programs_name, pb.date, pb.description from pb join AspNetUsers on pb.user_id = AspNetUsers.Id join AspNetUserRoles on AspNetUsers.Id = AspNetUserRoles.UserId join AspNetRoles on AspNetRoles.Id = AspNetUserRoles.RoleId  join programs on programs.id = pb.program_id where pb.admin_approve = 0;
"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:eldaryDBConnectionString %>" SelectCommand="select pv.id, AspNetUsers.Name, AspNetRoles.Name as Role, programs.name as programs_name from pv join AspNetUsers on pv.user_id = AspNetUsers.Id join AspNetUserRoles on AspNetUsers.Id = AspNetUserRoles.UserId join AspNetRoles on AspNetRoles.Id = AspNetUserRoles.RoleId join programs on programs.id = pv.program_id where admin_approve = 0;"></asp:SqlDataSource>
            <br />
            <asp:PlaceHolder ID="BTable" runat="server">
                <h3> Beneficiary Requests </h3>
                 <table  class="table table-striped">
            <tr>
               <th>User Name</th>
               <th>User Role </th>
               <th>Program Name</th>
                <th>Description</th>
               <th>Action</th>
               
             </tr>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <tr>
                     <td><%#Eval("Name")%></td>
                     <td><%#Eval("Role")%></td>
                     <td><%#Eval("programs_name")%></td>
                     <td><%#Eval("description")%></td>
                     
                     <td>
                         <asp:LinkButton ID="btnAccept" runat="server"
                         CommandArgument  ='<%#Eval("id") %>  '
                          OnClick="btnAccept_Click"
                       >Accept</asp:LinkButton>

                          <asp:LinkButton ID="btnCancele"
                    CommandArgument='<%#Eval("id")%>' 
                       OnClick="btnCancele_Click"
                    runat="server">Reject</asp:LinkButton>
                   </td>
                        </tr>
                </ItemTemplate>
            </asp:Repeater>
                </table>
            </asp:PlaceHolder>
            <br />
           
            <br />
            <asp:PlaceHolder ID="VTable" runat="server">
                  <h3> Volunteer Requests </h3>
                <table   class="table table-striped">

            <tr>
               <th>User Name</th>
               <th>User Role </th>
               <th>Program Name</th>
                
               <th>Action</th>
               
             </tr>
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <tr>
                     <td><%#Eval("Name")%></td>
                     <td><%#Eval("Role")%></td>
                     <td><%#Eval("programs_name")%></td>
                     
                     
                     <td>
                         <asp:LinkButton ID="btnAccept2" runat="server"
                         CommandArgument  ='<%#Eval("id") %>  '
                          OnClick="btnAccept2_Click"
                       >Accept</asp:LinkButton>

                          <asp:LinkButton ID="btnCancele2"
                    CommandArgument='<%#Eval("id")%>' 
                       OnClick="btnCancele2_Click"
                    runat="server">Cancele</asp:LinkButton>
                   </td>
                        </tr>
                </ItemTemplate>
            </asp:Repeater>
                 </table>

            </asp:PlaceHolder>
             
            <br />
        </div>
</asp:Content>
