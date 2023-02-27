<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-masterpage.Master" AutoEventWireup="true" CodeBehind="AdminFinishedTask.aspx.cs" Inherits="project_6_new_.AdminFinishedTask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT tasks.id, firstname.Name AS bName, secondname.Name AS vName, programs.name AS pName FROM tasks INNER JOIN pb ON pb.id = tasks.pbID INNER JOIN AspNetUsers AS firstname ON pb.user_id = firstname.Id INNER JOIN pv ON pv.id = tasks.pvID INNER JOIN AspNetUsers AS secondname ON secondname.Id = pv.user_id INNER JOIN programs ON programs.id = tasks.programaID WHERE (tasks.done = 1)"></asp:SqlDataSource>
    
     <table class="table table-striped" >
       <tr>
           <th>Valuteer Name </th>
           <th>benificiary Name </th>
           <th> Program Name </th>
           
       </tr>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
       <ItemTemplate>
           <tr>
              <td><%#Eval("bName")%></td>
              <td><%#Eval("vName")%></td>   
              <td><%#Eval("pName")%></td>
             </tr>
       </ItemTemplate>
    </asp:Repeater>
         </table>
</asp:Content>
