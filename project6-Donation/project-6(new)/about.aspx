<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="project_6_new_.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="old/css/owl.carousel.min.css">
    <link rel="stylesheet" href="old/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css%22%3E" />
        <link rel="stylesheet" href="old/css/animate.css">
        <link rel="stylesheet" href="old/css/style.css">
    
    <style>

         .cir{
            font-size:10px;
            color:black;


             margin-top:30px;


 
           
        }
.all{
    display:flex;
    justify-content:space-around;
 
    margin-left:15px;
    margin-right:15px;
        flex-wrap:wrap;
 /*       background-color:#F2F0F1;*/
        border-radius:5px;
        margin-top:50px;
     padding:50px;
       



}
.rightt{
   
}
.sup{
    border-radius:10px;
   
}

.sup:hover{

}
.our{

    font-weight:bold;
    font-size:35px;
   
    text-transform:uppercase;
   




}
.team{

    margin-top:30px;
    width:400px;
    line-height:1.7;
  
  
    
}

.prog { 
   display:flex;
   justify-content:space-around;
   flex-wrap:wrap;

   
}
.card{

  background-color:#F2F0F1;
    border-radius:10px;
    padding:20px;
    width:300px;
    margin-top:20px;
  

}


.ourprogram{

    font-weight:bold;
    font-size:40px;
    text-align:center;
    align-items:center;
    margin:50px 0;


}
.first{
    text-align:center;
    align-items:center;
   display:flex;
   justify-content:center;
   border-radius:5px;
   margin-left:30px
}
.first:hover{

    opacity:.7;
}

        .parag {
            border-radius: 10px;
            padding: 2px;
        }
        .two{
          
        }
        .first:hover{
            background: #e1e1e1;
    box-shadow: 0 0 0 2px #d0d0d0;
        }



.flip-card {
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
 
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #F2F0F1;
  color: black;
  transform: rotateY(180deg);
   overflow-y:scroll;
}


