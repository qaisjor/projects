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
    public partial class feedbackrequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnApprove_Click(object sender, System.EventArgs e)
        {
            LinkButton lnkRowSelection = (LinkButton)sender;
            string id = lnkRowSelection.CommandArgument;


            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            string q = $"update feedback set admin_approve = 1 where id = '{id}'";
            SqlCommand com = new SqlCommand(q, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("feedbackrequests.aspx");

        }
        protected void btndelete_Click(object sender, System.EventArgs e)
        {
            LinkButton lnkRowSelection = (LinkButton)sender;
            string id = lnkRowSelection.CommandArgument;
            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            string q = $"Delete from feedback  where id ='{id}'";
            SqlCommand com = new SqlCommand(q, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("feedbackrequests.aspx");

        }
    }
}