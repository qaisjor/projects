<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-masterpage.Master" AutoEventWireup="true" CodeBehind="adminUserCancle.aspx.cs" Inherits="project_6_new_.adminUserCancle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h1>Canceled Tasks </h1>

     <table class="table table-striped" >
       <tr>
           <th>Valuteer Name </th>
           <th>benificiary Name </th>
           <th> Program Name </th>
           <th>Action </th>
           <th>Action</th>
       </tr>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT tasks.id, pb.id AS pbID, firstname.Name AS bName, secondname.Name AS vName, programs.name AS pName, firstname.id as firstid, secondname.id as secondid FROM tasks INNER JOIN pb ON pb.id = tasks.pbID INNER JOIN AspNetUsers AS firstname ON pb.user_id = firstname.Id INNER JOIN pv ON pv.id = tasks.pvID INNER JOIN AspNetUsers AS secondname ON secondname.Id = pv.user_id INNER JOIN programs ON programs.id = tasks.programaID WHERE (tasks.pending_cancel = 1) AND (tasks.canceled = 0)"></asp:SqlDataSource>
   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
       <ItemTemplate>
           <tr>
              <td><a style="color:black; text-decoration:none;" href="ProfileUser.aspx?id=<%#Eval("firstid")%>"><%#Eval("bName")%></a></td>
              <td><a style="color:black; text-decoration:none;" href="ProfileUser.aspx?id=<%#Eval("secondid")%>"><%#Eval("vName")%></a></td>   
              <td><%#Eval("pName")%></td>
               <td>
                   <asp:LinkButton ID="btnCancele"
                    CommandArgument='<%#Eval("id")%>' 
                       OnClick="btnCancele_Click"
                    runat="server">End</asp:LinkButton></td>
               <td>
                   <asp:LinkButton ID="btnReasign" runat="server"
                       CommandArgument='<%#Eval("id") +";" + Eval("pbID")%>  '
                       OnClick="btnreasign_Click"
                       >Reasign</asp:LinkButton>
                   </td>
                   
             </tr>    
       </ItemTemplate>
    </asp:Repeater>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </table>
</asp:Content>
