const questions = [
  {
    question: "Q1 The full form of CSS is?",
    
       a:"cascading style sheets",
      b: "Coloured Special Sheets",
      c: "Color and Style Sheets",
      d: "None of the above",
    correctAnswer: "cascading style sheets",
    src: "../image/3.png"
  },
  {
    question: "Q2 How can we change the background color of an element?",
    
      a:"background-color",
      b: "color",
       c:"Both A and B",
       d:"None of the above",
      
    
    correctAnswer: "background-color",
    src: "../image/1.png"
  },
  {
    question: "Q3 How can we change the text color of an element?",
    
      a: "background-color",
      b: "color",
     c: "Both A and B",
     d:"None of the above",
   
    correctAnswer: "color",
    src: "../image/2.png"
  }
  ,
  {
    question: "Q4 How do you insert a comment in a CSS file?",
    
      a: "//this is comment",
     b: "/*this is comment*/",
      c: "/*this is comment",
     d: "'this is comment",
  
    correctAnswer: "/*this is comment*/",
    src: "../image/7.png"
  }
  ,
 
  

];

 var wrongAnsCounter = 0 ;
 var correctAnsCounter = 0;
var currentQuestion  = 0 ;
let userAnswers =[];
//  console.log(questions); 
let question = document.getElementById("questiontitle");
var choices =  Array.from (document.querySelectorAll(".answer"));
let nextButton = document.getElementById("nextButton") ;
let choiceInputs =Array.from (document.getElementsByName("answer"));
//  console.log(choices)
let image = document.getElementById("q1image");



nextButton.onclick = function () {

 let checkboxes = document.querySelectorAll('input[name="answer"]:checked');
 let values = [];
 

checkboxes.forEach((checkbox) => {
values.push(checkbox.value);
localStorage.setItem('imitate'+currentQuestion,values);
// console.log(values);
             })

if(values.length == 0){
 alert("please select an answer");
 return;
}
          

          


   if(currentQuestion == 2 ){
     this.innerHTML = "Finish" ;
     
  }
   if(currentQuestion == 3 ){
      
      window.location = "level12.html";
   }
   checkAnswer();
   currentQuestion++;
   setQuestion ();
   
 
}
function setQuestion () {
  question.innerHTML = questions[currentQuestion].question;
  image.src = questions[currentQuestion].src;
  let keys = Object.keys(questions[currentQuestion]);
 //  console.log(keys);
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
   
   // console.log(userAnswer);
   // console.log(questions[currentQuestion].correctAnswer);
   if(userAnswer == questions[currentQuestion].correctAnswer){
     correctAnsCounter++ ; 
   }
   else{
     wrongAnsCounter++;
   }
   
    // console.log(correctAnsCounter);
    // console.log(wrongAnsCounter);
    localStorage.setItem('correct-awnsers',correctAnsCounter);
   localStorage.setItem('wrong-awnsers',wrongAnsCounter);
}
setQuestion ();

