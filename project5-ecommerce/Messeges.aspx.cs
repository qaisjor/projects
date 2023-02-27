using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class Messeges : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["userid"].ToString() != null) { }

            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string table = "<table class='table table-striped'> <tr><th>No.</th><th>First Name</th> <th>Last Name</th> <th>Email</th>   <th>Messege</th></tr>";
            SqlCommand comand = new SqlCommand("select * from contactinfo ", connect);

            connect.Open();
            SqlDataReader sdr = comand.ExecuteReader();
            int count = 1;
            while (sdr.Read())
            {
                table += $"<tr><td>{count}</td><td>{sdr[0]}</td><td>{sdr[1]}</td><td>{sdr[2]}</td><td>{sdr[3]}</td></tr>";
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