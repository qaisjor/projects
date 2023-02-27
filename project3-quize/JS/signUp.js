
var users = [];
console.log(localStorage.getItem("users"));

if(localStorage.getItem("users") != null ){
    users = JSON.parse(localStorage.getItem("users"));
    console.log(users);
    id = users.length;
}


var fname=document.getElementById("fname");
var lname=document.getElementById("lname");
var emailAddress=document.getElementById("Email-address");
var phoneNumber=document.getElementById("number");
var password=document.getElementById("pass");
var confPass=document.getElementById("conf-pass");
var regButton = document.getElementById("reg");
var message = document.querySelector(".message");
message.style.display = "none"


//form validation
document.forms[0].onsubmit = function(e){
    e.preventDefault();

    //check if the user has an acount 
    if (isExist()) {
       document.getElementById("already-registered").style.display="block"
        return;
    }
    


   //validate user password and email
    if(password.value === confPass.value ){
        message.style.display = "none";
        if(EmailValidation(emailAddress.value) ){
            var user = {
                fname : fname.value,
                lname : lname.value,
                email : emailAddress.value,
                phoneNumber: phoneNumber.value,
                password : password.value,
                isTested:false,
                score : ""    
          }
          
          users.push(user);
          localStorage.setItem("users" , JSON.stringify(users));
          window.location = "login.html";
        } 
        else{
            alert("Sorry! an invalid email!");
        }

   } 
   else{
    message.style.display = "block";
   }    
}


//emain validation
function EmailValidation(enteredEmail){
var mail_format = /^w+([.-]?w+)*@w+([.-]?w+)*(.w{2,3})+$/;
if(enteredEmail.match(enteredEmail))
{
return true;
}
Else
{

return false;
}

}


//check if the user exist 
function isExist() {
    
    if(users.length > 0){
        for(let i = 0 ; i < users.length ; i++){
            if(users[i].email == emailAddress.value){
                return true
            }
        }
        return false ;
    }
}


    // fname.value=localStorage.getItem("fname");

    // lname.value=localStorage.getItem("lname");

    // emailAddress.value=localStorage.getItem("Email-address")

    // phoneNumber.value=localStorage.getItem("number")

    // passWord.value=localStorage.getItem("password")

    // confPass.value=localStorage.getItem("conf-password")






// let arr = [1,2,3,4,5,6,,7]
// let ans = [
//     [
//         {
//         val:'right' , ans: 'answer'
//     },
//     { val:'worng' , ans: 'answer'},
//     { val:'wrong' , ans: 'answer'}
// ],
// ]



