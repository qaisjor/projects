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
    public partial class requests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VTable.Visible = false;

            if (DropDownList2.SelectedValue == "A")
            {
                VTable.Visible = true;
                BTable.Visible = true;
            }
            if (DropDownList2.SelectedValue == "B")
            {
                VTable.Visible = false;
                BTable.Visible = true;
            }
            if (DropDownList2.SelectedValue == "V")
            {
                VTable.Visible = true;
                BTable.Visible = false;
            }

            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection("data source= DESKTOP-6GG09VO\\SQLEXPRESS; database=eldaryDB; integrated security=SSPI");
                // writing sql query  
                SqlCommand cm = new SqlCommand($"select AspNetUsers.Name, AspNetRoles.Name, pv.program_id, pv.description from pv join AspNetUsers on pv.user_id = AspNetUsers.Id join AspNetUserRoles on AspNetUsers.Id = AspNetUserRoles.UserId join AspNetRoles on AspNetRoles.Id = AspNetUserRoles.RoleId where pv.program_id = ;", con);
                SqlCommand cm2 = new SqlCommand($"select AspNetUsers.Name, AspNetRoles.Name, pb.program_id, pb.date, pb.description from pb join AspNetUsers on pb.user_id = AspNetUsers.Id join AspNetUserRoles on AspNetUsers.Id = AspNetUserRoles.UserId join AspNetRoles on AspNetRoles.Id = AspNetUserRoles.RoleId where pb.program_id ;", con);
                // Opening Connection  
                con.Open();
                if (DropDownList2.SelectedValue == "V")
                {
                    SqlDataReader sdr = cm.ExecuteReader();
                    while (sdr.Read())
                    {
                        Console.WriteLine(sdr["id"] + " " + sdr["name"] + " " + sdr["email"]); // Displaying Record  

                    }
                }
                else if (DropDownList2.SelectedValue == "B")
                {
                    SqlDataReader sdr = cm2.ExecuteReader();
                    while (sdr.Read())
                    {
                        Console.WriteLine(sdr["id"] + " " + sdr["name"] + " " + sdr["email"]); // Displaying Record  

                    }
                }
                else
                {
                    SqlDataReader sdr = cm.ExecuteReader();
                    while (sdr.Read())
                    {
                        Console.WriteLine(sdr["id"] + " " + sdr["name"] + " " + sdr["email"]); // Displaying Record  

                    }
                    SqlDataReader sdr2 = cm2.ExecuteReader();
                    while (sdr2.Read())
                    {
                        Console.WriteLine(sdr["id"] + " " + sdr["name"] + " " + sdr["email"]); // Displaying Record  

                    }
                }

            }
            catch (Exception S)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + S);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {
            LinkButton lnkRowSelection = (LinkButton)sender;
            string id = lnkRowSelection.CommandArgument;


            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection(strcon);
                // writing sql query  
                SqlCommand cm = new SqlCommand($"update pb set pending = 1, admin_approve = 1 where id = {id};", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();

            }
            catch (Exception B)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + B);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
            Response.Redirect("requests.aspx");
        }


        protected void btnCancele_Click(object sender, System.EventArgs e)
        {
            LinkButton lnkRowSelection = (LinkButton)sender;
            string id = lnkRowSelection.CommandArgument;


            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection(strcon);
                // writing sql query  
                SqlCommand cm = new SqlCommand($"delete from pb where id = {id};", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();

            }
            catch (Exception B)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + B);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
            Response.Redirect("requests.aspx");
        }

        protected void btnAccept2_Click(object sender, EventArgs e)
        {
            LinkButton lnkRowSelection = (LinkButton)sender;
            string id = lnkRowSelection.CommandArgument;


            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection(strcon);
                // writing sql query  
                SqlCommand cm = new SqlCommand($"update pv set admin_approve = 1 where id = {id};", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();

            }
            catch (Exception B)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + B);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
            Response.Redirect("requests.aspx");
        }


        protected void btnCancele2_Click(object sender, System.EventArgs e)
        {
            LinkButton lnkRowSelection = (LinkButton)sender;
            string id = lnkRowSelection.CommandArgument;


            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection(strcon);
                // writing sql query  
                SqlCommand cm = new SqlCommand($"delete from pv where id = {id};", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();

            }
            catch (Exception B)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + B);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
            Response.Redirect("requests.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "A")
            {
                VTable.Visible = true;
                BTable.Visible = true;
            }
            if (DropDownList2.SelectedValue == "B")
            {
                VTable.Visible = false;
                BTable.Visible = true;
            }
            if (DropDownList2.SelectedValue == "V")
            {
                VTable.Visible = true;
                BTable.Visible = false;
            }
        }
    }
}
    