using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Web.ModelBinding;
using Microsoft.Win32;

namespace Project5
{
    public partial class CustomerProfile : System.Web.UI.Page
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
                Response.Redirect("Login.aspx");

            }
            showUserOrders();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            editForm.Visible = true;
            vv.Visible = false;
            int id = Convert.ToInt32(Session["userID"].ToString());

            SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security = SSPI");
            con.Open();
            SqlCommand getUserCom = new SqlCommand($"select * from Users where id={id}", con);
            SqlDataReader sdr = getUserCom.ExecuteReader();
            sdr.Read();
            TextBox1.Text = sdr[1].ToString();
            TextBox2.Text = sdr[2].ToString();
            TextBox3.InnerHtml = sdr[3].ToString();
            TextBox4.Text = sdr[4].ToString();
            TextBox5.Text = sdr[5].ToString();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["userID"].ToString());

            SqlConnection connection = new SqlConnection("data source = DESKTOP-68EIP1R\\SQLEXPRESS; database=MobileZone;integrated security=SSPI");
            connection.Open();

            SqlCommand com1 = new SqlCommand($"update Users set  firstName=@firstName,lastName=@lastName,password=@password,phoneNumber=@phoneNumber where id={id} ", connection);
            com1.Parameters.AddWithValue("@firstName", (TextBox1.Text));
            com1.Parameters.AddWithValue("@lastName", (TextBox2.Text));
            com1.Parameters.AddWithValue("@password", int.Parse(TextBox4.Text));
            com1.Parameters.AddWithValue("@phoneNumber", int.Parse(TextBox5.Text));

            com1.ExecuteNonQuery();
            connection.Close();
            editForm.Visible = false;
            vv.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            editForm.Visible = false;
            vv.Visible = true;
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
        protected void showUserOrders()
        {
            SqlConnection connection = new SqlConnection("data source = DESKTOP-68EIP1R\\SQLEXPRESS; database=MobileZone;integrated security=SSPI");
            connection.Open();
            int id = Convert.ToInt32(Session["userID"].ToString());
            string q = $"select Orders.order_id ,   Orders.order_date , Order_Details.product_quantity , Product.price , Product.product_name ,   Order_Details.total_price  from orders  join Order_Details  on Orders.order_id = Order_Details.order_id join Product on Order_Details.product_id = Product.product_id where user_id = {id} order by order_id asc;;";

            SqlCommand com = new SqlCommand(q, connection);
            SqlDataReader sdr = com.ExecuteReader();

            string table = "<table class='table table-striped'><tr><th>Order Number</th> <th>Order ID</th> <th>Order Date</th><th>Product Quantity</th><th>Product Price</th><th>Product Name</th><th>Total Price</th><th></th><th></th></tr>";
            int count = 1;
            while (sdr.Read())
            {
                table += $"<tr><td>{count++}</td><td>{sdr[0]}</td><td>{sdr[1]}</td><td>{sdr[2]}</td><td>{sdr[3]}</td><td>{sdr[4]}</td><td>{sdr[5]}</td>   </tr>";
            }

            table += "</table>";

            ordersTable.Text = table;
        }
    }
}