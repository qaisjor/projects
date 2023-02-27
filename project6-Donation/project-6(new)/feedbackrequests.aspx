<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-masterpage.Master" AutoEventWireup="true" CodeBehind="feedbackrequests.aspx.cs" Inherits="project_6_new_.feedbackrequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>



     <table class="table table-striped" >
       <tr>
           <th>Valuteer Name </th>
           <th>FEEDBACK</th>
           <th> Picture </th>
           <th>state</th>
           <th>Action </th>
           <th>Action</th>

       </tr>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>




                   <tr>
              <td><%#Eval("volanteername")%></td>
              <td><%#Eval("comment")%></td>
              <td><img src="<%#Eval("pic")%>" width="150" /></td>

                       <td><%#Eval("admin_approve") %></td>

               <td>
                   <asp:LinkButton ID="btnApprove"
                    CommandArgument='<%#Eval("id")%>' 
                       OnClick="btnApprove_Click"
                    runat="server">Approve</asp:LinkButton></td>
               <td>

                   <asp:LinkButton ID="btndelete" 
                       CommandArgument='<%#Eval("id")%>'
                       OnClick="btndelete_Click"
                       runat="server">Delete</asp:LinkButton></td>
             </tr>






        </ItemTemplate>

    </asp:Repeater>


         </table>



</asp:Content>
