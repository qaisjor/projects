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
    public partial class deleteCat : System.Web.UI.Page
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
                        deleteCategory();
                        Response.Redirect("category.aspx");
                    }
                    catch (Exception)
                    {

                        Response.Redirect("category.aspx");
                    }

                }

                else if (type == "edit")
                {
                    addCatInfo();
                }
            }


        }

        protected void deleteCategory()
        {
            string catID = Request.QueryString["catID"];
            //Response.Write(userid);
            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string q = $"delete from category where category_id={catID}";
            SqlCommand com = new SqlCommand(q, connect);
            connect.Open();
            com.ExecuteNonQuery();
            connect.Close();
        }

        protected void addCatInfo()
        {
            string catID = Request.QueryString["catID"];

            SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
            string q = $"select * from category where category_id={catID}";
            connect.Open();
            SqlCommand com = new SqlCommand(q, connect);
            SqlDataReader sdr = com.ExecuteReader();

            sdr.Read();

            catName.Text = sdr[1].ToString();
            catDesc.Text = sdr[3].ToString();

            image.Src = sdr[2].ToString();
            logo.Src = sdr[4].ToString();



            connect.Close();
        }
        protected void editCat_Click(object sender, EventArgs e)
        {
            string catID = Request.QueryString["catID"];
            string name = catName.Text;
            string desc = catDesc.Text;


            // FileUploadImage.SaveAs(Request.PhysicalApplicationPath);
            string imageWithFolder;
            string logoWithFolder;

            string imageName = Path.GetFileName(FileUploadImage.FileName);
            string folderPath = Server.MapPath("/img/");


            string logoName = Path.GetFileName(FileUploadLogo.FileName);


            if (FileUploadImage.HasFile)
            {
                FileUploadImage.SaveAs(folderPath + imageName);
                imageWithFolder = "/img/" + Path.GetFileName(FileUploadImage.FileName);
            }
            else
            {
                SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
                string q = $"select * from category where category_id={catID}";
                connect.Open();
                SqlCommand com = new SqlCommand(q, connect);
                SqlDataReader sdr = com.ExecuteReader();

                sdr.Read();
                imageWithFolder = sdr[2].ToString();
                connect.Close();
            }

            if (FileUploadLogo.HasFile)
            {
                FileUploadLogo.SaveAs(folderPath + logoName);
                logoWithFolder = "/img/" + Path.GetFileName(FileUploadLogo.FileName);
            }
            else
            {
                SqlConnection connect = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI ");
                string q = $"select * from category where category_id={catID}";
                connect.Open();
                SqlCommand com = new SqlCommand(q, connect);
                SqlDataReader sdr = com.ExecuteReader();

                sdr.Read();
                logoWithFolder = sdr[4].ToString();

                connect.Close();
            }

            Response.Write("old image:" + imageWithFolder);
            SqlConnection conn = new SqlConnection("data source=DESKTOP-68EIP1R\\SQLEXPRESS ; database=MobileZone ; integrated security= SSPI");
            SqlCommand command = new SqlCommand($"update  Category  set category_name = '{name}' ,category_img = '{imageWithFolder}', category_desc= '{desc}' , category_logo ='{logoWithFolder}' where category_id = {catID} ", conn);
            conn.Open();
            command.ExecuteNonQuery();



            Response.Redirect("category.aspx");
        }

        protected void goToCat_Click(object sender, EventArgs e)
        {
            Response.Redirect("category.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("category.aspx");
        }
    }
}