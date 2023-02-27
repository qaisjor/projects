<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-masterpage.Master" AutoEventWireup="true" CodeBehind="AdminWorkingTask.aspx.cs" Inherits="project_6_new_.AdminWorkingTask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-striped" >
       <tr>
           <th>Valuteer Name </th>
           <th>benificiary Name </th>
           <th> Program Name </th>
           <th>Action </th>
           <th>Action</th>
       </tr>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT tasks.id, firstname.Name AS bName, secondname.Name AS vName, programs.name AS pName FROM tasks INNER JOIN pb ON pb.id = tasks.pbID INNER JOIN AspNetUsers AS firstname ON pb.user_id = firstname.Id INNER JOIN pv ON pv.id = tasks.pvID INNER JOIN AspNetUsers AS secondname ON secondname.Id = pv.user_id INNER JOIN programs ON programs.id = tasks.programaID WHERE (tasks.done = 0) AND (tasks.canceled = 0)"></asp:SqlDataSource>
   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
       <ItemTemplate>
           <tr>
              <td><%#Eval("bName")%></td>
              <td><%#Eval("vName")%></td>   
              <td><%#Eval("pName")%></td>
               <td>
                   <asp:LinkButton ID="btnCancele"
                    CommandArgument='<%#Eval("id")%>' 
                       OnClick="btnCancele_Click"
                    runat="server">Cancele</asp:LinkButton></td>
               <td>
                   
                   <asp:LinkButton ID="btnDone" 
                       CommandArgument='<%#Eval("id")%>'
                       OnClick="btnDone_Click"
                       runat="server">Done</asp:LinkButton></td>
             </tr>    
       </ItemTemplate>
    </asp:Repeater>

    </table>
</asp:Content>
