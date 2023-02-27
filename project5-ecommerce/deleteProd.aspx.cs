using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class deleteProd : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["userid"].ToString() != null) { }

            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {

                string type = Request.QueryString["type"];

                if (type == "delete")
                {
                    try
                    {
                        deleteProduct();
                        Response.Redirect("adminProdut.aspx");
                    }
                    catch (Exception ex)
                    {

                        Response.Redirect("adminProdut.aspx");
                    }

                }

                else if (type == "edit")
                {
                    editProdInfo();
                }
            }


        }

        protected void deleteProduct()
        {
            string prodID = Request.QueryString["prodID"];
            //Response.Write(userid);
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string q = $"delete from product where product_id={prodID}";
            SqlCommand com = new SqlCommand(q, connect);
            connect.Open();
            com.ExecuteNonQuery();
            connect.Close();
        }
        protected void fillCat()
        {
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            SqlCommand com = new SqlCommand("select * from category", connect);
            connect.Open();

            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(com);
            sda.Fill(dt);

            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "category_name";
            DropDownList1.DataValueField = "category_id";
            DropDownList1.DataBind();


            connect.Close();

        }
        protected void editProdInfo()
        {
            string prodID = Request.QueryString["prodID"];
            string catID = Request.QueryString["catID"];
            string name = productName.Text;
            string desc = productDesc.Text;

            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string q = $"select * from product where product_id={prodID}";
            connect.Open();
            SqlCommand com = new SqlCommand(q, connect);
            SqlDataReader sdr = com.ExecuteReader();

            sdr.Read();

            productName.Text = sdr[1].ToString();
            productDesc.Text = sdr[2].ToString();
            productPrice.Text = sdr[6].ToString();
            image1.Src = sdr[3].ToString();
            image2.Src = sdr[4].ToString();
            image3.Src= sdr[5].ToString();

            //image.Src = sdr[2].ToString();
            //logo.Src = sdr[4].ToString();

            fillCat();

            connect.Close();
        }
        protected void editProduct_Click(object sender, EventArgs e)
        {
            int prodID = int.Parse(Request.QueryString["prodID"]);
            int catID =int.Parse(Request.QueryString["catID"]);
            string name = productName.Text;
            string desc = productDesc.Text;
            decimal price = Convert.ToDecimal(productPrice.Text);



            // FileUploadImage.SaveAs(Request.PhysicalApplicationPath);
            string imageWithFolder1;
            string imageWithFolder2;
            string imageWithFolder3;

            string imageName1 = Path.GetFileName(FileUploadImage1.FileName);
            string imageName2 = Path.GetFileName(FileUploadImage2.FileName);
            string imageName3 = Path.GetFileName(FileUploadImage3.FileName);

            string folderPath = Server.MapPath("/images/");




            if (FileUploadImage1.HasFile)
            {
                FileUploadImage1.SaveAs(folderPath + imageName1);
                imageWithFolder1 = "/images/" + Path.GetFileName(FileUploadImage1.FileName);
            }
            else
            {
                SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
                string q = $"select * from product where product_id={prodID}";
                connect.Open();
                SqlCommand com = new SqlCommand(q, connect);
                SqlDataReader sdr = com.ExecuteReader();

                sdr.Read();
                imageWithFolder1 = sdr[3].ToString();
                connect.Close();
            }
            if (FileUploadImage2.HasFile)
            {
                FileUploadImage2.SaveAs(folderPath + imageName2);
                imageWithFolder2 = "/images/" + Path.GetFileName(FileUploadImage2.FileName);
            }
            else
            {
                SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
                string q = $"select * from product where product_id={prodID}";
                connect.Open();
                SqlCommand com = new SqlCommand(q, connect);
                SqlDataReader sdr = com.ExecuteReader();

                sdr.Read();
                imageWithFolder2 = sdr[4].ToString();
                connect.Close();
            }
            if (FileUploadImage3.HasFile)
            {
                FileUploadImage3.SaveAs(folderPath + imageName3);
                imageWithFolder3 = "/images/" + Path.GetFileName(FileUploadImage3.FileName);
            }
            else
            {
                SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
                string q = $"select * from product where product_id={prodID}";
                connect.Open();
                SqlCommand com = new SqlCommand(q, connect);
                SqlDataReader sdr = com.ExecuteReader();
                sdr.Read();
                imageWithFolder3 = sdr[5].ToString();
                connect.Close();
            }



            SqlConnection conn = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI");
            SqlCommand command = new SqlCommand($"update  Product  set product_name ='{name}' , product_description='{desc}' , product_img1='{imageWithFolder1}',product_img2 ='{imageWithFolder2}',product_img3= '{imageWithFolder3}', price={price}, category_id={catID} where product_id={prodID}", conn);

            conn.Open();
            command.ExecuteNonQuery();



            Response.Redirect("adminProdut.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminProdut.aspx");
        }
    }



}