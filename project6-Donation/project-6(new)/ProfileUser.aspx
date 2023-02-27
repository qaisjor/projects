<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="ProfileUser.aspx.cs" Inherits="project_6_new_.ProfileUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<style>
   .btn-warning {
    color: #212529 !important;
    background-color: cornflowerblue !important;
    border-color: cornflowerblue !important;
}
    .nav{
        padding-left:0 !important;
        display:grid !important;
        grid-template-columns:auto!important;
    }
    body {
    color: #797979;
    background: #f1f2f7;
    font-family: 'Open Sans', sans-serif;
    padding: 0px !important;
    margin: 0px !important;
    font-size: 13px;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
}

.profile-nav, .profile-info{
    margin-top:30px;   
}

.profile-nav .user-heading {
   
    color: #fff;
    border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
    padding: 30px;
    text-align: center;
}

.profile-nav .user-heading.round a  {
    border-radius: 50%;
    -webkit-border-radius: 50%;
    border: 10px solid rgba(255,255,255,0.3);
    display: inline-block;
}

.profile-nav .user-heading a img {
    width: 112px;
    height: 112px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
}

.profile-nav .user-heading h1 {
    color:black;
    font-size: 22px;
    font-weight: 300;
    margin-bottom: 5px;
}

.profile-nav .user-heading p {
    color:black;
    font-size: 12px;
}

.profile-nav ul {
    margin-top: 1px;
}

.profile-nav ul > li {
    border-bottom: 1px solid #ebeae6;
    margin-top: 0;
    line-height: 30px;
}

.profile-nav ul > li:last-child {
    border-bottom: none;
}

.profile-nav ul > li > a {
    border-radius: 0;
    -webkit-border-radius: 0;
    color: darkred;
    border-left: 5px solid #fff;
}

.profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active  a {
    background: #f8f7f5 !important;
    border-left: 5px solid #fbc02d;
    color: darkred !important;
}

.profile-nav ul > li:last-child > a:last-child {
    border-radius: 0 0 4px 4px;
    -webkit-border-radius: 0 0 4px 4px;
}

.profile-nav ul > li > a > i{
    font-size: 16px;
    padding-right: 10px;
    color: darkred;
}

.r-activity {
    margin: 6px 0 0;
    font-size: 12px;
}


.p-text-area, .p-text-area:focus {
    border: none;
    font-weight: 300;
    box-shadow: none;
    color:darkred;
    font-size: 16px;
}

.profile-info .panel-footer {
    background-color:#f8f7f5 ;
    border-top: 1px solid #e7ebee;
}

.profile-info .panel-footer ul li a {
    color: darkred;
}

.bio-graph-heading {
    background:#F2F0F1;
    color: black;
    text-align: center;
    font-style: italic;
    padding: 40px 110px;
    border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
    font-size: 16px;
    font-weight: 300;
}

.bio-graph-info {
    color: #89817e;
    margin-top:66px;
}

.bio-graph-info h1 {
    font-size: 22px;
    font-weight: 300;
    margin: 0 0 20px;
}

.bio-row {
    width: 50%;
    float: left;
    margin-bottom: 10px;
    padding:0 15px;
}

.bio-row p span {
    width: 100px;
    display: inline-block;
}

.bio-chart, .bio-desk {
    float: left;
}

.bio-chart {
    width: 40%;
}

.bio-desk {
    width: 60%;
}

.bio-desk h4 {
    font-size: 15px;
    font-weight:400;
}

.bio-desk h4.terques {
    color: darkred;
}

.bio-desk h4.red {
    color:darkred;
}

.bio-desk h4.green {
    color:darkred;
}

.bio-desk h4.purple {
    color: darkred;
}

.file-pos {
    margin: 6px 0 10px 0;
}

.profile-activity h5 {
    font-weight: 300;
    margin-top: 0;
    color: #c3c3c3;
}

.summary-head {
    background: #ee7272;
    color: #fff;
    text-align: center;
    border-bottom: 1px solid #ee7272;
}

.summary-head h4 {
    font-weight: 300;
    text-transform: uppercase;
    margin-bottom: 5px;
}

.summary-head p {
    color: rgba(255,255,255,0.6);
}

ul.summary-list {
    display: inline-block;
    padding-left:0 ;
    width: 100%;
    margin-bottom: 0;
}

ul.summary-list > li {
    display: inline-block;
    width: 19.5%;
    text-align: center;
}

