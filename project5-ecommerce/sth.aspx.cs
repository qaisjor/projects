using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Caching;

namespace Project5
{
    public partial class sth : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string catID = Request.QueryString["catID"];
            if(catID == null)
            {
                Response.Redirect("Home.aspx");
            }

            SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security = SSPI");
            con.Open();
            SqlCommand getCatCom = new SqlCommand($"select * from category where category_id = {int.Parse(catID)} ", con);

            SqlDataReader drCat = getCatCom.ExecuteReader();
            drCat.Read();
            title.Text = drCat[1].ToString();
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
                cart.Visible= false;

            }
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}