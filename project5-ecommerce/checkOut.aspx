<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkOut.aspx.cs" Inherits="Project5.checkOut" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <title>Derwiki's Stripe Payment form + checkout'</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha256-k2/8zcNbxVIh5mnQ52A0r3a6jAgMGxFJFE2707UxGCk= sha512-ZV9KawG2Legkwp3nAlxLIVFudTauWuBpC10uEafMHYL0Sarrz5A7G79kXh5+5+woxQ5HM559XX2UZjMJ36Wplg==" crossorigin="anonymous">
    <style>
        @media only screen and (min-device-width:0px) and (max-device-width:480px) {
        .form-control{
            height:110px !important;
            font-size:35px;
        }
        .control-label{
            font-size:30px;
        }
        }
    </style>
</head>
<body style="font-family: 'Open Sans', sans-serif;">
    <form id="form" runat="server">






    <div class="container">
        <div class="centered title">
            <h1>Checkout.</h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col- 6 col-xs-12">
                <div class="tab-content">
                    <div id="stripe" class="tab-pane fade in active">
                        <script src='https://js.stripe.com/v2/' type='text/javascript'></script>
                        
                            <br>
                            <h1>Cash</h1>
                            <br />
                            <div class='form-row'>
                                <div class='form-group required'>
                                    <div class='error form-group hide'>
                                        <div class='alert-danger alert'>
                                            Please correct the errors and try again.
              
                                        </div>
                                    </div>
                                    <label class='control-label'>Name </label>
                                    <input class='form-control' required size='4' type='text'>
                                </div>

                            </div>
                            <div class='form-row'>
                                <div class='form-group card required'>
                                    <label class='control-label'>City</label>
                                    <input autocomplete='off' required class='form-control card-number' size='20' type='text'>
                                </div>
                            </div>
                            <div class='form-row'>
                                <div class='form-group card required'>
                                    <label class='control-label'>Address</label>
                                    <input autocomplete='off' required class='form-control' size='20' type='text'>
                                </div>
                            </div>
                            <div class='form-row'>
                                <div class='form-group cvc required'>
                                    <label class='control-label'>Building Name</label>
                                    <input autocomplete='off' required class='form-control card-cvc'  size='4' type='text'>
                                </div>
                                <div class='form-group expiration required'>
                                    <label class='control-label'>Phone Number</label>
                                    <input class='form-control required card-expiry-month' size='2' type='text' required>
                                </div>
                               
                            </div>


                            <div class='form-row'>
                                <div class='form-group'>
                                    <label class='control-label'></label>

                                    <asp:Button ID="chekout" runat="server" CssClass="form-control btn btn-primary" Text="Continue" OnClick="chekout_Click" />
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            <div class="col-5 col-xs-12">
                <br />
                <h1>Online Payment</h1>
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
    </form>
</body>
</html>
