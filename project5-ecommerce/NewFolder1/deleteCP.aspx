<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteCP.aspx.cs" Inherits="Project5.deleteCP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div id="catTable" runat="server">
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        Category name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" Width="200px" Height="200px" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        category img</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        category desc</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Image ID="Image2" Width="200px" Height="200px" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        category logo</td>
                    <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                </tr>
            </table>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit" />

        </div>


       <div id="proTable" runat="server">
        <table class="auto-style1">
            <tr>
                <td>product_name</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>product_description</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Image ID="Image3" Width="200px" Height="200px" runat="server" />
                </td>
            </tr>
            <tr>
                <td>img1</td>
                <td>
                    <asp:FileUpload ID="FileUpload3" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Image ID="Image4" Width="200px" Height="200px" runat="server" />
                </td>
            </tr>
            <tr>
                <td>img2</td>
                <td>
                    <asp:FileUpload ID="FileUpload4" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Image ID="Image5" Width="200px" Height="200px" runat="server" />
                </td>
            </tr>
            <tr>
                <td>img3</td>
                <td>
                    <asp:FileUpload ID="FileUpload5" runat="server" />
                </td>
            </tr>
            <tr>
                <td>price</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Edit" />
           </div>
    </form>
</body>
</html>
