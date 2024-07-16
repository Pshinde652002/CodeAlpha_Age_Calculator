<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Age Calculator</title>
<link rel="stylesheet" type ="text/css" href ="CSS/Calculator.css">
</head>
<body>
<h1>Age Calculator</h1>
	<center><div class="main"><br>
	      <input type="date" style="height:30px;width:200px;font-size:20px;" id="date">
	</div></center><br><br>
	
	<button class="btn" onclick="CalculateAge()"><b>Calculate</b></button><br>
	<p id="result" style="font-size:30px; color:white;"></p>
	
	<center><div class="print">

       <center><p><b>Your Age is</b></p></center>

       <div class="m1">
      <div class="col-sm-4">
        <div class="m"><center><p id="result1"></p></center></div>
      </div>

      <div class="col-sm-4">
        <div class="m"><center><p id="result2"></p></center></div>
      </div>

      <div class="col-sm-4">
        <div class="m"><center><p id="result3"></p></center></div>
      </div>

      </div>
    </div>
    </center>
  
</body>

     <script>
		  let userInput = document.getElementById("date");
		  userInput.max = new Date().toISOString().split("T")[0];
		  let result = document.getElementById("result");
		  
		  let result1 = document.getElementById("result1");
		  let result2 = document.getElementById("result2");
		  let result3 = document.getElementById("result3");

		function CalculateAge()
		  {
			  
			let birthDate=new Date(userInput.value);
			  
			  let d1=birthDate.getDate();
			  let m1=birthDate.getMonth()+1;
			  let y1=birthDate.getFullYear();
			  
			  let today=new Date();
			  
			  let d2=today.getDate();
			  let m2=today.getMonth()+1;
			  let y2=today.getFullYear();
			  
			  let d3,m3,y3;
			  y3=y2-y1;
		
			  if(m2 >=m1)
			  {
				  m3=m2-m1;
               }
			  else
				  {
				    y3--;
				    m3=12+m2-m1;
				  }
			  if(d2 >=d1)
				  {
				   d3=d2-d1;
				  }
			  else
				  {
				    m3--;
				    d3 = getDaysInMonth(y1, m1)+ d2-d1;
				  }
			  if(m3 < 0)
				  {
				   m3 = 11;
				   y3--;
				  }
			  
			  result.innerHTML ="You are"+" "+y3+" "+"years,"+" "+m3+" "+"months and"+" "+d3+" "+"days old";
			  
			  result1.innerHTML =y3+" "+"Years";
			  result2.innerHTML =m3+" "+"Months";
			  result3.innerHTML =d3+" "+"Days";
			  
		function getDaysInMonth(year, month)
		  {
			  return new Date(year, month, 0).getDate();
		  }
		  }
  </script>
</html>