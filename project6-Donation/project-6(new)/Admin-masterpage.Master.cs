using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6_new_
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            string searchkey = search.Value;
            SqlConnection conn1 = new SqlConnection("data source = DESKTOP-6GG09VO\\SQLEXPRESS; database = eldaryDB ; integrated security=SSPI");
            conn1.Open();
            SqlCommand comand2 = new SqlCommand($"select * from AspNetUsers WHERE Name LIKE '%{searchkey}%'", conn1);

            string table = "<table class='table table-striped'>" +
               /*"<tr><th>ID</th>*/"<th> Name</th> " +
               " <th>Email</th> <th>Phone</th><th>Address</th> " +
               " <th>UserName</th> <th>City</th><th>Gender</th> " +
               " <th>emergence-contact</th> " +
               "<th>Image</th>" +
               "<th>Action</th></tr>";

            SqlDataReader sdr = comand2.ExecuteReader();
            while (sdr.Read())
            {
                table += $"<tr>" +
                                   //$"<td>{sdr[0]}</td>" +
                                   $"<td>{sdr[17]}</td>" +
                                   $"<td> {sdr[1]} </td>" +
                                   $"<td>{sdr[5]}</td>" +

                                   $"<td>{sdr[14]}</td>" +
                                   $"<td>{sdr[11]}</td>" +

                                   $"<td>{sdr[12]}</td>" +
                                   $"<td>{sdr[13]}</td>" +

                                   $"<td>{sdr[16]}</td>" +
                                   //$"<td>{sdr[15]}</td>" +
                                   $"<td><img width='30px height='30px src='{sdr[15]}'/></td>" +
                                   //$"<td>{sdr[8]}</td>" +
                                   $"<td>" +
                                   $"</i></button></li>" +
                                   $"<li class='list-inline-item'>" +
                            //$"<a href='RemoveAdmin.aspx?id={sdr[0]} '><asp:Button ID='Remove' runat='server' class='btn btn-danger btn-sm rounded-0 ' type='button' data-toggle='tooltip' data-placement='top' title='Delete'><i class='fa fa-trash' ></a>" +

                            $"</i></button></li>" +
                                   $"<a href='ProfileUser.aspx?id={sdr[0]}'> View " +
                                   $"</ul>" +
                                   $"</tr>";
            }

            // Control control = this.ContentPlaceHolder1.FindControl("table1");
            PlaceHolder TextBox1 = (PlaceHolder)ContentPlaceHolder1.FindControl("PlaceHolderh");
            if (TextBox1 != null)
            {
                TextBox1.Controls.Add(new LiteralControl(table));
            }


        }
        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

    }
}