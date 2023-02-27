const questions = [
   
   
  {
    question: "Q11 How can we add more importance to a property/value than normal?",
    
      a: "!important",
      b: "important",
     c: "bold",
     d: "None of the above",
   
    correctAnswer: "!important",
    src: "../image/10.png"
  }
  ,
  {
    question: "Q12 Which CSS property specifies the painting area of the background?",
    
    a:   "background-clip",
      b: "background-siz",
      c: "background-image",
      d:"None of the above",
  
    correctAnswer: "background-clip",
    src: "../image/11.png"
  }
  ,
  {
    question: "Q13  How to select the elements with the class name 'example' ?",
   
     a:  "example",
      b: "#example",
      c: ".example",
     d:  "Class example",
    
    correctAnswer: ".example",
    src: "../image/12.png"
  }
  ,
  {
    question: "Q14 Which of the following is the correct syntax to select all paragraph elements in a div element?",
   
     a:  "div p",
     b:  "p",
     c:  "div#p",
     d:  "div ~ p",
    
    correctAnswer: "div p",
    src: "../image/13.png"
  }
  ,
  {
    question: "Q15 which of the following is not filter function?",
    
     a:  "inverse",
     b:  "hue-rotate",
     c: "contrast",
     d:  "invert",
   
    correctAnswer: "inverse",
    src: "../image/1.png"
  }
  ,
  {
    question: "Q16 which of the following is not supported parameter of the transition property ?",
   
     a:  "function",
     b:  "property",
     c: "type",
     d:  "duration",
   
    correctAnswer: "type",
    src: "../image/2.png"
  }
  ,
  {
    question: "Q17 Which CSS property controls the text size?",
   
     a:  "text-style",
     b:  "font-style",
     c:  "font-size",
     d:  "font-style",
   
    correctAnswer: "font-size",
    src: "../image/3.png"
  }
  ,
  {
    question: "Q18 Which of the following CSS framework is used to create a responsive design?",
    
     a:  "django",
     b:  "rails",
     c:  "larawell",
     d:  "bootstrap",
   
    correctAnswer: "bootstrap",
    src: "../image/4.png"
  }
  ,
  {
    question: "Q19  Which of the following is an appropriate value for the overflow element?",
    
      a: "scroll",
     b: "hidden",
     c:  "auto",
     d:  "all of the mentioned",
    
    correctAnswer: "all of the mentioned",
    src: "../image/5.png"
  }
  ,
  {
    question: "Q20  The default value of 'position' attribute is _.",
    
      a: "static",
     b: "absolute",
     c:  "inherit ",
     d:  " relative",
    
    correctAnswer: "static",
    src: "../image/7.png"
  }
  

];

 var wrongAnsCounter3 = localStorage.getItem("wrong-answers"); ;
 var correctAnsCounter3 = localStorage.getItem("correct-answers");
var currentQuestion  = 0 ;
let image = document.getElementById("q1image");


// console.log(questions); 
let question = document.getElementById("questiontitle");
var choices =  Array.from (document.querySelectorAll(".answer"));
let nextButton = document.getElementById("nextButton") ;
let choiceInputs =Array.from (document.getElementsByName("answer"));
// console.log(choices)



let userAnswers =JSON.parse(localStorage.getItem("userAnswers"));


nextButton.onclick = function () {

 
 let checkboxes = document.querySelectorAll('input[name="answer"]:checked');
 let values = [];
 

checkboxes.forEach((checkbox) => {
values.push(checkbox.value);
localStorage.setItem('Transpose'+currentQuestion,values);
// console.log(values);
             })

if(values.length == 0){
 alert("please select an answer");
 return;
}
   
   if(currentQuestion == 8 ){
     this.innerHTML = "Finish" ;
     
  }
   if(currentQuestion == 9 ){
      
      window.location = "../HTML/thanks.html";
   }
   checkAnswer();
   currentQuestion++;
   setQuestion ();
}





function setQuestion () {
  question.innerHTML = questions[currentQuestion].question;
  image.src = questions[currentQuestion].src;


  let keys = Object.keys(questions[currentQuestion]);
  // console.log(keys);
  for(let i = 0 ; i < choices.length ; i++){
     
     choices[i].innerHTML = questions[currentQuestion][keys[i+1]];
     choiceInputs[i].value = questions[currentQuestion][keys[i+1]];
  } 
  var ele = document.getElementsByName("answer");
  for(var i=0;i<ele.length;i++)
      ele[i].checked = false;
}


function checkAnswer() {
   let userAnswer ; 
   for(let i =0 ; i<choiceInputs.length ; i++){
      if(choiceInputs[i].checked){
        userAnswer = choiceInputs[i].value;
      }
   } 
   userAnswers.push(userAnswer);
   localStorage.setItem("userAnswers",JSON.stringify(userAnswers))
   console.log(userAnswers);

   
  //  console.log(userAnswer);
  //  console.log(questions[currentQuestion].correctAnswer);
   if(userAnswer == questions[currentQuestion].correctAnswer){
     correctAnsCounter3++ ; 
   }
   else{
     wrongAnsCounter3++;
   }
   
  //  console.log(correctAnsCounter3);
  //  console.log(wrongAnsCounter3);
   localStorage.setItem('correct-awnsers',correctAnsCounter3);
   localStorage.setItem('wrong-awnsers',wrongAnsCounter3);
}
setQuestion ();

