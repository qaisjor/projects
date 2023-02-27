using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using project_6_new_.Models;

namespace project_6_new_.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text, PhoneNumber = PhoneNumber.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                string filelocation = "";
                string fullPath = "";
                if (Image.HasFile)
                {
                    fullPath = Server.MapPath("/img/") + Image.FileName.ToString();
                    filelocation = "/img/" + Image.FileName;
                    Image.SaveAs(fullPath);

                }


                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");


                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);


                SqlConnection con = null;
                //try
                //{
                // Creating Connection  
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                // writing sql query  
                SqlCommand cm = new SqlCommand($"UPDATE AspNetUsers SET city='{City.Text}', address='{Address.Text}' , Name='{Name.Text}', gender='{Gender.Text}', imgSrc='{filelocation}' , PhoneNumber='{PhoneNumber.Text}' , emergance_contact='{Emergancy.Text}' WHERE Id='{user.Id}'", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();
                // Displaying a message  

                //}
                //catch (Exception A)
                //{
                //    Console.WriteLine("OOPs, something went wrong." + A);
                //}
                //// Closing the connection  
                //finally
                //{
                //    con.Close();
                //}

                manager.AddToRole(user.Id, DropDownList1.SelectedValue);
                Session["userId"] = user.Id.ToString();
                IdentityHelper.RedirectToReturnUrl("~/Account/Login.aspx", Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}