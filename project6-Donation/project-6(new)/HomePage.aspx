<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="project_6_new_.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/cd46a65f5c.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css%22/%3E
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
      <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i&display=swap" rel="stylesheet">



      <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="new/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="new/css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="new/css/style.css">
    <style>
 *{
           margin: 0px;
padding:0px;
box-sizing: border-box;
        }
        img{
         width:100%;
         height: 100%;
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
    position: relative;
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
/*.class1::after {
                content:'';
                position:absolute;
                width:100%;
                height:100%;
                background-color:black;
                opacity:.2;
                
            }*/
            /*.Navbar {
             width: 100%;
             position:fixed;
             top:0px;
             margin:0 auto;
             left:0px;*/
            /* background-color:white;
             opacity:0.2;*/
             /*}

    .Navbar .both {*/
        /*display: flex;*/
/*        gap: 20px;
*/        /*align-items: center;
        justify-content: space-between;*/
        /*width: 90%;
        margin: 0 auto;
    }

        .Navbar .both i {
            display: none;
            color: white;
        }

       

        .Navbar .both .nav ul {
            display: flex;
            gap:35px;
        }

            .Navbar .both .nav ul li a {
                text-decoration: none;
                color: white;
                transition: 0.4s;
                font-size: 17px;
            }

#items:hover {
    border-radius: 15px;
    font-size: 17px;
    color: darkred;
}
#login:hover {
    border-radius: 15px;
    font-size: 20px;
    color: #E61F57;
}*/
@media (max-width:768px) {
    .Navbar .both .nav {
        display: none;
    }

    .Navbar .both i {
        display: block;
    }
}
.text{
position:absolute;


}
.button{

    height:50px;
    border-radius:15px;
    border:none;
    font-size:17px;
/*    font-weight:bold;
*/    background-color:darkred;
    color:#F2F0F1;
   padding :2px 15px;
   

}
/* Quizez */
.quizez .container .all{
    display: flex;
justify-content: space-between;
flex-wrap:wrap;


    
}
.quizez .container .all .quiz1{
background-color: #e3e3e3;
border: black 2px solid;
border-radius: 20px;
width:40%;
height: 200px;
padding: 10px;
}

.box:hover {
transform: scale(101%);

}


.quizez .container .quiz{
display: flex;
justify-content: space-around;
gap:50px;
flex-wrap:wrap;

}
.quiz .box{
width: 45%;
height:100%;
border-radius: 10px;
overflow: hidden;
box-shadow: 5px 5px 10px  #BBD8DE;
}
.quiz .box div:first-child{
height: 70%;
align-items: center;
}

.quiz .box div:last-child{
text-align: center;
margin-bottom: 20px;
}
/*
.container{
    width:90%;
}*/
.achievements {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

    .achievements .work {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 30%;
    }

        .achievements .work i {
            width: fit-content;
            font-size: 50px;
            padding: 10px;
        }

        .achievements .work .work-heading {
            font-size: 20px;
            color: #333333;
            text-transform: uppercase;
            margin: 10px 0;
        }

        .achievements .work .work-text {
            font-size: 15px;
            color: #585858;
            margin: 10px 0;
        }
        #all {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            align-content: center;
            gap: 50px;
        }
        .cardy{
            display:flex;
            justify-content:space-between;



        }
        .boxes{
            width:200px;

        }
              .start {
    color: white;
    background-color: darkred;
    padding:12px;
    border:none;
    font-weight:bold;
    font-size:15px;
    border-radius:8px;

}
              .work-text{
                  text-align:center;

              }
              .cardd1{

    display:flex;

   margin-bottom:100px;
   box-shadow:5px 5px 10px gray;
   justify-content:space-between;
   width:90%;
   margin:0 auto;
   margin-top:20px;
   border-radius:10px;
   overflow:hidden;

}
  .cardd1 .desc1 {
      padding:20px 20px 20px 0px ;
         }
    .cardd1 div {
     width:47%;
    }
 .cardd1 div input {
   border-radius:10px;
   background-color:darkred;
   color:white;
         }
 .cardd1 div input:hover {
     opacity:.8;         
         }
imgg1 {
 width:100%;
 height:100%;
}
              .card1{
                  display:flex;
                  border-radius:10px;
                  gap:10px;
                  overflow:hidden;
                  box-shadow:6px 6px 10px lightgray, -6px -6px 10px lightgray;
/**/                  height:269px;
                  margin-bottom:10px;
          /*        background-color:#F0EAE7;*/
                  padding:15px;
                  border: 1px solid lightgray;
                  margin:15px 10px ;
                  width:354px;


              }
            .card1 div{
                width:50%;
            }

                .card1 .txt h3 {
                 margin-bottom:15px;

                }
                .imgg img{
                    border-radius:50%;
                }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Slide class1" id="Slide">
               
         <div style="margin-top:310px; z-index:20">


                 <h1 style="color:white;z-index:20; "></h1>
                 <p style="font-size:25px; color:white; font-weight:bolder; z-index:20;">  <br />  <br /> "The Best Way to Find Yourself is to Lose Yourself in the Services of Others."    </p>
               <div>
               <asp:Button ID="Button1" runat="server" Text="Donate Now"  CssClass="button" OnClick="Button1_Click"/>
               <asp:Button ID="Button2" runat="server" Text="Voulnteer Now"  CssClass="button" OnClick="Button2_Click"/>
           </div>
            </div>
     <%--   <asp:Button ID="Button1" runat="server" Text="Button" class="button"/>
                <asp:Button ID="Button2" runat="server" Text="Button" class="button" />--%>
            <div class="right">
                    <i class="fa-solid fa-chevron-left" id="leftt"></i>
                </div>
         <div class="left">
                    <i class="fa-solid fa-chevron-right" id="rightt"></i>
                </div>
          

             

                </div>

<br /><br />
    
    <br /><br />
           
        <%--Description--%>
        <div style="text-align:center;">
             <div><h1 style="font-weight:bold"> JOIN OUR COMMUNITY</h1></div><br />
            <div class="container"><p style="font-size:20px;">       
               Volunteering with Cultivate is a great way to engage your community. With a wide variety of volunteer opportunitiesyou can find 
               something that suits your passions, skills, or schedule.
                Volunteer opportunities are currently available in Broomfield and Boulder Counties.
                Scroll down to learn more about our programs and volunteer opportunities. Then submit your volunteer application (Google Form) to get started!</p></div>
        </div>
        <br /><br /><br />

<%--        Cards--%>
                        <h1 id="prog" style="text-transform:uppercase;text-align:center;font-weight:bold">OUR PROGRAMS</h1>
    <br />
    <br />
        
        <div class="quizez" id="quizez">
    <div class="container"><h2> </h2>
        <div class="quiz"> <!--display=flix -->
            


            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="Repeater2_ItemCommand">
                <ItemTemplate>

            <div class="cardd1">
                <div class="imgg1" ><img src="<%#Eval("imgsrc")%>"></div><br>
                <div class="desc1" ><h3 style="font-weight:bold"><%# Eval("name") %></h3>
                    <p><%#Eval("descreption") %></p>
                        <asp:Button ID="Button1" CommandArgument='<%# Eval("id") %>'  runat="server" Text="Get started"  CssClass="start"/>
                </div>
            </div>
                    </ItemTemplate>
                </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:eldaryDBConnectionString3 %>" SelectCommand="SELECT * FROM [programs]"></asp:SqlDataSource>
 <%--           <div class="box">

                <div><img src="img/Footer1.jpg"></div><br>
                <div ><h1>Volunteer</h1>
                    <p> Donate your time and ensure that seniors stay connected within their community.</p>
                </div>
            </div>
            <div class="box">
                <div><img src="img/Footer5.jpg"></div><br>
                <div ><h1>Subscribe</h1>
                    <p>Subscribe to our newsletter and stay up-to-date on the latest news.</p>
                </div>
            </div>--%>
        </div>
    </div>
</div>
            <%--Care--%>
    <br /> <br /> <br /> <br /><br /><br />
    <h1 style="text-align:center;text-transform:uppercase;font-weight:bold">Why Us?</h1>
    <br />
     <div class="container">
      <div class="achievements">
      <div class="work" >
     <i class="fa-solid fa-heart"  style="color:darkred;"></i>
      <p class="work-heading">Care</p>
      <p class="work-text">At Cultivate we believe in living life generously through volunteerism.</p>
      </div>
      <div class="work">
   <i class="fa-regular fa-comment" style="color:darkred"></i>
          <p class="work-heading">Connect</p>
      <p class="work-text" >We strive to build trust in every interaction and relationship.</p>
      </div>
      <div class="work">
<i class="fa-solid fa-earth-africa" style="color:darkred"></i>
      <p class="work-heading">Community</p>
      <p class="work-text">We believe communities flourish when we treat everyone like family.</p>
    </div>
  </div>



    

          </div>
    <br /><br />
         <%--comment--%>
  

  <div class="">
    
    <div class="container ">
      <div class="row mb-5 ">
        <div class="col-12 text-center">
        <div><h1 style="font-weight:bold;text-transform:uppercase">Volunteer's FeedBack</h1></div><br />
        </div>
      </div>
    </div>


    <div class="site-section bg-left-half mb-5">
      <div class="container owl-2-style">      

        <div class="owl-carousel owl-2">
              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>


            <div class="card1" style="">
                <div class="imgg">
  <img src="<%#Eval("pic")%>" class="card-img-top" alt="..." style="">


                </div>
                   
  <div class="txt">
        <h5 style="font-weight:bold;text-transform:uppercase"><%#Eval("volanteername")%></h5>
    <p style="overflow:hidden; font-size:12px;" class=""><%#Eval("comment")%></p>
  </div>
</div>



        <%--  <div class="media-29101">





            <img src="<%#Eval("pic")%>"  alt="Image" class="img-fluid">
            <h3><a href="#"><%#Eval("volanteername")%></a></h3>
              <div class="card-body">
  <p class="card-text"  ><%#Eval("comment")%></p>
              </div>
          
          </div>--%>
             </ItemTemplate>

      </asp:Repeater>
  <%--        <div class="media-29101">
            <img src="<%#Eval("pic")%>" alt="Image" class="img-fluid">
            <h3><a href="#"><%#Eval("volanteername")%></a></h3>
            <p><%#Eval("comment")%></p>
          </div>--%>

   <%--       <div class="media-29101">
            <img src="images/person_3_sm.jpg" alt="Image" class="img-fluid">
            <h3><a href="#">Devin Bridges</a></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi, dolorem iusto officia! Quis tenetur maxime, laboriosam saepe, voluptate necessitatibus tempora!</p>
          </div>

          <div class="media-29101">
            <img src="images/person_1_sm.jpg" alt="Image" class="img-fluid">
            <h3><a href="#">Joshua Jones</a></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi, dolorem iusto officia! Quis tenetur maxime, laboriosam saepe, voluptate necessitatibus tempora!</p>
          </div>

          <div class="media-29101">
            <img src="images/person_2_sm.jpg" alt="Image" class="img-fluid">
            <h3><a href="#">Kellie Kenney</a></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi, dolorem iusto officia! Quis tenetur maxime, laboriosam saepe, voluptate necessitatibus tempora!</p>
          </div>

          <div class="media-29101">
            <img src="images/person_3_sm.jpg" alt="Image" class="img-fluid">
            <h3><a href="#">Will Reagan</a></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi, dolorem iusto officia! Quis tenetur maxime, laboriosam saepe, voluptate necessitatibus tempora!</p>
          </div>--%>

        </div>

      </div>
    </div>
     
  





    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eldaryDBConnectionString3 %>" SelectCommand="SELECT * FROM [feedback] where [admin_approve]=1"></asp:SqlDataSource>





    <script>
        const right = document.getElementById('rightt');
        const left = document.getElementById('leftt');
        const logo = document.getElementById('logo')

        const KNOWLEDGE = document.getElementById('KNOWLEDGE');

        const slide = document.getElementById('Slide')
        let x = 1;
        let interval = 4000
        setInterval(myTimer, interval);

        let y = 0;



        let array = ["class1", "class2", "class3", "class4"]
        function myTimer() {


            slide.classList.remove(array[x - 1])
            if (x > 3) {
                x = 0;
            }
            slide.classList.add(array[x])

            clearInterval(interval);




            //y++;
            //if (y > 2) {
            //    y = 0;
            //}
            //if (y == 0) {
            //    KNOWLEDGE.innerHTML = "There is no friend as loyal as a book.";

            //}

            //if (y == 1) {
            //    KNOWLEDGE.innerHTML = "EXPLORE THE WORLDS KNOWLEDGE....";

            //}

            //if (y == 2) {
            //    KNOWLEDGE.innerHTML = "A reader lives a thousand lives before he dies..";

            //} 

            x++;

        }



        const pic = function () {


            slide.classList.remove(array[x - 1])
            if (x > 3) {
                x = 0;
            }
            slide.classList.add(array[x])






            x++;
            console.log(y)



        }


        const picbefore = function () {
            if (x < 0) {
                x = 3
                slide.classList.remove(array[0])
            } else {
                slide.classList.remove(array[x + 1])
            }
            slide.classList.add(array[x])

            x--;




        }

        right.addEventListener('click', pic);
        left.addEventListener('click', picbefore)



        setInterval(tim, 2000);





        function tim() {





            clearInterval(interval);




            y++;
            if (y > 2) {
                y = 0;
            }
            if (y == 0) {
                KNOWLEDGE.innerHTML = "There is no friend as loyal as a book.";

            }

            if (y == 1) {
                KNOWLEDGE.innerHTML = "EXPLORE THE WORLDS KNOWLEDGE....";

            }

            if (y == 2) {
                KNOWLEDGE.innerHTML = "A reader lives a thousand lives before he dies..";

            }



        }


    </script>

    <script src="new/js/jquery-3.3.1.min.js"></script>
    <script src="new/js/popper.min.js"></script>
    <script src="new/js/bootstrap.min.js"></script>
    <script src="new/js/owl.carousel.min.js"></script>
    <script src="new/js/main.js"></script>

    </div>
</asp:Content>
