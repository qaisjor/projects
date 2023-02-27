using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class contactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["userID"].ToString() != null)
                {
                    login.Visible = false;
                    register.Visible = false;
                    //if (Session["role"].ToString() == "admin")
                    //{
                    //    dash.Visible = true;
                    //}
                }



            }
            catch (Exception)
            {

                logout.Visible = false;
                profile.Visible = false;
                cart.Visible = false;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"insert into contactinfo (firstname , lastname, email , messege) values ('{TextBox3.Text}','{TextBox2.Text}','{TextBox1.Text}','{TextArea1.Value}')", conn);

            conn.Open();
            com.ExecuteNonQuery();

            conn.Close();

            Label5.Text = ("Thank you for your comments, we will contact you as soon as possible");
            //Button1.Visible = false;
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextArea1.Value = string.Empty;
        }
        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}