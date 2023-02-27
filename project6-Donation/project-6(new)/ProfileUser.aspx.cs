using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6_new_
{
    public partial class ProfileUser : System.Web.UI.Page
    {
        string currentid = "";

        static dynamic image1;
        string imgSrc = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                currentid = User.Identity.GetUserId();

            }
            else
            {
                if (Context.User.IsInRole("Admin") || Request.QueryString["id"] == User.Identity.GetUserId())
                    currentid = Request.QueryString["id"];
                else
                {
                    Response.Write("wrong accsess to this web page");
                    userInfo.Visible = false;
                    userEdit.Visible = false;
                    yourProgramsDiv.Visible = false;
                    yourTasksDiv.Visible = false;
                    newTasksDiv.Visible = false;
                    return;
                }
            }
            SqlDataSource1.SelectCommand = $"SELECT AspNetUsers.Name AS beneName, AspNetUsers.PhoneNumber, pb.description AS taskDesc, pb.date, pb.admin_desc AS Admindesc, pv.id AS pvID, pb.id AS pbID, pb.program_id, programs.name AS prgName FROM pb INNER JOIN pv ON pb.program_id = pv.program_id INNER JOIN AspNetUsers ON AspNetUsers.Id = pb.user_id \r\n                INNER JOIN programs ON programs.id = pb.program_id where pb.admin_approve =1 and pb.pending = 1 and pv.program_id = pb.program_id and pv.user_id ='{User.Identity.GetUserId()}'";
            if (!IsPostBack)
            {
                userInfo.Visible = true;
                userEdit.Visible = false;
                yourProgramsDiv.Visible = false;
                yourTasksDiv.Visible = false;
                newTasksDiv.Visible = false;


            }
            //if (Request.QueryString["id"] == null)
            //{
            //    currentid = User.Identity.GetUserId();

            //}
            //else
            //{
            //    currentid = Request.QueryString["id"];
            //}

            if (!IsPostBack)
            {

                userEdit.Visible = false;
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                connection.Open();
                SqlCommand command = new SqlCommand($"select * from AspNetUsers WHERE Id='{currentid}' ", connection);
                SqlDataReader sdr = command.ExecuteReader();
                while (sdr.Read())
                {
                    Image1.ImageUrl = $"{sdr[15].ToString()}";
                    imgSrc = sdr[15].ToString();
                    //img width = '30px height='30px src = '{sdr[15]}' 
                    name.Text = sdr[17].ToString();
                    email.Text = sdr[1].ToString();
                    name1.Text = sdr[17].ToString();
                    address.Text = sdr[14].ToString();
                    city.Text = sdr[12].ToString();
                    gender.Text = sdr[13].ToString();
                    mobile.Text = sdr[5].ToString();
                    emargency.Text = sdr[16].ToString();



                }
                connection.Close();

            }
            getUserPrograms();
        }

        protected void getUserPrograms()
        {

            if (Context.User.IsInRole("Volunteer"))
            {
                SqlConnection con = null;
                try
                {
                    // Creating Connection  
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                    // writing sql query  
                    SqlCommand cm = new SqlCommand($"select pv.id, programs.name  from pv join programs on programs.id = pv.program_id where  pv.user_id = '{User.Identity.GetUserId()}' and pv.admin_approve = 1", con);
                    // Opening Connection  
                    con.Open();
                    // Executing the SQL query  
                    SqlDataReader sdr = cm.ExecuteReader();
                    // Iterating Data
                    string tableCode1 = "";

                    tableCode1 += $"<table id=\"programTable\" class=\"table table-striped\" >\r\n                       <tr>\r\n                           <th>Program Name </th>\r\n                           <th>Action </th>\r\n                           \r\n                       </tr>\r\n                   ";
                    while (sdr.Read())

                    {

                        tableCode1 += $" <tr> <td>{sdr[1]}</td>             <td><a href='#'>Delete</a></td>   </tr>";
                    }
                    tableCode1 += "</table>";
                    yourProgramsDiv.InnerHtml = tableCode1;
                }
                catch (Exception S)
                {
                    Console.WriteLine("OOPs, something went wrong.\n" + S);
                    // Label1.Text = "OOPs, something went wrong.\n" + S;
                }
                // Closing the connection  
                finally
                {
                    con.Close();
                }
            }
            else if (Context.User.IsInRole("Beneficiary"))
            {
                SqlConnection con = null;
                try
                {
                    // Creating Connection  
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                    // writing sql query  
                    SqlCommand cm = new SqlCommand($"select pb.id, programs.name  from pb join programs on programs.id = pb.program_id where  pb.user_id = '{User.Identity.GetUserId()}'", con);
                    // Opening Connection  
                    con.Open();
                    // Executing the SQL query  
                    SqlDataReader sdr = cm.ExecuteReader();
                    // Iterating Data
                    string tableCode1 = "";

                    tableCode1 += $"<table id=\"programTable\" class=\"table table-striped\" >\r\n                       <tr>\r\n                           <th>Program Name </th>\r\n                           <th>Action </th>\r\n                           \r\n                       </tr>\r\n                   ";
                    while (sdr.Read())

                    {

                        tableCode1 += $" <tr> <td>{sdr[1]}</td>             <td><a href='#'>Delete</a></td>   </tr>";
                    }
                    tableCode1 += "</table>";
                    yourProgramsDiv.InnerHtml = tableCode1;
                }
                catch (Exception S)
                {
                    Console.WriteLine("OOPs, something went wrong.\n" + S);
                    // Label1.Text = "OOPs, something went wrong.\n" + S;
                }
                // Closing the connection  
                finally
                {
                    con.Close();
                }
            }
        }

        protected void getUserTasks()
        {






        }

        protected void deleteProgram_click(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);


                SqlCommand command = new SqlCommand($"select * from AspNetUsers WHERE Id='{currentid}' ", connection);
                connection.Open();
                SqlDataReader sdr = command.ExecuteReader();
                while (sdr.Read())
                {
                    Image1.ImageUrl = $"{sdr[15].ToString()}";
                    imgSrc = sdr[15].ToString();
                    //name2.Text = sdr[17].ToString();
                    //email.Text = sdr[1].ToString();
                    //name1.Text = sdr[17].ToString();
                    //address1.Text = sdr[14].ToString();
                    //city2.Text = sdr[12].ToString();
                    //gender2.Text = sdr[13].ToString();
                    //mobile2.Text = sdr[5].ToString();
                    //emargency2.Text = sdr[16].ToString();



                }
                connection.Close();
                if (FileUpload1.HasFile)
                {


                    string folderpath = Server.MapPath("~/img/");
                    if (!Directory.Exists(folderpath))
                    {
                        Directory.CreateDirectory(folderpath);
                    }
                    FileUpload1.SaveAs(folderpath + FileUpload1.FileName);
                    Image1.ImageUrl = "img/" + FileUpload1.FileName;
                    image1 = FileUpload1.FileName;
                    imgSrc = "img/" + FileUpload1.FileName;

                }
                else
                {
                    //image1 = Session["Imagealt"];
                }





                SqlCommand command1 = new SqlCommand($"update AspNetUsers set PhoneNumber=@mobile,Name=@name,city=@city,address=@address,gender=@gender,emergance_contact=@emerg,imgSrc='{imgSrc}' where Id='{currentid}'", connection);
                connection.Open();
                command1.Parameters.AddWithValue("@mobile", mobile2.Text);
                command1.Parameters.AddWithValue("@name", name2.Text);
                command1.Parameters.AddWithValue("@city", city2.Text);
                command1.Parameters.AddWithValue("@address", address1.Text);
                command1.Parameters.AddWithValue("@gender", gender2.Text);
                command1.Parameters.AddWithValue("@emerg", emargency2.Text);
                command1.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload1.HasFile)
                {


                    string folderpath = Server.MapPath("~/img/");
                    if (!Directory.Exists(folderpath))
                    {
                        Directory.CreateDirectory(folderpath);
                    }
                    FileUpload1.SaveAs(folderpath + FileUpload1.FileName);
                    Image1.ImageUrl = "img/" + FileUpload1.FileName;
                    image1 = FileUpload1.FileName;

                }
                else
                {
                    image1 = Session["Imagealt"];
                }

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            userEdit.Visible = true;
            userInfo.Visible = false;

            yourProgramsDiv.Visible = false;
            yourTasksDiv.Visible = false;
            newTasksDiv.Visible = false;
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            connection.Open();

            SqlCommand command = new SqlCommand($"select * from AspNetUsers WHERE Id='{currentid}' ", connection);
            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                //Image1.ImageUrl = $"{sdr[15].ToString()}";
                ////img width = '30px height='30px src = '{sdr[15]}' 
                name2.Text = sdr[17].ToString();
                //email.Text = sdr[1].ToString();
                name1.Text = sdr[17].ToString();
                address1.Text = sdr[14].ToString();
                city2.Text = sdr[12].ToString();
                gender2.Text = sdr[13].ToString();
                mobile2.Text = sdr[5].ToString();
                emargency2.Text = sdr[16].ToString();



            }
            connection.Close();












        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                userEdit.Visible = true;
                Response.Redirect("ProfileUser.aspx");

                //SqlConnection connection = new SqlConnection("data source =  DESKTOP-6GG09VO\\SQLEXPRESS; database = eldaryDB  ; integrated security=SSPI");
                //connection.Open();
                //SqlCommand command = new SqlCommand($"select * from AspNetUsers WHERE Id='{2}' ", connection);
                //SqlDataReader sdr = command.ExecuteReader();
                //while (sdr.Read())
                //{
                //    Image1.ImageUrl = $"{sdr[15].ToString()}";
                //    //img width = '30px height='30px src = '{sdr[15]}' 
                //    name.Text = sdr[17].ToString();
                //    email.Text = sdr[1].ToString();
                //    name1.Text = sdr[17].ToString();
                //    address.Text = sdr[14].ToString();
                //    city.Text = sdr[12].ToString();
                //    gender.Text = sdr[13].ToString();
                //    mobile.Text = sdr[5].ToString();
                //    emargency.Text = sdr[16].ToString();



                //}
                //connection.Close();
            }
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {


            if (IsPostBack)
            {
                userEdit.Visible = true;
                Response.Redirect("ProfileUser.aspx");


            }
        }

        protected void yourPrograms_Click(object sender, EventArgs e)
        {

            userInfo.Visible = false;
            userEdit.Visible = false;
            userEdit.Visible = false;
            yourProgramsDiv.Visible = true;
            yourTasksDiv.Visible = false;


        }

        protected void yourTasks_Click(object sender, EventArgs e)
        {

            userInfo.Visible = false;
            userEdit.Visible = false;
            yourProgramsDiv.Visible = false;
            yourTasksDiv.Visible = true;
            newTasksDiv.Visible = false;
            getUserTasks();

            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                // writing sql query  
                SqlCommand cm = new SqlCommand($"SELECT tasks.id, firstname.Name AS bName, secondname.Name AS vName, programs.name AS pName, pb.description , tasks.canceled, tasks.pending_cancel FROM tasks INNER JOIN pb ON pb.id = tasks.pbID INNER JOIN AspNetUsers AS firstname ON pb.user_id = firstname.Id INNER JOIN pv ON pv.id = tasks.pvID INNER JOIN AspNetUsers AS secondname ON secondname.Id = pv.user_id INNER JOIN programs ON programs.id = tasks.programaID where firstname.Id = '{User.Identity.GetUserId()}' or secondname.Id = '{User.Identity.GetUserId()}';", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                SqlDataReader sdr = cm.ExecuteReader();
                // Iterating Data
                string tableCode1 = "";

                tableCode1 += $"<table id=\"programTable\" class=\"table table-striped\" >\r\n    <tr>\r\n   <th>Volunteer Name</th>\r\n   <th>Beneficiary</th>\r\n   <th>Program Name</th>\r\n <th>Description</th>\r\n   <th>Action</th>   </tr>\r\n";
                while (sdr.Read())

                {
                    string station = "";
                    if (Convert.ToBoolean(sdr[5]))
                    {
                        station = "Ended";
                    }
                    else if (Convert.ToBoolean(sdr[6]))
                    {
                        station = "pending...";
                    }
                    else
                    {
                        station = $"<a href='deleteProgram.aspx?id={sdr[0]}'>End</a>";
                    }
                    tableCode1 += $" <tr> <td>{sdr[2]}</td> <td>{sdr[1]}</td> <td>{sdr[3]}</td>  <td>{sdr[4]}</td>            <td> {station}  </td>   </tr>";
                }
                tableCode1 += "</table>";
                yourTasksDiv.InnerHtml = tableCode1;
            }
            catch (Exception S)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + S);
                // Label1.Text = "OOPs, something went wrong.\n" + S;
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        }

        protected void NewTasks_Click(object sender, EventArgs e)
        {

            userInfo.Visible = false;
            userEdit.Visible = false;
            yourProgramsDiv.Visible = false;
            yourTasksDiv.Visible = false;
            newTasksDiv.Visible = true;

        }

        protected void btnAccept_Click(object sender, System.EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string[] args = btn.CommandArgument.Split(';');

            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            string q = $"insert into tasks(pbID , pvID , programaID , canceled , done ) values({args[0]} , {args[1]} , {args[2]} , 0, 0)";
            SqlCommand com = new SqlCommand(q, con);
            com.ExecuteNonQuery();

            con.Close();

            con.Open();
            string query = $"update pb set pending = 0 where id = {args[0]}";
            SqlCommand com2 = new SqlCommand(query, con);
            com2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("ProfileUser.aspx");
        }

        protected void Addfeedback_Click(object sender, EventArgs e)
        {



            string strcon = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            string query = $"select Name,imgSrc from AspNetUsers where Id='{User.Identity.GetUserId()}'";
            SqlCommand com = new SqlCommand(query, con);

            SqlDataReader read = com.ExecuteReader();

            read.Read();
            string name = read[0].ToString();
            string img = read[1].ToString();
            con.Close();

            string comment = feedback.Text;
            if (comment == "")
            {
                return;
            }
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
               "swal('Good job!', 'thanks for your feedback ')", true);

            string feedbackk = $"insert into feedback (comment,pic,volanteername) values('{comment}','{img}','{name}')";
            con.Open();
            SqlCommand comm = new SqlCommand(feedbackk, con);

            comm.ExecuteNonQuery();
            con.Close();

            feedback.Text = "";
        }
    }
}