using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ;database=MobileZone; integrated security=SSPI");
            SqlCommand command1 = new SqlCommand("select Email from Users", connection);
            connection.Open();
            SqlDataReader sdr = command1.ExecuteReader();
            bool q = false;
            while (sdr.Read())
            {
                if (sdr[0].ToString() == Email.Value)
                {
                    q = true;
                    break;
                }
            }
            connection.Close();
            connection.Open();
            
            if (q != true)
            {
                SqlCommand command = new SqlCommand($"insert into Users values(@firstname,@lastname,@email,@password,@phone,'user')", connection);
                //connection.Open();
                command.Parameters.AddWithValue("@firstname", FirstName.Value);
                command.Parameters.AddWithValue("@lastname", LastName.Value);
                command.Parameters.AddWithValue("@email", Email.Value);
                command.Parameters.AddWithValue("@password", Password1.Value);
                command.Parameters.AddWithValue("@phone", int.Parse(PhoneNumber.Value));
                command.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }

            else
            {
                Label1.Text = "This Email is Alredy Exists!";
            }
            connection.Close();
        }
    }
}