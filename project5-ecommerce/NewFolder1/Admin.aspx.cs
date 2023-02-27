using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string table = "<table class='table table-striped'> <tr><th>ID</th><th>First Name</th> <th>Last Name</th> <th>Email</th>   <th>Phone Number</th> </tr>";
            SqlCommand comand = new SqlCommand("select * from Users ", connect);

            connect.Open();
            SqlDataReader sdr = comand.ExecuteReader();
            while (sdr.Read())
            {
                table += $"<tr><td>{sdr[0]}</td><td>{sdr[1]}</td><td>{sdr[2]}</td><td>{sdr[3]}</td><td>{sdr[5]}</td>  <td><a href='deleteUser.aspx?userid={sdr[0]}'>Delete</a></td> </tr>";

            }
            table += "</table>";
            Label label = new Label();
            label.Text = table;
            users.Controls.Add(label);
            sdr.Close();
            connect.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            SqlConnection connect = new SqlConnection("data source= DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            
            SqlCommand comand = new SqlCommand("select * from Product  ", connect);

            connect.Open();
            SqlDataReader sdr = comand.ExecuteReader();
            sdr.Read();

            
            Response.Redirect($"deleteCP.aspx?product_id={sdr[0]}&protype={"Edit"}");
            
        }

        protected void delete_Click(object sender, EventArgs e)
        {

            SqlConnection connect = new SqlConnection("data source= DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");

            SqlCommand comand = new SqlCommand("select * from Category  ", connect);

            connect.Open();
            SqlDataReader sdr = comand.ExecuteReader();
            sdr.Read();
            Response.Redirect($"deleteCE.aspx?catid={sdr[0]}&type='delete'");
        }
    }

}