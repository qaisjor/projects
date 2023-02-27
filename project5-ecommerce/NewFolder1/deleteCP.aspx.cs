using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project5
{
    public partial class deleteCP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string catid = Request.QueryString["catid"];
                string type = Request.QueryString["type"];
                string product_id = Request.QueryString["product_id"];
                string protype = Request.QueryString["protype"];

                if (type == "Edit")
                {
                    proTable.Visible = false;
                    SqlConnection conn = new SqlConnection("data source= DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI");
                    SqlCommand command = new SqlCommand($"select * from category where category_id={catid} ", conn);
                    conn.Open();
                    SqlDataReader rdr = command.ExecuteReader();
                    while (rdr.Read())
                    {

                        string folderPath = Server.MapPath("~/images/");
                        TextBox1.Text = rdr[1].ToString();
                        Image1.ImageUrl = "images/" + rdr[2].ToString();
                        FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                        TextBox9.Text = rdr[3].ToString();
                        Image2.ImageUrl = "images/" + rdr[4].ToString();
                        FileUpload2.SaveAs(folderPath + Path.GetFileName(FileUpload2.FileName));
                        Session["image1"] = rdr[2].ToString();
                        Session["image2"] = rdr[4].ToString();


                    }
                    conn.Close();



                }

                if (type == "delete")
                {
                    proTable.Visible = false;
                    SqlConnection conn = new SqlConnection("data source= DESKTOP-68EIP1R\\SQLEXPRESS; database=MobileZone ; integrated security= SSPI");
                    string t = $"delete from Category where category_id={int.Parse(catid)}";
                    SqlCommand command = new SqlCommand(t, conn);
                    conn.Open();
                    command.ExecuteNonQuery();
                    conn.Close();

                    Response.Redirect("Admin.aspx");

                }

                if (protype == "Edit")
                {
                    catTable.Visible = false;
                    SqlConnection conn = new SqlConnection("data source= DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI");
                    SqlCommand command = new SqlCommand($"select * from Product where product_id={product_id} ", conn);
                    conn.Open();
                    SqlDataReader rdr = command.ExecuteReader();
                    while (rdr.Read())
                    {
                        string folderPath = Server.MapPath("~/images/");
                        TextBox3.Text = rdr[1].ToString();
                        TextBox4.Text = rdr[2].ToString();
                        Image3.ImageUrl = "images/" + rdr[3].ToString();
                        FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));


                        Image4.ImageUrl = "images/" + rdr[4].ToString();
                        FileUpload2.SaveAs(folderPath + Path.GetFileName(FileUpload2.FileName));



                        Image5.ImageUrl = "images/" + rdr[5].ToString();
                        FileUpload3.SaveAs(folderPath + Path.GetFileName(FileUpload3.FileName));


                        TextBox8.Text = rdr[6].ToString();
                        TextBox8.Text = rdr[7].ToString();

                    }
                    conn.Close();


                }
                if (protype == "delete")
                {
                    catTable.Visible = false;
                    SqlConnection conn = new SqlConnection("data source= DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI");
                    string t = $"delete from Product where product_id={product_id}";
                    SqlCommand command = new SqlCommand(t, conn);
                    conn.Open();
                    command.ExecuteNonQuery();
                    conn.Close();

                    Response.Redirect("Admin.aspx");

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/images/");

            string catid = Request.QueryString["catid"];
            SqlConnection conn = new SqlConnection("data source= DESKTOP-68EIP1R\\SQLEXPRESS  ; database=MobileZone ; integrated security= SSPI");
            SqlCommand command = new SqlCommand($"update Category set category_name='{TextBox1.Text}' ,category_img='{FileUpload1.FileName}',category_desc='{TextBox9.Text}',category_logo='{FileUpload2.FileName}'  where category_id={catid}", conn);

            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("Admin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/images/");
            //FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            //FileUpload2.SaveAs(folderPath + Path.GetFileName(FileUpload2.FileName));


            string product_id = Request.QueryString["product_id"];
            SqlConnection conn = new SqlConnection("data source= DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI");

            SqlCommand com = new SqlCommand($"update Product set product_name='{TextBox3.Text}',product_description='{TextBox4.Text}',product_img1='{FileUpload3.FileName}',product_img2='{FileUpload4.FileName}',product_img3='{FileUpload5.FileName}', price={TextBox8.Text} where product_id={product_id} ",conn);
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Admin.aspx");
        }


    }
}