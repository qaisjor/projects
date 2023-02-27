using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class deleteFromCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cartId = Request.QueryString["cartId"];
            Response.Write(cartId);

            SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security = SSPI");
            con.Open();
            SqlCommand com = new SqlCommand($"delete from cart where cart_id = {cartId} ", con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("cart.aspx");
        }
    }
}