ul.summary-list > li > a > i {
    display:block;
    font-size: 18px;
    padding-bottom: 5px;
}

ul.summary-list > li > a {
    padding: 10px 0;
    display: inline-block;
    color: #818181;
}

ul.summary-list > li  {
    border-right: 1px solid darkred
}

ul.summary-list > li:last-child  {
    border-right: none;
}

.activity {
    width: 100%;
    float: left;
    margin-bottom: 10px;
}

.activity.alt {
    width: 100%;
    float: right;
    margin-bottom: 10px;
}

.activity span {
    float: left;
}

.activity.alt span {
    float: right;
}
.activity span, .activity.alt span {
    width: 45px;
    height: 45px;
    line-height: 45px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    background: #eee;
    text-align: center;
    color:darkred;
    font-size: 16px;
}

.activity.terques span {
    background: #8dd7d6;
}

.activity.terques h4 {
    color: darkred;
}
.activity.purple span {
    background:darkred;
}

.activity.purple h4 {
    color: darkred;
}
.activity.blue span {
    background: darkred;
}

.activity.blue h4 {
    color: darkred;
}
.activity.green span {
    background:darkred;
}

.activity.green h4 {
    color: darkred;
}

.activity h4 {
    margin-top:0 ;
    font-size: 16px;
}

.activity p {
    margin-bottom: 0;
    font-size: 13px;
}

.activity .activity-desk i, .activity.alt .activity-desk i {
    float: left;
    font-size: 18px;
    margin-right: 10px;
    color: darkred;
}

.activity .activity-desk {
    margin-left: 70px;
    position: relative;
}

.activity.alt .activity-desk {
    margin-right: 70px;
    position: relative;
}

.activity.alt .activity-desk .panel {
    float: right;
    position: relative;
}

.activity-desk .panel {
    background:darkred;
    display: inline-block;
}


.activity .activity-desk .arrow {
    border-right: 8px solid darkred !important;
}
.activity .activity-desk .arrow {
    border-bottom: 8px solid transparent;
    border-top: 8px solid transparent;
    display: block;
    height: 0;
    left: -7px;
    position: absolute;
    top: 13px;
    width: 0;
}

.activity-desk .arrow-alt {
    border-left: 8px solid #F4F4F4 !important;
}

.activity-desk .arrow-alt {
    border-bottom: 8px solid transparent;
    border-top: 8px solid transparent;
    display: block;
    height: 0;
    right: -7px;
    position: absolute;
    top: 13px;
    width: 0;
}

.activity-desk .album {
    display: inline-block;
    margin-top: 10px;
}

.activity-desk .album a{
    margin-right: 10px;
}

.activity-desk .album a:last-child{
    margin-right: 0px;
}

.editt{
   /* background-color:none;
    border:none;
    padding:0 40px 0 0;
    color:gray;
    text-align:left;*/
     border: none;
    background: none;
    cursor: pointer;
    margin: 0;
    padding: 0;
    color:gray;

}
.redd{
    color:red;
}
.save{
    display:flex;
    justify-content:center;
    align-items:center;
    margin:0 auto;
    border-radius:2px;
      color: #212529 !important;
    background-color: cornflowerblue !important;
    border-color: cornflowerblue !important;
}

.upload{
   
    align-items:center;
  
    border-radius:2px;
      color: #212529 !important;
    background-color: cornflowerblue !important;
    border-color: cornflowerblue !important;
}
.feedback{

    display:flex;
   flex-direction:column;
   align-items:end;
   
   width:90%;
   
   margin-top:20px;



}
    .bio-row p span:first-child {
      color:black;
    }
      .bio-row p span:last-child {
       width:120px;
    }
    .panel ul {
       margin-left:51px; 
    }
