<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="Donat.aspx.cs" Inherits="project_6_new_.Donat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title></title>
    <style>
        .cont {
           box-shadow:5px 5px 10px gray;
           width:60%;
           margin:0px auto;
           margin-top:125px;
/**/
           border-radius:20px;
        }
            .cont h1 {
              text-align:center; 
            }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div>
        </div>
        <div class="cont">
        <div <%--style="margin-left: 250px;"--%> class="col-12 col-xs-12">
                <br />
                <h1>Donate Now</h1>
                <br />
                <div id="smart-button-container">
                    <div style="text-align: center;">
                        <div id="paypal-button-container">
                            <p></p>
                            <p></p>
                            <p></p>
                            <script src="https://www.paypal.com/sdk/js?client-id=AYOPFmJHKEp34Obn8Gp5EJhzo8qOotnJl2Y6lj3E72wh3UcV-V-gVaGPkM-bR-XvEfuvN5ZhSeOgZk6R&amp;enable-funding=venmo&amp;currency=USD" data-sdk-integration-source="button-factory"></script>
                            <script>
                                function initPayPalButton() {
                                    paypal.Buttons({
                                        style: {
                                            shape: 'rect',
                                            color: 'gold',
                                            layout: 'vertical',
                                            label: 'paypal',

                                        },

                                        createOrder: function (data, actions) {
                                            return actions.order.create({
                                                purchase_units: [{ "description": "شراء حسابات ميرش باي امازون", "amount": { "currency_code": "USD", "value": 60 } }]
                                            });
                                        },

                                        onApprove: function (data, actions) {
                                            return actions.order.capture().then(function (orderData) {

                                                // Full available details
                                                console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                                                // Show a success message within this page, e.g.
                                                const element = document.getElementById('paypal-button-container');
                                                element.innerHTML = '';
                                                element.innerHTML = '<h3>Thank you for your payment!</h3>';

                                                // Or go to another URL:  actions.redirect('thank_you.html');

                                            });
                                        },

                                        onError: function (err) {
                                            console.log(err);
                                        }
                                    }).render('#paypal-button-container');
                                }
                                initPayPalButton();
                            </script>
                        </div>
                    </div>
                </div>

            </div>
            </div>
    
</asp:Content>
