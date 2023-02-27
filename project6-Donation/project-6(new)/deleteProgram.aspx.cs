using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6_new_
{
    public partial class deleteProgram : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Write("wrong access to this web page");
            }
            else
            {
                SqlConnection con = null;
                try
                {
                    // Creating Connection  
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                    // writing sql query  

                    SqlCommand cm = new SqlCommand($"update tasks set pending_cancel = 1, user_requested_cancel = '{User.Identity.GetUserId()}' where id = {Request.QueryString["id"]}", con);
                    // Opening Connection  
                    con.Open();
                    // Executing the SQL query  
                    cm.ExecuteNonQuery();
                    Response.Redirect("ProfileUser.aspx");
                    Console.WriteLine("Record Deleted Successfully");
                    // Label1.Text = "Record Deleted Successfully";
                }
                catch (Exception B)
                {
                    Console.WriteLine("OOPs, something went wrong.\n" + B);
                    // Label1.Text = "OOPs, something went wrong.\n" + B;
                }
                // Closing the connection  
                finally
                {
                    con.Close();
                }
            }
        }
    }
}