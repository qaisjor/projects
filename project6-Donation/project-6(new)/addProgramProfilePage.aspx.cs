using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project_6_new_
{
    public partial class addProgramProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                ColorList.SelectedValue= Request.QueryString["id"].ToString();
            }
            if (Context.User.IsInRole("Volunteer"))
            {
                firstDiv.Style.Add("display", "block");
                //Button2.Attributes.Remove("class");
            }
            else if (Context.User.IsInRole("Beneficiary"))
            {
                secondDiv.Style.Add("display", "block");
                //Button2.Attributes.Remove("class");
            }
            if (Request.QueryString["res"] != null)
            {
                if (!IsPostBack)
                {
                    //Label1.Text = Request.QueryString["res"];
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
                 $"swal('', '{Request.QueryString["res"]}')", true);
                    // Response.Redirect("HomePage.aspx");
                }

            }
            

            SqlConnection con = null;
            try
            {
                // Creating Connection  

                con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                // writing sql query  
                SqlCommand cm = new SqlCommand($"Select * from programs where id = {ColorList.SelectedValue}", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                SqlDataReader sdr = cm.ExecuteReader();
                // Iterating Data  
                while (sdr.Read())
                {
                    imgV.Src = $"{sdr[3]}";
                    imgD.Src = $"{sdr[3]}";
                    programNameV.InnerHtml = $"{sdr[1]}";
                    programNameD.InnerHtml = $"{sdr[1]}";
                    programDesV.InnerHtml = $"{sdr[2]}";
                    programDesD.InnerHtml = $"{sdr[2]}";

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



            //Label1.Text += User.Identity.GetUserId(); //get id for logedIn user
            //Label1.Text += User.Identity.Name;        //get name for logedIN user


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Context.User.IsInRole("Volunteer"))
            {
                firstDiv.Style.Add("display", "block");
                //Button2.Attributes.Remove("class");
            }
            else if (Context.User.IsInRole("Beneficiary"))
            {
                secondDiv.Style.Add("display", "block");
                //Button2.Attributes.Remove("class");
            }
            Label1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
            Response.Redirect(String.Format("AddProgramBehind.aspx?id={0}&comment={1}", ColorList.SelectedValue, TextArea1.Value));

            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            //    "swal('Good job!', 'You clicked Success button!', 'success')", true);
            //if (comment == "")
            //{
            //    return;
            //}


          
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect(String.Format("AddProgramBehind.aspx?id={0}", ColorList.SelectedValue));

        }

        protected void ColorList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                // Creating Connection  

                con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                // writing sql query  
                SqlCommand cm = new SqlCommand($"Select * from programs where id = {ColorList.SelectedValue}", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                SqlDataReader sdr = cm.ExecuteReader();
                // Iterating Data  
                while (sdr.Read())
                {
                    imgV.Src = $"{sdr[3]}";
                    imgD.Src = $"{sdr[3]}";
                    programNameV.InnerHtml = $"{sdr[1]}";
                    programNameD.InnerHtml = $"{sdr[1]}";
                    programDesV.InnerHtml = $"{sdr[2]}";
                    programDesD.InnerHtml = $"{sdr[2]}";

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
    }
}
    