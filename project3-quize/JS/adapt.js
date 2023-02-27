const questions = [
  
    
  {
    question: "Q5 (margin: 25px 50px 75px 100px;) in what order will the margins be added?",
    
      a: "Top, Right, Bottom, Left",
      b:"Top, Left, Bottom, Right",
      c: "Top, Bottom, Right, Left",
      d: "Right, Left, Top, Bottom",
  
    correctAnswer: "Top, Right, Bottom, Left",
    src: "../image/4.png"
  }
  ,
  {
    question: "Q6 Can negative values be allowed in padding property?",
   
      a: "Yes",
      b: "No",
      c: "depends on properety",
      d: "None of the above",
  
    correctAnswer: "No",
    src: "../image/5.png"
  }
  ,
  {
    question: "Q7 Which HTML tag is used to declare internal CSS?",
    
      a: "&lt style &gt",
       b:"&lt link &gt",
     c: "&lt script &gt",
      d: "none of the above",
   
    correctAnswer: "&lt style &gt"
    ,
    src: "../image/6.png"
  }
  ,
  {
    question: "Q8 The CSS property used to specify the transparency of an element is?",
    
      a: "opacity",
      b: "visibility",
      c: "filter",
      d: "None of the above",
    
    correctAnswer: "opacity",
    src: "../image/7.png"
  }
  ,
  {
    question: "Q9 What type of CSS is generally recommended for designing large web pages?",
   
      a: "inline",
      b: "internal",
      c: "external",
      d: "None of the above",
   
    correctAnswer: "external",
    src: "../image/8.png"
  }
  ,
  {
    question: "Q10 The CSS property used to draw a line around the elements outside the border?",
   
     a:  "border",
      b: "outline",
      c: "padding",
      d: "line",
   
    correctAnswer: "outline",
    src: "../image/9.png"
  }
  ,
 
];

 var wrongAnsCounter2 = localStorage.getItem("wrong-awnsers") ;
 var correctAnsCounter2 = localStorage.getItem("correct-awnsers");
var currentQuestion  = 0 ;
let image = document.getElementById("q1image");


// console.log(questions); 
let question = document.getElementById("questiontitle");
var choices =  Array.from (document.querySelectorAll(".answer"));
let nextButton = document.getElementById("nextButton") ;
let choiceInputs =Array.from (document.getElementsByName("answer"));

let userAnswers =JSON.parse(localStorage.getItem("userAnswers"));



nextButton.onclick = function () {


 let checkboxes = document.querySelectorAll('input[name="answer"]:checked');
 let values = [];
 

checkboxes.forEach((checkbox) => {
values.push(checkbox.value);
localStorage.setItem('Adapt'+currentQuestion,values);
// console.log(values);
             })

if(values.length == 0){
 alert("please select an answer");
 return;
}
   
   if(currentQuestion == 4 ){
     this.innerHTML = "Finish" ;
     
  }
   if(currentQuestion == 5 ){
      
      window.location = "level23.html";

   }
   checkAnswer();
   currentQuestion++;
   setQuestion ();
  //  console.log(choiceInputs);
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
     correctAnsCounter2++ ; 
   }
   else{
     wrongAnsCounter2++;
   }
   
  //  console.log(correctAnsCounter2);
  //  console.log(wrongAnsCounter2);
   localStorage.setItem('correct-answers',correctAnsCounter2);
   localStorage.setItem('wrong-answers',wrongAnsCounter2);


}
setQuestion ();