.feedback .addfeed{

    border-radius:5px;
    color:black;padding:0 15px;
    background-color:darkred;
    color:white;

}
   .feedback input{
            margin-top: 20px;
    border: none;
    padding: 96px 44px;
    font-size: 20px;
    }
    .feedback addfeed {
     border: 1px solid black;
    height: 120px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container bootstrap snippets bootdey">
<div class="row">
  <div class="profile-nav col-md-3">
      <div class="panel">
          <div class="user-heading round">
              <a href="#">
                  c<asp:Image Height="160px" Width="160px" ID="Image1" runat="server"  />
<%--                  <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">--%>
              </a>
              
                            <h1><asp:Label ID="name" runat="server" Text=""></asp:Label></h1>
              
              <p><asp:Label ID="email" runat="server" Text=""></asp:Label></p>
          </div>

          <ul class="nav nav-pills nav-stacked">

              <li class=""><a href="#"> <i class="fa fa-user"></i>   <asp:Button ID="Button4" runat="server" Text="profile"   CssClass="editt" OnClick="Button4_Click1"/>  </a></li>

               <li> <a href="#"><i class="fa fa-edit"></i> <asp:Button ID="Button3" runat="server" Text=" Edit profile "  CssClass="editt" OnClick="Button3_Click"/></a>  </li>
             <%-- <li class="active"><a href="#"> <i class="fa fa-user"></i> Profile</a></li--%>
            
              <li> <a href="#"><i class="fa fa-edit"></i> <asp:Button ID="yourPrograms" runat="server" Text="Your Programs"  CssClass="editt" OnClick="yourPrograms_Click" /></a>  </li>
              
              
              <% if (Context.User.IsInRole("Volunteer")){ %>
              <li> <a href="#"><i class="fa-duotone fa-list-check"></i> <asp:Button ID="yourTasks" runat="server" Text="your Tasks"  CssClass="editt" OnClick="yourTasks_Click" /></a>  </li>
              <%} else {  %>
              <li> <a href="#"><i class="fa fa-edit"></i> <asp:Button ID="Button5" runat="server" Text="your Requests"  CssClass="editt" OnClick="yourTasks_Click" /></a>  </li>
              <%} %>
              
              <% if (Context.User.IsInRole("Volunteer"))
                  { %>
               <li> <a href="#"><i class="fa fa-edit"></i> <asp:Button ID="NewTasks" runat="server" Text="New Tasks"  CssClass="editt" OnClick="NewTasks_Click" /></a>  </li>
              <%} %>
                                     
          
          </ul>
      </div>
  </div>






  <div class="profile-info col-md-9">
    <%--  <div class="panel">
          
              <textarea placeholder="Whats in your mind today?" rows="2" class="form-control input-lg p-text-area"></textarea>
          
          <footer class="panel-footer">
              <button class="btn btn-warning pull-right">Post</button>
           <%--   <ul class="nav nav-pills">
                  <li>
                      <a href="#"><i class="fa fa-map-marker"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class="fa fa-camera"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class=" fa fa-film"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class="fa fa-microphone"></i></a>
                  </li>
              </ul>--%>
    <%--      </footer>
      </div>--%<%-->--%><%----%>
      <div class="panel">
        <%--  <div class="bio-graph-heading">
              Aliquam ac magna metus. Nam sed arcu non tellus fringilla fringilla ut vel ispum. Aliquam ac magna metus.
          </div>--%>
          <div class="panel-body bio-graph-info">
              <div id="userInfo" runat="server">
                                <h1 style="color:black !important;font-weight:bold">Your Informations</h1><br>

                  <div class="row" >
                      <div class="bio-row">
                          <p><span> Name:</span><asp:Label ID="name1" runat="server" Text="" ></asp:Label></p>
                      </div>

                      <div class="bio-row">
                          <p><span>Address: </span><asp:Label ID="address" runat="server" Text=""></asp:Label></p>
                      </div>
                      <div class="bio-row">
                          <p><span>City: </span><asp:Label ID="city" runat="server" Text=""></asp:Label></p>
                      </div>
                      <div class="bio-row">
                          <p><span>Gender:</span><asp:Label ID="gender" runat="server" Text=""></asp:Label></p>
                      </div>
                      <div class="bio-row">
                          <p><span>Mobile: </span><asp:Label ID="mobile" runat="server" Text=""></asp:Label></p>
                      </div>
                      <div class="bio-row">
                          <p><span style="width:208px;">Emargency Phone Number: </span><asp:Label ID="emargency" runat="server" Text=""></asp:Label></p>
                      </div>  
                  </div>

                                <%--feedbook--%>


          

                  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                              <div class="feedback"  runat="server">
                  <asp:TextBox  CssClass="form-control" ID="feedback" runat="server" TextMode="MultiLine" Width="1237px"  style="width:100%" Height="150px" BorderStyle="Solid" BorderColor="Black" placeholder="Please Write your feedback"  ></asp:TextBox>

                  <asp:Button CssClass="addfeed" ID="Addfeedback" Width="100px" runat="server" Text="Add" OnClick="Addfeedback_Click" style="" />
                                      </div>
                          </ContentTemplate>
                      </asp:UpdatePanel>

          

              <%--feedbook--%>



                </div>
              <%--div2edit--%>
             <div id="userEdit" runat="server">
                  <div class="row" >
                      <div class="bio-row">
                          <p><span> Name: </span><asp:TextBox CssClass="form-control" ID="name2" runat="server" ValidationGroup="textt"></asp:TextBox></p>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="name2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div>
                      <div class="bio-row">
                          <p><span>Address: </span><asp:TextBox CssClass="form-control" ID="address1" runat="server"></asp:TextBox></p>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="address1" CssClass="redd"></asp:RequiredFieldValidator>

                      </div>
                      <div class="bio-row">
                          <p><span>City: </span><asp:TextBox CssClass="form-control" ID="city2" runat="server"></asp:TextBox></p>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="city2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div>
                      <div class="bio-row" cssclass=".redd">
                          <p><span>Gender:</span><asp:TextBox CssClass="form-control" ID="gender2" runat="server"></asp:TextBox></p>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="gender2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div>
                      <div class="bio-row">
                          <p><span>Mobile: </span><asp:TextBox CssClass="form-control" ID="mobile2" runat="server"></asp:TextBox></p>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="mobile2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div>
                      <div class="bio-row">
                          <p><span style="width:208px;">Emargency Phone Number: </span><asp:TextBox CssClass="form-control" ID="emargency2" runat="server"></asp:TextBox></p>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="emargency2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div > 
                      <div class="bio-row" >
                      <p> <span  style="width:208px;">Edit Your Photo</span> <br><asp:FileUpload ID="FileUpload1" runat="server" /></p>
                          </div>
                     <%--<asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click"  CssClass="upload"/>--%>
                  </div>
                 <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" ValidationGroup="textt" CssClass="save" />
                </div>
               <%--div2edit--%>
              <div  id="yourProgramsDiv" runat="server">
                  
              </div>
               <div  id="yourTasksDiv" runat="server">
                  
              </div>
              <div  id="newTasksDiv" runat="server">
                  <div>
            <h1> tasks that match voluteer program and city will appeare here </h1>
        </div>
                 <%-- SelectCommand="SELECT AspNetUsers.Name AS beneName, AspNetUsers.PhoneNumber, pb.description AS taskDesc, pb.date, pb.admin_desc AS Admindesc, pv.id AS pvID, pb.id AS pbID, pb.program_id, programs.name AS prgName FROM pb INNER JOIN pv ON pb.program_id = pv.program_id INNER JOIN AspNetUsers ON AspNetUsers.Id = pb.user_id 
                INNER JOIN programs ON programs.id = pb.program_id where pb.admin_approve =1 and pb.pending = 1 and pv.program_id = pb.program_id and pv.user_id =  ;"--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" ></asp:SqlDataSource>
        <table class="table table-striped">
            <tr>
               <th>Beneficiary Name</th>
               <th>Phone Number </th>
               <th> Task Description</th>
               <th>Date </th>
               <th>Admin Description</th>
               <th>Program Name</th>
                <th>Action</th>
             </tr>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                 <tr>
                     <td><%#Eval("beneName")%></td>
                     <td><%#Eval("PhoneNumber")%></td>
                     <td><%#Eval("taskDesc")%></td>
                     <td><%#Eval("date")%></td>
                     <td><%#Eval("Admindesc")%></td>
                     <td><%#Eval("prgName")%></td>
                     <td>
                         <asp:LinkButton ID="btnAccept" runat="server"
                         CommandArgument  ='<%#Eval("pbID") +";" + Eval("pvID") +";" + Eval("program_id")%>  '
                          OnClick="btnAccept_Click"
                       >Accept</asp:LinkButton>
                   </td>
                    
                 </tr>
            </ItemTemplate>
        </asp:Repeater>
            </table>
              </div>



          </div>
      </div>
      
      <div>

        <%--  <div class="row">
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="35" data-fgcolor="#e06b7d" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(224, 107, 125); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="red">Envato Website</h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="63" data-fgcolor="#4CC5CD" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(76, 197, 205); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="terques">ThemeForest CMS </h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="75" data-fgcolor="#96be4b" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(150, 190, 75); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="green">VectorLab Portfolio</h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="50" data-fgcolor="#cba4db" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(203, 164, 219); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="purple">Adobe Muse Template</h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
          </div>--%>
      </div>
  </div>
</div>
</div>
</asp:Content>
