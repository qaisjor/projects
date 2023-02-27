using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class cart1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["userID"].ToString() != null)
                {
                    login.Visible = false;
                    register.Visible = false;
                    //    if (Session["role"].ToString() == "admin")
                    //    {
                    //        dash.Visible = true;
                    //    }
                    //}

                }

            }
            catch (Exception)
            {

                logout.Visible = false;
                profile.Visible = false;
                cart.Visible = false;
                Response.Redirect("Login.aspx");

            }
        }

        protected void checkOut_Click(object sender, EventArgs e)
        {
            
            
                int userID = Convert.ToInt32(Session["userID"].ToString());
                SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security = SSPI");
                con.Open();
                SqlCommand getCatCom = new SqlCommand($"select * from cart  where user_id={userID}", con);

                SqlDataReader dr = getCatCom.ExecuteReader();

                

                if(dr.Read())
                {
                    Response.Redirect("checkOut.aspx");

                }

            else
            {
                Response.Write("<script>alert('Your Cart is Empty')</script>");
            }
            
         

        }
    }
}