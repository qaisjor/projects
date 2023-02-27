

 var users = [];
 console.log(localStorage.getItem("users"));
 
 if(localStorage.getItem("users") != null ){
     users = JSON.parse(localStorage.getItem("users"));
     console.log(users);
 }



console.log(email.value);
console.log(password.value);

document.forms[0].onsubmit = function (e) {
   e.preventDefault();
   var email =document.getElementById("email");
   var password =document.getElementById("password");
   
   if(users.length > 0 ){
       for(let i =0 ; i < users.length ; i++){
          
         if(users[i].email == email.value  && users[i].password == password.value){
            sessionStorage.setItem("userName" , users[i].fname + " " +users[i].lname);
            sessionStorage.setItem("email" , users[i].email);
            console.log(users[i].fname)
            if(users[i].isTested)
            {
               alert("You have already been tested , and your score is " + users[i].score) ;
            }
            else{
                window.location="wellcomepage.html";    
            }
             
         }
         else{
            document.getElementById("notcorrect").style.display="block"
         }
       }
   } 

}




