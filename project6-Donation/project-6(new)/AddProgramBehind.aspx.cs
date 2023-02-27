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
    public partial class AddProgramBehind : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Request.QueryString["id"] == null)
            {
                Label1.Text = "wrong access to this page";
                return;
            }
            if (Context.User.IsInRole("Volunteer"))
            {
                SqlConnection con = null;
                try
                {
                    // Creating Connection  
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                    // writing sql query  
                    SqlCommand cm = new SqlCommand($"Select program_id from pv where user_id = '{User.Identity.GetUserId()}'", con);
                    SqlCommand cm2 = new SqlCommand($"insert into pv(user_id, program_id) values('{User.Identity.GetUserId()}', {Request.QueryString["id"]});", con);

                    // Opening Connection  
                    con.Open();
                    // Executing the SQL query  
                    SqlDataReader sdr = cm.ExecuteReader();
                    // Iterating Data  
                    while (sdr.Read())
                    {
                        if ((int)sdr[0] == Convert.ToInt32(Request.QueryString["id"]))
                        {
                            Label1.Text = "you are already assigned in this program";
                            Response.Redirect(String.Format("addProgramProfilePage.aspx?res={0}", "you are already assigned in this program"));

                            return;
                        }


                    }
                    con.Close();
                    con.Open();
                    cm2.ExecuteNonQuery();
                    Label1.Text = "Your application has been successfully registered, and you will be contacted to schedule an interview";
                    if (Context.User.IsInRole("Volunteer"))
                    {
                        Response.Redirect(String.Format("addProgramProfilePage.aspx?res={0}", "Your application has been successfully registered, and you will be contacted for more details"));

                    }
                    else
                    {
                        Response.Redirect(String.Format("addProgramProfilePage.aspx?res={0}", "Your application has been successfully registered, and you will be contacted for more details"));

                    }
                }
                catch (Exception S)
                {
                    Console.WriteLine("OOPs, something went wrong.\n" + S);
                    Label1.Text = "OOPs, something went wrong.\n" + S;
                }
                // Closing the connection  
                finally
                {
                    con.Close();
                }



            }
            else if (Context.User.IsInRole("Beneficiary"))
            {
                SqlConnection con = null;
                try
                {
                    // Creating Connection  
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                    // writing sql query  
                    SqlCommand cm = new SqlCommand($"Select program_id from pb where user_id = '{User.Identity.GetUserId()}'", con);
                    SqlCommand cm2 = new SqlCommand($"insert into pb(user_id, program_id, description) values('{User.Identity.GetUserId()}', {Request.QueryString["id"]}, '{Request.QueryString["comment"]}');", con);

                    // Opening Connection  
                    con.Open();
                    // Executing the SQL query  
                    SqlDataReader sdr = cm.ExecuteReader();
                    // Iterating Data  
                    while (sdr.Read())
                    {
                        if ((int)sdr[0] == Convert.ToInt32(Request.QueryString["id"]))
                        {
                            Response.Redirect(String.Format("addProgramProfilePage.aspx?res={0}", "you are already assigned in this program"));

                            Label1.Text = "you are already assigned in this program";
                            return;
                        }


                    }
                    con.Close();
                    con.Open();
                    cm2.ExecuteNonQuery();
                    Label1.Text = "Your application has been successfully registered, and you will be contacted to schedule an interview";
                    Response.Redirect(String.Format("addProgramProfilePage.aspx?res={0}", "Your application has been successfully registered, and you will be contacted to schedule an interview"));

                }
                catch (Exception S)
                {
                    Console.WriteLine("OOPs, something went wrong.\n" + S);
                    Label1.Text = "OOPs, something went wrong.\n" + S;
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