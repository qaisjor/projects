using Microsoft.Win32;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Project5
{
    public partial class checkOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["userID"].ToString() != null)
                {
                   
                }



            }
            catch (Exception)
            {

                
                Response.Redirect("Login.aspx");

            }
        }

        protected void chekout_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ;database=MobileZone; integrated security=SSPI");
            SqlCommand com = new SqlCommand("select * from cart", con);
            con.Open();
            SqlDataReader sdr = com.ExecuteReader();

            insertIntoOrders();
            insertIntoOrderDetails();
        }

        protected void insertIntoOrders()
        {
            int userID = Convert.ToInt32(Session["userID"]);
            SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ;database=MobileZone; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"select sum(price) from cart where user_id = {userID}", con);

            con.Open();
            DateTime d = DateTime.Now;
            int year = d.Year;
            int month = d.Month;
            int day = d.Day;


            string date = $"{month}-{day}-{year}";
            double totalPrice = Convert.ToDouble(com.ExecuteScalar());

            Response.Write(userID);
            con.Close();

            con.Open();

            string insertIntoOreder = $"insert into orders(user_id,order_date,total_price)  values({userID} , '{date}' , {totalPrice})";
            SqlCommand command = new SqlCommand(insertIntoOreder, con);

            command.ExecuteNonQuery();

        }

        protected void insertIntoOrderDetails()
        {
            int userID = Convert.ToInt32(Session["userID"]);
            SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ;database=MobileZone; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"select order_id from orders where user_id={userID}", con);
            con.Open();
            SqlDataReader sdr = com.ExecuteReader();


            var orderIDs = new ArrayList();
            while (sdr.Read())
            {
                orderIDs.Add(sdr[0]);
            }

            con.Close();

            con.Open();


            SqlCommand com2 = new SqlCommand($"select * from cart where user_id ={userID}", con);
            SqlDataReader sdr2 = com2.ExecuteReader();

            string insertquery = "insert into Order_Details(order_id,product_id,product_quantity,total_price) values ";
            int c = 1;
            while (sdr2.Read())
            {
                insertquery += $"({orderIDs[c]} , {sdr2[1]} , {sdr2[2]} , {sdr2[3]}),";
                c++;
            }
            con.Close();
            insertquery = insertquery.Substring(0, insertquery.Length - 1);

            con.Open();
            SqlCommand com3 = new SqlCommand(insertquery, con);
            com3.ExecuteNonQuery();
            //Response.Write(insertquery);
            con.Close();

            deletefromcart();
        }

        protected void deletefromcart()
        {
            int userID = Convert.ToInt32(Session["userID"]);
            SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ;database=MobileZone; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"delete from cart where user_id={userID}", con);
            con.Open();

            com.ExecuteNonQuery();
            Response.Redirect("Home.aspx");
        }


    }
}