.flip-card-back h1{
    font-weight:bold;
    font-size:30px;
}



        .start {
    color: black;
    background-color: #F0E0D6;
    padding:0 15px;
    border:none;
    font-weight:bold;
    font-size:20px;
    border-radius:5px;
    
}


      .flip-card{

            position:relative;

        }
     

        .moredeatail{

            position:absolute;
       bottom:10px;
       left:40%;
     font-weight:bold;
     text-transform:uppercase;
    
     /*  opacity:.7;*/
       font-size:18px;
     
   

        }

            .moredeatail::after{
               content:"";
               position:absolute;
               left:-103px;
               bottom:-10px;
              height:50px;
              width:300px;
              background-color:white;
              opacity:.3;
              

           }
        .ourprogram{
            text-transform:uppercase;

        }
        #slider {
  width: 100%;
  height: 100px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.box {
  width: 100px;
  height: 100px;
  background-color: red;
  margin: 0 10px;
  transform: translateX(0);
  transition: transform 0.2s ease-in-out;
}

    @media(min-device-width:800px) {

     .all{
           margin-top:50px;
           margin-left:70px;
           margin-right:70px;
     }
     .sup{
         width:500px;
     }


}
    @media(min-device-width:0px) and (max-device-width:600px){

        .team{

         width:250px;
        
        }
        .sup{
            width:200px;
        }
        .card{
            margin-top:30px;
        }
        .all{
           width:290px;
          margin:50px 0 50px 0;
        }
      
 }

       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="all">
        <div class="parag">

       
        <p class="our">
          About us
        </p>
            <div class="two">
                <div class="ic">

                     


                </div>

                
           <p class="team">
  
               Our website is dedicated to providing resources and information for seniors and their caregivers.
              </p>

                <p class="team">
            
             
               We are constantly updating and adding new information and resources to our site, so be sure to check back often to see what's new.</p>
      
             <p class="team">
         
             
               We are constantly updating and adding new information and resources to our site, so be sure to check back often to see what's new.</p>


            </div>




           </div>





        <div class="rightt">

            <img src="img/Voulanteer.jpg" width="400" class="sup" />
        </div>
     </div>
 <%--      <p class="ourprogram">our stories  ftco-section</p>--%>



    	<section class="">
			<div class="container" >
				<div class="row">
					<div class="col-md-12 text-center">
					<%--	<h2 class="heading-section mb-5">our stories</h2>--%>
                         <p style="text-align:center;font-weight:bold;font-size:35px;text-transform:uppercase" >Our Voulunteers sayings</p>
					</div>
					<div class="col-md-12">
						<div class="featured-carousel owl-carousel">
							<div class="item">
								<div class="row justify-content-center">
									<div class="col-md-11">
										<div class="testimony-wrap d-md-flex">
											<div class="img" style="background-image: url(img/moath.jfif);"></div>
											<div class="text text-center p-4 py-xl-5 px-xl-5 d-flex align-items-center" style="background-color:#F0EAE7;">
												<div class="desc w-100" >
													<p class="h3 mb-5" >"The Best Way to Find Yourself is to Lose Yourself in the Services of Others."</p>
													<div class="pt-4">
														<p class="name mb-0">&mdash; Moath</p>
														<span class="position">Volunteer</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="row justify-content-center">
									<div class="col-md-11">
										<div class="testimony-wrap d-md-flex " >
											<div class="img" style="background-image: url(img/yazeed.jfif);"></div>
											<div class="text text-center p-4 py-xl-5 px-xl-5 d-flex align-items-center" style="background-color:#F0EAE7;">
												<div class="desc w-100">
													<p class="h3 mb-5" >"Volunteers don’t get paid, not because they’re worthless, but because they’re priceless."</p>
													<div class="pt-4">
														<p class="name mb-0">&mdash; Yazeed</p>
														<span class="position">Volunteer</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="row justify-content-center">
									<div class="col-md-11">
										<div class="testimony-wrap d-md-flex">
											<div class="img" style="background-image: url(img/mayyas.jfif);"></div>
											<div class="text text-center p-4 py-xl-5 px-xl-5 d-flex align-items-center" style="background-color:#F0EAE7">
												<div class="desc w-100">
													<p class="h3 mb-5" >“As you grow older, you will discover that you have two hands — one for helping yourself, the other for helping others.”</p>
													<div class="pt-4">
														<p class="name mb-0">&mdash; Mayyas</p>
														<span class="position">Volunteer</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>






    <br />
    <br />

    <div class="standards container" style="text-align:center;"> 
        
        <h1 style="font-weight:bold;text-transform:uppercase">our standards</h1>
           <br />

        <p>Our assistant program for the elderly is designed with the highest standards of safety, quality, and user-friendliness in mind. We are committed to providing our elderly users with a program that is easy to use and understand, and that can help them with their daily needs. Our team of experts has worked tirelessly to ensure that our program is intuitive, reliable, and secure, We understand that the elderly population may have unique needs and we also have been continuously working to make sure that our program is accessible for those with visual or hearing impairments. We are dedicated to providing our users with the best possible experience and to helping them maintain their independence and quality of life.   </p>


    </div>









<div class="prog">
          
<%--           
              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                    <ItemTemplate>
   



                        <div class="flip-card card ">
  <div class="flip-card-inner">
    <div class="flip-card-front ">
      <img src="<%#Eval("imgsrc")%>" alt="Avatar" style="width:300px;height:300px;">
        <p class="moredeatail">more details</p>
    </div>
    <div class="flip-card-back">
      <h1><%# Eval("name") %></h1> 

      <p class="descr"><%#Eval("descreption") %></p>
    </div>
  </div>
</div>


      
</ItemTemplate>
                 

</asp:Repeater>--%>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [programs]"></asp:SqlDataSource>






        </div>
    
    <script src="old/js/jquery.min.js"></script>
    <script src="old/js/popper.js"></script>
    <script src="old/js/bootstrap.min.js"></script>
    <script src="old/js/owl.carousel.min.js"></script>
    <script src="old/js/main.js"></script>
</asp:Content>
