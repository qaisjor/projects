using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6_new_
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44379/HomePage#prog");
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            if (User.Identity.GetUserId() != null)
            {
                Response.Redirect($"addProgramProfilePage.aspx?id={id}");
            }
            else
            {
                Response.Redirect("Account/Login.aspx");

            }
        }
            protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donat.aspx");
        }
    }
}