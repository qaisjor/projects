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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(" select count(AspNetUsers.Id) from AspNetUsers\r\njoin AspNetUserRoles  on AspNetUserRoles.UserId = AspNetUsers.Id \r\njoin AspNetRoles on AspNetRoles.Id = AspNetUserRoles.RoleId \r\nwhere AspNetRoles.Id = 3; ", connection);
            SqlCommand command1 = new SqlCommand(" select count(AspNetUsers.Id) from AspNetUsers\r\njoin AspNetUserRoles  on AspNetUserRoles.UserId = AspNetUsers.Id \r\njoin AspNetRoles on AspNetRoles.Id = AspNetUserRoles.RoleId \r\nwhere AspNetRoles.Id = 2; ", connection);
            double v =Convert.ToDouble(command.ExecuteScalar().ToString());
            double b = Convert.ToDouble(command1.ExecuteScalar().ToString());
            volunteernumber.InnerHtml = v.ToString();
            Beneficiarynumber.InnerHtml = b.ToString();
            double total = v + b;
            double vp = Math.Round((v / total) * 100 ,2);
            vpercentage.InnerHtml= vp.ToString()+"%";
            double bp = Math.Round((b / total) * 100, 2);
            bpercentage.InnerHtml = bp.ToString() + "%";


            SqlCommand command2 = new SqlCommand(" select count(id) from tasks where done = 1 ", connection);
            SqlCommand command3 = new SqlCommand(" select count(id) from tasks", connection);
            double totals= Convert.ToDouble(command3.ExecuteScalar().ToString());
            double f = Convert.ToDouble(command2.ExecuteScalar().ToString());
            finished.InnerHtml= f.ToString();
            double fp = Math.Round((f / totals) * 100, 2);
            fpercentage.InnerHtml= fp.ToString() + "%";



            SqlCommand command4 = new SqlCommand(" select count(id) from tasks where canceled = 1 ", connection);
            double c = Convert.ToDouble(command4.ExecuteScalar().ToString());
            cTasks.InnerHtml= c.ToString();
            double cp = Math.Round((c / totals) * 100, 2);
            cPercentage.InnerHtml =  cp + "%";


            SqlCommand command5 = new SqlCommand(" select count(id) from tasks where done != 1 and canceled != 1  ", connection);
            double w = Convert.ToDouble(command5.ExecuteScalar().ToString());
            wTasks.InnerHtml = w.ToString();
            double wp = Math.Round((w / totals) * 100, 2);
            wpercentage.InnerHtml = wp + "%";

        }
    }
}