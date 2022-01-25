<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Track Order.</title>
<style>
 input[type=text], input[type=number] {   
        width: 50%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid #ff7200;   
        box-sizing: border-box; 
    }
        label{  
        color: black;
    
    letter-spacing: 1px;
      
    font-size: 25px; 
    font-weight: 500; 
    } 
    
    button {   
       background-color: #ff7200;   
       width: 10%;  
        color:white;   
        padding: 10px;   
        margin: 20px 0px;   
        border: none;   
        cursor: pointer;
        font-size: 20px;   
         }
.main {
	width: 100%;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.5) 50%,
		rgba(0, 0, 0, 0.5) 50%), url(1.jpg);
	background-position: center;
	background-size: cover;
	height: 200vh;
}

.logo1 {
	color: #ff7200;
	font-size: 35px;
	font-family: Arial;
	padding-left: 450px;
	padding-top: 10px;
	margin-top: 5px
}

.logo2 {
	color: black;
	font-size: 30px;
	font-family: Arial;
	padding-left: 50px;
	padding-top: 50px;
	margin-top: 5px
}
</style>
</head>
<body>
<!--Track Order details page-->
	<h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>
	<div align="center" class="main">
		<h3 class="logo2">Please Enter Your UserID to Proceed</h3>
		<form action="vieworders.jsp" method="post">
			<div class="form">

				<label>UserID: </label> <br><input type="text" id="userid" name="userid"><br>
				<button type="submit">Submit</button>
				
			</div>

		</form>
	</div>
</body>
</html>