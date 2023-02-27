
    let correct = localStorage.getItem("correct-awnsers");
    let  wrong = localStorage.getItem ("wrong-awnsers")
    
    console.log(correct);
    console.log(wrong);
    
    if(correct<=wrong){
    // pass
    console.log("pass");
    document.querySelector('.resultStatus').style = `background-color:#92E5B6`
    document.querySelector('.resultStatus').style.border="1px solid #92E5B6";
    document.querySelector('.resultHeading').innerHTML ="Congratulation";
    document.querySelector('.resultImg').src="../Image/pass.png";
    document.querySelector('.resultDesc').innerHTML="we will arrange with <br>you the Second <br>interview";
    document.getElementById('numCorrectAns').innerHTML=correct;
    document.getElementById('numWrongAns').innerHTML=wrong;
    document.querySelector('.showAnsBtn').style.backgroundColor="#92E5B6"
    document.querySelector('.showAnsBtn').style.border="1px solid #92E5B6"
    }
    else{
   
        console.log("fail")
    // fail
    
    document.querySelector('.resultStatus').style = `background-color:#FF0000`;
    document.querySelector('.resultStatus').style.border="1px solid #FF0000";
    document.querySelector('.resultHeading').innerHTML ="Unfortunately";
    document.querySelector('.resultImg').src="../Image/fail.png";
    document.querySelector('.resultDesc').innerHTML="you did not fulfill our requirements, Good Luck";
    document.getElementById('numCorrectAns').innerHTML=correct;
    document.getElementById('numWrongAns').innerHTML=wrong;
    document.querySelector('.showAnsBtn').style= `background-color:#FF0000`
    document.querySelector('.showAnsBtn').style.border="1px solid #FF0000"
    
    }



    let email = sessionStorage.getItem("email");
    console.log(email);
    let users = JSON.parse(localStorage.getItem("users"));
    
    for(let i =0 ; i<users.length ; i++){
        if(users[i].email == email){
            users[i].isTested = true;
            users[i].score=correct;
            console.log(users[i]);
        }
    }

    localStorage.setItem("users", JSON.stringify(users));