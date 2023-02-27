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
    public partial class AdminWorkingTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCancele_Click(object sender, System.EventArgs e)
        {
            LinkButton lnkRowSelection = (LinkButton)sender;
            string id = lnkRowSelection.CommandArgument;


            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            string q = $"update tasks set canceled = 1 where id = {id};";
            SqlCommand com = new SqlCommand(q, con);
            com.ExecuteNonQuery();

            Response.Redirect("AdminWorkingTask.aspx");
        }
        protected void btnDone_Click(object sender, System.EventArgs e)
        {
            LinkButton lnkRowSelection = (LinkButton)sender;
            string id = lnkRowSelection.CommandArgument;
            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            string q = $"update tasks set done = 1 where id = {id};";
            SqlCommand com = new SqlCommand(q, con);
            com.ExecuteNonQuery();
            Response.Redirect("AdminWorkingTask.aspx");

        }
    }
}