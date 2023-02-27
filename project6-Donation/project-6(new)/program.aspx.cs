using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6_new_
{
    public partial class program : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect("addProgramProfilePage.aspx");
        }

        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            //Button btn = (Button)source;
            //string id = btn.CommandArgument.ToString();
            if (User.Identity.GetUserId() != null)
            {
                Response.Redirect($"addProgramProfilePage.aspx");
            }
            else
            {
                Response.Redirect("Account/Login.aspx");

            }

        }
    }
}