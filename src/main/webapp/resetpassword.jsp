<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password.</title>
<style>
        .main{
        width: 100%;
        background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(1.jpg);
        background-position: center;
        background-size: cover;
        height: 100vh;
    } 
    .logo1{
        color: #ff7200;
        font-size: 35px;
        font-family: Arial;
        padding-left: 450px;
       
        padding-top: 10px;
        margin-top: 5px
    }
        input[type=text], input[type=password] {   
            width: 30%;   
            margin: 8px 0;  
            padding: 12px 20px;   
            display: inline-block;   
            border: 2px solid #ff7200;   
            box-sizing: border-box; 
        }
        button {   
           background-color: #ff7200;   
           width: 15%;  
            color:white;   
            padding: 15px;   
            margin: 20px 0px;   
            border: none;   
            cursor: pointer;
            font-size: 20px;   
             }
    
        
        label{  
            color: #fff;
        
        letter-spacing: 1px;
          
        font-size: 25px; 
        font-weight: 500; 
        } 
        .form{
            width:50%;
        height: 400px;
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
        position: absolute;
        top: 160px;
        left: 350px;
        transform: translate(0%,-5%);
        border-radius: 10px;
        padding: 25px;
    }
    .form h2{
    top:10px;
        width: 600px;
        font-family: sans-serif;
        text-align: center;
        color: #ff7200;
        font-size: 26px;
        background-color: #fff;
        border-radius: 10px;
        margin: 2px;
        padding: 8px;
    }
    
    </style>
</head>
<body>

			<!--Reset Password Page-->
<div align="center" class="main">
		<form action="resetpasswordprocess.jsp" method="post">
		<div class="form">
		<h2>Enter Following Details to Reset Your Password</h2><br><br>
			<label>Enter Your User Id : </label>
			<input type="text" name="userid" required /><br>
			<br> <label>Enter Password : </label>
			<input type="password" name="password1"
				required /><br>
			<br> <label>Confirm Password : </label>
			<input type="password" name="password2"
				required /><br><br>
				<button type="submit">Submit</button>
			<button type="reset">Reset</button>
			<br>
			</div> 
		</form>
	</div>
</body>
</html>