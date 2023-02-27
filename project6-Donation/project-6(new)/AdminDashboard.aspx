<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-masterpage.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="project_6_new_.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <main class="dash-content">
                <div class="container-fluid">
                    <div class="row dash-row">
                        <div class="col-xl-4">
                            <div class="stats stats-primary">
                                <h3 class="stats-title"> Volunteers </h3>
                                <div class="stats-content">
                                    <div class="stats-icon">
                                        <i class="fas fa-user"></i>
                                    </div>
                                    <div class="stats-data">
                                        <div runat="server" id="volunteernumber" class="stats-number">114</div>
                                        <div class="stats-change">
                                        <span runat="server" id="vpercentage" class="stats-percentage"></span>

                                        </div>
                                    </div>
                                </div>
                          
                            </div>

                        </div>
                        <div class="col-xl-4">
                            <div class="stats stats-primary">
                                <h3 class="stats-title"> Beneficiary </h3>
                                <div class="stats-content">
                                    <div class="stats-icon">
                                        <i class="fas fa-user"></i>
                                    </div>
                                    <div class="stats-data">
                                        <div runat="server" id="Beneficiarynumber" class="stats-number">114</div>
                                        <div class="stats-change">
                                        <span runat="server" id="bpercentage" class="stats-percentage"></span>

                                           
                                        </div>
                                    </div>
                                </div>
                          
                            </div>

                        </div>
                        <div class="col-xl-4">
                            <div class="stats stats-success ">
                                <h3 class="stats-title"> Finished Tasks</h3>
                                <div class="stats-content">
                                    <div class="stats-icon">
                                        <i class="fas fa-pass"></i>
                                    </div>
                                    <div class="stats-data">
                                        <div runat="server" id="finished" class="stats-number"></div>
                                        <div class="stats-change">
                                            <span runat="server" id="fpercentage" class="stats-percentage"></span>
                                           <%-- <span class="stats-timeframe">from last month</span>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4">
                            <div class="stats stats-danger">
                                <h3 class="stats-title"> Canceled Tasks </h3>
                                <div class="stats-content">
                                    <div class="stats-icon">
                                        <i class="fas fa-cancle"></i>
                                    </div>
                                    <div class="stats-data">
                                        <div id="cTasks" runat="server"  class="stats-number"></div>
                                         <span runat="server" id="cPercentage" class="stats-percentage"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-xl-4">
                            <div style="color:white;" class="stats stats-warning">
                                <h3  class="stats-title"> Working Tasks </h3>
                                <div class="stats-content">
                                    <div class="stats-icon">
                                        <i class="fas fa-cancle"></i>
                                    </div>
                                    <div class="stats-data">
                                        <div id="wTasks" runat="server"  class="stats-number"></div>
                                         <span runat="server" id="wpercentage" class="stats-percentage"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                      <%--  <div class="col-xl-6">
                            <div class="card easion-card">
                                <div class="card-header">
                                    <div class="easion-card-icon">
                                        <i class="fas fa-chart-bar"></i>
                                    </div>
                                    <div class="easion-card-title"> Bar Chart </div>
                                    <div class="easion-card-menu">
                                        <div class="dropdown show">
                                            <a class="easion-card-menu-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                                <a class="dropdown-item" href="#">Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body easion-card-body-chart">
                                    <canvas id="easionChartjsBar"></canvas>
                                    <script>
                                        var ctx = document.getElementById("easionChartjsBar").getContext('2d');
                                        var myChart = new Chart(ctx, {
                                            type: 'bar',
                                            data: {
                                                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
                                                datasets: [{
                                                    label: 'Blue',
                                                    data: [12, 19, 3, 5, 2],
                                                    backgroundColor: window.chartColors.primary,
                                                    borderColor: 'transparent'
                                                }]
                                            },
                                            options: {
                                                legend: {
                                                    display: false
                                                },
                                                scales: {
                                                    yAxes: [{
                                                        ticks: {
                                                            beginAtZero: true
                                                        }
                                                    }]
                                                }
                                            }
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>--%>
                    <%--    <div class="col-xl-6">
                            <div class="card easion-card">
                                <div class="card-header">
                                    <div class="easion-card-icon">
                                        <i class="fas fa-bell"></i>
                                    </div>
                                    <div class="easion-card-title"> Notifications </div>
                                </div>
                                <div class="card-body ">
                                    <div class="notifications">
                                        <a href="#!" class="notification">
                                            <div class="notification-icon">
                                                <i class="fas fa-inbox"></i>
                                            </div>
                                            <div class="notification-text">New comment</div>
                                            <span class="notification-time">21 days ago</span>
                                        </a>
                                        <a href="#!" class="notification">
                                            <div class="notification-icon">
                                                <i class="fas fa-inbox"></i>
                                            </div>
                                            <div class="notification-text">New comment</div>
                                            <span class="notification-time">21 days ago</span>
                                        </a>
                                        <a href="#!" class="notification">
                                            <div class="notification-icon">
                                                <i class="fas fa-inbox"></i>
                                            </div>
                                            <div class="notification-text">New comment</div>
                                            <span class="notification-time">21 days ago</span>
                                        </a>
                                        <div class="notifications-show-all">
                                            <a href="#!">Show all</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </main>
</asp:Content>
