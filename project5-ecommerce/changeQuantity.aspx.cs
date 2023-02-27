using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class changeQuantity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string oper = Request.QueryString["operator"];
            int id = Convert.ToInt32(Request.QueryString["id"]);
            int quantity = Convert.ToInt32(Request.QueryString["quantity"]);
            double price = Convert.ToDouble(Request.QueryString["price"]);
            double total; 
            Response.Write(oper + " " + id + " " + quantity);
            if (quantity <=1 && oper=="minus") {
                SqlConnection con = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security = SSPI");
                con.Open();
                SqlCommand com = new SqlCommand($"delete from cart where cart_id = {id} ", con);
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("cart.aspx");
            }
            if (oper == "plus")
            {
                quantity++;
                total = quantity * price;
                changeQuant(id,quantity , total);
            }
            else {
                quantity--;
                total = quantity * price;
                changeQuant(id, quantity , total);
             }
            
        }

        protected void changeQuant(int id , int q , double total) {
        
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string query = $"update cart set quntity = {q} , total_price ={total} where cart_id = {id}";
            connect.Open();
            SqlCommand com = new SqlCommand(query , connect);
            com.ExecuteNonQuery();
             connect.Close();
            Response.Redirect("cart.aspx");
        }

       
    }
}