using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["userid"].ToString() != null ) { }

            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string table = "<table class='table table-striped'> <tr><th>ID</th><th>First Name</th> <th>Last Name</th> <th>Email</th>   <th>Phone Number</th><th>Delete</th></tr>";
            SqlCommand comand = new SqlCommand("select * from users ", connect);

            connect.Open();
            SqlDataReader sdr = comand.ExecuteReader();
            sdr.Read();
            int count=1;
            while (sdr.Read())
            {
                table += $"<tr><td>{count}</td><td>{sdr[1]}</td><td>{sdr[2]}</td><td>{sdr[3]}</td><td>{sdr[5]}</td>  <td><a href='deleteUser.aspx?userid={sdr[0]}'><i class=\"fa-solid fa-trash-can\" style='color:red;'></i></a></td> </tr>";
                count++;
            }
            table += "</table>";
            Label label = new Label();
            label.Text = table;
            users.Controls.Add(label);
            sdr.Close();
            connect.Close();
        }
    }
}