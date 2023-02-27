using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string success = Request.QueryString["success"];
            //if (success == "1")
            //{
            //    Response.Write("<script>alert('Deleted Successfully')</script>");
            //}
            //else if (success == "0")
            //{
            //    Response.Write("<script>alert('Cannot Delete This Category')</script>");

            //}
            try
            {
                if (Session["userid"].ToString() != null) { }

            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }
            //add.Visible = false;
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string table = "<table class='table table-striped'> <tr><th>ID</th><th>Name</th> <th>Image</th>  <th>Descreption</th> <th>Delete</th><th>Edit</th></tr>";
            SqlCommand comand = new SqlCommand("select * from category ", connect);

            connect.Open();
            SqlDataReader sdr = comand.ExecuteReader();
            int count = 1;
            while (sdr.Read())
            {
                table += $"<tr><td>{count}</td><td>{sdr[1]}</td><td><img src='{sdr[2]}' style='width:160px; height:100px'></td><td>{sdr[3]}</td> <td><a href='deleteCat.aspx?catID={sdr[0]}&type=delete'><i class=\"fa-solid fa-trash-can\" style='color:red;'></i></a></td> <td><a href='deleteCat.aspx?catID={sdr[0]}&type=edit'><i class=\"fa-regular fa-pen-to-square\"></i></a></td> </tr>\" ";

                count++;
            }
            table += "</table>";
            Label label = new Label();
            label.Text = table;
            users.Controls.Add(label);
            sdr.Close();
            connect.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            users.Visible = false;
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string table = "<table class='table table-striped'> <tr><th>ID</th><th>Name</th> <th>Image</th>  <th>Descreption</th> <th>Logo</th></tr>";
            SqlCommand comand = new SqlCommand("insert into category values () ", connect);

            connect.Open();
            SqlDataReader sdr = comand.ExecuteReader();
            int count = 1;
            while (sdr.Read())
            {

                table += $"<tr><td>{count}</td><td>{sdr[1]}</td><td><img src='{sdr[2]}' style='width:160px; height:100px'></td><td>{sdr[3]}</td> <td><a href='deleteCat.aspx?userid={sdr[0]}'><i class=\"fa-solid fa-trash-can\" style='color:red;'></i></a></td> </tr>";
                count++;
            }
            table += "</table>";
            Label label = new Label();
            label.Text = table;
            users.Controls.Add(label);
            sdr.Close();
            connect.Close();

        }

        protected void addProduct_Click(object sender, EventArgs e)
        {
            string name = catName.Text;
            string desc = catDesc.Text;


            // FileUploadImage.SaveAs(Request.PhysicalApplicationPath);


            string imageName = Path.GetFileName(FileUploadImage.FileName);
            string folderPath = Server.MapPath("/img/");
            FileUploadImage.SaveAs(folderPath + imageName);

            string logoName = Path.GetFileName(FileUploadLogo.FileName);
            FileUploadLogo.SaveAs(folderPath + logoName);

            string imageWithFolder = "/img/" + Path.GetFileName(FileUploadImage.FileName);
            string logoWithFolder = "/img/" + Path.GetFileName(FileUploadLogo.FileName);
            SqlConnection conn = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI");
            SqlCommand command = new SqlCommand($"insert into Category (category_name ,category_img, category_desc , category_logo) values ('{name}' , '{imageWithFolder}' ,'{desc}' ,'{logoWithFolder}'  ) ", conn);
            conn.Open();
            command.ExecuteNonQuery();
            Response.Redirect("category.aspx");
        }
    }
}