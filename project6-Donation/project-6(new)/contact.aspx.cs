using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Runtime.Remoting.Lifetime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project_6_new_
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            
        }

        protected void message1_Click(object sender, EventArgs e)
        {

           

          
            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);

            if (name.Value == "" && email.Value == "" && subject.Value == "" && message.Value == "")
            {
                return;
            }

            else
            {
                MailMessage mail = new MailMessage();
                mail.To.Add("nsreennedal@gmail.com");
                mail.From = new MailAddress($"{email.Value}");
                mail.Subject = subject.Value;

                mail.Body = message.Value;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("nsreennedal", "jmvcufnewgrwmaov");
                smtp.Send(mail);
                

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);
                //Response.Redirect("contact.aspx");
                name.Value = "";
                email.Value = "";
                subject.Value = "";
                message.Value = "";
                
            }




            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"fail(\"\" ,\"Please log in first\");", true);

            //using (SqlConnection connection = new SqlConnection("data source= DESKTOP-6GG09VO\\SQLEXPRESS;database=eldaryDB;Integrated security=SSPI"))
            //{
            //    connection.Open();

            //    string sql = "INSERT INTO contact (fullName,emailAddress,subject,message) VALUES (@value1, @value2, @value3, @value4)";

            //    using (SqlCommand command = new SqlCommand(sql, connection))
            //    {
            //        command.Parameters.AddWithValue("@value1", name.Value);
            //        command.Parameters.AddWithValue("@value2", email.Value);
            //        command.Parameters.AddWithValue("@value3", subject.Value);
            //        command.Parameters.AddWithValue("@value4", message.Value);
            //        command.Parameters.AddWithValue("@value5", Session["id-user"]);
            //        command.ExecuteNonQuery();
            //    }
            //    Label1.Visible = true;


            //    connection.Close();
            //    name.Value = "";
            //    email.Value = "";
            //    subject.Value = "";
            //    message.Value = "";

            //}

            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            //    "swal('Good job!', 'You clicked Success button!', 'success')", true);


        }
    }
    
}