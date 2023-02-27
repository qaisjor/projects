using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Project5
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            try
            {
                logout.Visible= false;
                if (Session["userID"] != null)
                {
                    logout.Visible = true;
                    login.Visible = false;
                    register.Visible = false;
                    cart.Visible = true;
                    if (Session["role"].ToString() == "admin")
                    {
                        dash.Visible = true;
                    }

                }




            }
            catch (Exception)
            {

                logout.Visible = false;
                profile.Visible = false;
                cart.Visible = false;
            }



        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}