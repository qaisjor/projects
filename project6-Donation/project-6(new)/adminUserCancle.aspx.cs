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
    public partial class adminUserCancle : System.Web.UI.Page
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
            updatecanceled(id);
            string q = $"update tasks set pending_cancel = 0 where id = {id};";
            SqlCommand com = new SqlCommand(q, con);
            com.ExecuteNonQuery();
            con.Close();

            Response.Redirect("adminUserCancle.aspx");
        }
        protected void updatecanceled(string id)
        {

            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            Label1.Text = id;
            string q = $"update tasks set canceled = 1 where id = {id};";
            SqlCommand com = new SqlCommand(q, con);
            com.ExecuteNonQuery();
            con.Close();
        }
        protected void btnreasign_Click(object sender, System.EventArgs e)
        {
            LinkButton lnkRowSelection = (LinkButton)sender;
            string[] args = lnkRowSelection.CommandArgument.Split(';');
            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            Label1.Text = args[0];
            updatecanceled(args[0]);
            string q = $"update pb set pending = 1 where id = {args[1]};";
            SqlCommand com = new SqlCommand(q, con);
            com.ExecuteNonQuery();

            Response.Redirect("adminUserCancle.aspx");

        }
    }
}