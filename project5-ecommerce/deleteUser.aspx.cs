using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class deleteUser1 : System.Web.UI.Page
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
            string userid = Request.QueryString["userid"];
            Response.Write(userid);

            //deleteFromCart();
            //deleteFromOrderDetails();
            //deleteFromOrders();
            try
            {
                deleteUser();
                Response.Redirect("admin.aspx");
            }
            catch
            {
                Response.Write("<script>alrt('Cannot Delete A User With Past Orders')");
                Response.Redirect("admin.aspx");
            }


        }

        protected void deleteUser()
        {
            string userid = Request.QueryString["userid"];
            //Response.Write(userid);
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string q = $"delete from Users where ID={userid}";
            SqlCommand com = new SqlCommand(q, connect);
            connect.Open();
            com.ExecuteNonQuery();
            connect.Close();
        }

        protected void deleteFromCart() {
            string userid = Request.QueryString["userid"];
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string q = $"delete from cart where user_id={userid}";
            SqlCommand com = new SqlCommand(q, connect);
            connect.Open();
            com.ExecuteNonQuery();
            connect.Close();
        }



        protected void deleteFromOrders() {
            string userid = Request.QueryString["userid"];
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string q = $"delete from orders where user_id={userid}";
            SqlCommand com = new SqlCommand(q, connect);
            connect.Open();
            com.ExecuteNonQuery();
            connect.Close();
        }
        protected void deleteFromOrderDetails()
        {

            string userid = Request.QueryString["userid"];
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            int[] ids = getOrderID();
            connect.Open();
            foreach (int id in ids) {
                string q = $"delete from order_details where order_id={id}";
                SqlCommand com = new SqlCommand(q, connect);
                com.ExecuteNonQuery();
            }

            
            
            connect.Close();
        }

        protected int[] getOrderID() {
            string userid = Request.QueryString["userid"];
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            connect.Open();
            string q = $"select order_id from orders where user_id={userid}";
            SqlCommand com = new SqlCommand(q, connect);
            SqlDataReader sdr = com.ExecuteReader();

            var ordersID = new List<int>() ;
            while (sdr.Read()) {
                ordersID.Add(int.Parse(sdr[0].ToString()));
            }

            int[] orders = new int[ordersID.Count];
            int count = 0;
            foreach (int id in ordersID) {
                
                orders[count] = id;
                count++;
            }

            return orders;

        }

    }
}