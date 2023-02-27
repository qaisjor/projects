<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="addProgramProfilePage.aspx.cs" Inherits="project_6_new_.addProgramProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
      <style>
          .h66{
              font-weight:bold;
          }
        body{
            font-family:filson-soft,filson-pro,Arial,sans-serif;
        }
      
        .labelForm{
            display:inline-block;
            padding-bottom:10px;
             font-size:1.5rem;
            font-weight:bold;
        }
        #addProgramContainer ,#containerForInner, .containerPage{
            display:flex;
            justify-content:center;
            padding-top:10px;
            flex-wrap:wrap;
            
        }
        .add-program{
            width:70%;
           margin-top:7px;

        }
        .bForm{
            width:70%;
        }
        .third-row{
            width:70%;
            font-weight:bold;
        }
        .formAddProgram{
            width:100%;
            margin-top:8px;
        }
        
        #Button1{
            margin-left:25px;
        }
        h6{
            margin:0;
            padding:0;
            font-weight:600;
            font-size:15px;
        }
        .textAreaB{
            resize:none;
            width:300px;
            height:100px;
            margin:15px 0;
        }
        .SubmitButton{
             background-color:darkred;
            color:#F0EAE7;
            padding:10px;
            border:none;
        }
        .abtn{
            padding:4px;
            background-color:orange;
        }
        .hhh{
            display:none;
        }
        .cardd{

    display:flex;
   justify-content:space-evenly;
   margin-bottom:22px;
  
}
    .cardd div {
     width:54%;
    }

    .imgg {
 width:100%;
 height:100%;
}
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br />
    <div class="all" style="border:2px solid darkred; border-radius:10px; width:90%; align-items:center;margin-left: 50px;   box-shadow:5px 5px 10px gray;
" >
    <div runat="server" class="containerPage" id="addProgramContainer" >
        <div class="add-program">
            <div class="first-div" style="align-items:center !important;">
                <label class="labelForm">Assign for program</label><br />
                <asp:DropDownList CssClass="form-control" style="width:330px;" AutoPostBack="true" id="ColorList" runat="server" OnSelectedIndexChanged="ColorList_SelectedIndexChanged">

                  <asp:ListItem Selected="True" Value="1"> Medical accompaniment </asp:ListItem>
                  <asp:ListItem Value="2"> Home companiment </asp:ListItem>
                  <asp:ListItem Value="3"> government services accompaniment </asp:ListItem>
                  <asp:ListItem Value="4"> Shopping assistant </asp:ListItem>
                  
                    
               </asp:DropDownList>

            </div>
            
        </div>
       </div>

      


        <div id="containerForInner" class="containerPage" runat="server">





                             <div style="width:70%;"  id="firstDiv" runat="server"  class="formAddProgram hhh">              
                                
                                 

                                 <div class="cardd">
            <div class="imgg" >
                <img  style="width:340px;" id="imgV" runat="server" src="img" />
            </div>
            <div class="desc">
                <h2 id="programNameV" runat="server">name</h2>
                <p id="programDesV" runat="server">description</p>
            </div>


        </div>



                                 <h3>Our Policies and Liability Waiver</h3>               
                                 <h6 class="h66">DISCLOSURE</h6>             
                                 <p>I am volunteering my services and agree to furnish information regarding volunteer activities and hours. I also affirm that the above information is accurate and complete to the best of my knowledge.</p>               <br />              <h6 class="h66">CONFIDENTIALITY </h6>               <p>Any information about Our clients, vendors, members, donors, volunteers or affiliates that is not otherwise publicly available constitutes confidential information. Volunteers may not disclose confidential information to anyone who is not employed by Us.</p>              <br />               <h6 class="h66">NO SOLICITATION </h6>             <p>The relationship between a volunteer and a client is guided by a profound respect for diversity and a belief in human potential, recognizing that each person has an individual dignity worthy of respect. Volunteers will respect the preferences and decisions of clients and refrain from applying undue pressure in matters of choice. Volunteers will not financially profit directly or indirectly from a client or engage in activities that pose a conflict of interest</p>             <br />              <h6 class="h66">USE OF IMAGES </h6>             <p>I agree that This WebSite may use photographs of me with or without my name and for any lawful purpose, including for example such purposes as publicity, illustration, advertising, and Web content.</p>            <br />            <h6 class="h66">LIABILITY WAIVER</h6>              <p>I hereby release Cultivate from any liability for illness, injury, or medical expenses sustained while volunteering.</p>           <div class="third-row">             <input type="checkbox" id="checkboxFormV" runat="server" />                      <label style="margin-right:35px;"> I Approve For Policies and Liability Waiver</label>   <asp:Button CssClass="SubmitButton" ID="Button3" runat="server" Text="Submit Application" OnClick="Button3_Click1" />                            </div>  </div> 

















                            <div id="secondDiv" runat="server"  class="add-program hhh">                  
                                <div   class="formAddProgram ">              
                                   
                                    

                                                                     <div class="cardd">
            <div class="imgg" >
                <img style="width:340px;" id="imgD" runat="server" src="img" />
            </div>
            <div class="desc">
                <h2 id="programNameD" runat="server">name</h2>
                <p id="programDesD" runat="server">description</p>
            </div>


        </div>


                                </div>            
                                <div class="" style="align-items:center;">             
                                    <label style="font-weight:600;">Add details about your need for this program</label><br />              
                                    <textarea  class="textAreaB form-control" style="width:400px;height:200px;"  id="TextArea1"  runat="server" cols="20" rows="2"></textarea>

                                </div>  
                              
                                <div class="third-row">
                                 
                              
                                       <asp:Button CssClass="SubmitButton" ID="Button2" runat="server" Text="Submit Application" OnClick="Button2_Click1" />
                             
                                </div>
            
                             
                            </div>  

             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        <br /><br />
       </div>

        
        
       
        <br />
        <br />
        <br />
</asp:Content>
