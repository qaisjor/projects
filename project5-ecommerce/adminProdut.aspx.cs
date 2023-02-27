using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class adminProdut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Session["userid"].ToString() != null) { }

                }
                catch (Exception)
                {
                    Response.Redirect("Login.aspx");
                }
                Span1.Visible = false;
                Span2.Visible = false;
                Span3.Visible = false;
                SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
                string table = "<table class='table table-striped'> <tr><th>ID</th><th>Name</th> <th>Descreption</th>  <th>Img1</th> <th>Img2</th> <th>Img3</th> <th>Price</th><th>Delete</th><th>Edit</th> </tr>";
                SqlCommand comand = new SqlCommand("select * from Product ", connect);

                connect.Open();
                SqlDataReader sdr = comand.ExecuteReader();
                int count = 1;
                while (sdr.Read())
                {
                    table += $"<tr><td>{count}</td><td>{sdr[1]}</td><td>{sdr[2]}</td> <td><img src='{sdr[3]}'></td><td><img src='{sdr[4]}'></td><td><img src='{sdr[5]}'></td> <td>{sdr[6]}</td> <td><a href='deleteProd.aspx?prodID={sdr[0]}&type=delete'><i class=\"fa-solid fa-trash-can\" style='color:red;'></i></a></td> <td><a href='deleteProd.aspx?prodID={sdr[0]}&type=edit&catID={sdr[7]}'><i class=\"fa-regular fa-pen-to-square\"></i></a></td></tr>";
                    count++;
                }
                table += "</table>";
                Label label = new Label();
                label.Text = table;
                users.Controls.Add(label);
                sdr.Close();
                connect.Close();

                fillCat();
            }
            
        }
        protected void fillCat()
        {
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            SqlCommand com = new SqlCommand("select * from category", connect);
            connect.Open();

            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(com);
            sda.Fill(dt);

            productCat.DataSource = dt;
            productCat.DataTextField = "category_name";
            productCat.DataValueField = "category_id";
            productCat.DataBind();


            connect.Close();

        }

        protected void addProduct_Click(object sender, EventArgs e)
        {
            string pName = productName.Text;
            string pPrice = productPrice.Text;
            string pDesc = productDesc.Text;
            string pCat = productCat.SelectedValue;

            //Response.Write(pCat);
            string path = Server.MapPath("/images/");
            string image1 = Path.GetFileName(FileUploadImage1.FileName);
            string image2 = Path.GetFileName(FileUploadImage2.FileName);
            string image3 = Path.GetFileName(FileUploadImage3.FileName);


            Span3.Visible = false;
            if (!(FileUploadImage1.HasFile && FileUploadImage2.HasFile && FileUploadImage3.HasFile))
            {
                if (FileUploadImage1.HasFile)
                {
                    FileUploadImage1.SaveAs(path + image1);

                }
                else
                {
                    Span1.Visible = true;
                }

                if (FileUploadImage2.HasFile)
                {
                    FileUploadImage2.SaveAs(path + image2);

                }
                else
                {
                    Span2.Visible = true;
                }

                if (FileUploadImage3.HasFile)
                {
                    FileUploadImage3.SaveAs(path + image3);

                }
                else
                {
                    Span3.Visible = true;
                }
                Response.Write(path);
            }
            else
            {

                SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
                connect.Open();
                string q = $"insert into product  values  ('{pName}' , '{pDesc}' , '/images/{image1}', '/images/{image2}', '/images/{image3}' , {pPrice} , {pCat})";

                SqlCommand com = new SqlCommand(q, connect);

                com.ExecuteNonQuery();

                connect.Close();
            }


            Response.Redirect("adminProdut.aspx");
        }

    }
}