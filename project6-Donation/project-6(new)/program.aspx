<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="program.aspx.cs" Inherits="project_6_new_.program" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        .start {
    color: black;
    background-color: #F0E0D6;
    padding:0 15px;
    border:none;
    font-weight:bold;
    font-size:20px;

}
        * {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}
.start {
    color: black;
    background-color: #F0E0D6;
    padding:15px;
}

.class3 {
    background-image: url("img/class3.jpg");
}

.class1 {
    background-image: url("img/class1.jpg");
}

.class2 {
    background-image: url("img/class2.jpg");
}

.class4 {
    background-image: url("img/class4.jpg");
}

.Slide {
    font-size: 60px;
    font-weight: bold;
    color: black;
    text-align: center;
    align-items: center;
    display: flex;
    justify-content: center;
    background-size: cover;
    background-repeat: no-repeat;
    height: 80vh;
    width: 100%;
    background-position: center;
    position: relative;
}

    .Slide i {
        color: white;
    }

.left {
  position:absolute;
  right:0;
  top:50%;
}

.right {
    position: absolute;
  left:0;
    top: 50%;
}

.volunt{

    display:flex;
    justify-content:center;

}
.volunt p{

    max-width:100%;
    font-weight:bold;
    line-height:1.8;
    margin:30px  150px;
      


}

/*.left {
    display: flex;
    justify-content: flex-end;
    font-size: 50px;
    color: red;
}*/

.cardd{

    display:flex;

   margin-bottom:100px;
   box-shadow:5px 5px 10px gray;
   justify-content:space-between;
   width:70%;
   margin:0 auto;
   margin-top:20px;
   border-radius:10px;
   overflow:hidden;

}
  .cardd .desc {
      padding:20px 20px 20px 0px ;
         }
    .cardd div {
     width:47%;
    }
 .cardd div input {
   border-radius:10px;
   background-color:darkred;
   color:white;
         }
 .cardd div input:hover {
     opacity:.8;         
         }
img {
 width:100%;
 height:100%;
}
.ourprograms h1{
    margin:50px;
    text-align:center;
    text-transform:uppercase;
  
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    transition: all 0.4s;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
}

.container {
    margin-left: 5%;
    margin-right: 5%;
}


/* Home section */

.home {
    width: 100%;
    height: 100vh;
    background-color: #ddd;
}

/* Medai qurey section */

@media screen and (min-width: 768px) and (max-width: 1024px) {

    .container {
        margin: 0;
    }
}




@media screen and (max-width:768px) {

    .container {
        margin: 0;
    }

    .nav div.logo {
        margin-left: 15px;
    }

    .nav div.main_list {
        width: 100%;
        margin-top: 65px;
        height: 0px;
        overflow: hidden;
    }

    .nav div.show_list {
        height: 200px;
    }

    .nav div.main_list ul {
        flex-direction: column;
        width: 100%;
        height: 200px;
        top: 80px;
        right: 0;
        left: 0;
    }

        .nav div.main_list ul li {
            width: 100%;
            height: 40px;
            background-color: rgba(0,0,255,0.8);
        }

            .nav div.main_list ul li a {
                text-align: center;
                line-height: 40px;
                width: 100%;
                height: 40px;
                display: table;
            }

    .nav div.media_button {
        display: block;
    }
}

 .volunt {
     text-align:center;
      background-color:#F1F0EC;
     padding:20px ;
     width: 70% ;
     margin:0 auto;
     border-radius:20px;
     margin-top:30px;
     font-family:Arial;
     font-size:30px;
     font-weight:normal;
     
        }
        
    </style>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Slide class1" id="Slide">
               
            <div class="right">
                    <i class="fa-solid fa-chevron-left" id="leftt"></i>
                </div>
         <div class="left">
                    <i class="fa-solid fa-chevron-right" id="rightt"></i>
                </div>
          
<%--                    <p class="KNOWLEDGE" id="KNOWLEDGE">EXPLORE THE WORLDS KNOWLEDGE</p>
                    <p class="loyal" style="display: none">There is no friend as loyal as a book.</p>
                    <p class="reader" style="display: none">A reader lives a thousand lives before he dies.</p>--%>
             

                </div>
    <div class="volunt" >

            
               Volunteering with Cultivate is a great way to engage your community. With a wide variety of volunteer opportunitiesyou can find 
               something that suits your passions, skills, or schedule.
                Volunteer opportunities are currently available in Broomfield and Boulder Counties.
                Scroll down to learn more about our programs and volunteer opportunities. Then submit your volunteer application (Google Form) to get started!
            


    </div>
    <div class="">
      
    </div>



      <script src="programs.js"></script>
    <div class="ourprograms">
    <h1>our programs</h1>
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand1">
    <ItemTemplate>
        <div class="cardd">
            <div class="imgg" >
                <img src="<%#Eval("imgsrc")%>" />
            </div>
            <div class="desc">
                <h2><%# Eval("name") %></h2>
                <p><%#Eval("descreption") %></p>
                <asp:Button ID="Button1"  runat="server" Text="Get started"  CssClass="start"/>
                <%--CommandArgument="<%#Eval("id") %>"--%>
            </div>


        </div>


    </ItemTemplate>

</asp:Repeater>
        <script src="programjava.js"></script>
        </div>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eldaryDBConnectionString %>" SelectCommand="SELECT * FROM [programs]"></asp:SqlDataSource>

</asp:Content>
