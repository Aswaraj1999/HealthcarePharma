<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginPage</title>
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
    padding-left: 20px;
   
    padding-top: 10px;
    margin-top: 5px
}
    input[type=text], input[type=password],select {   
        width: 50%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid #ff7200;   
        box-sizing: border-box; 
    }
    button {   
       background-color: #ff7200;   
       width: 20%;  
        color:white;   
        padding: 15px;   
        margin: 10px 0px;   
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
    height: 600px;
    background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
    position: absolute;
    top: 140px;
    left: 350px;
    transform: translate(0%,-5%);
    border-radius: 10px;
    padding: 25px;
}
.form h2{
        width: 220px;
        font-family: sans-serif;
        text-align: center;
        color: #ff7200;
        font-size: 22px;
        background-color: #fff;
        border-radius: 10px;
        margin: 2px;
        padding: 8px;
    }
</style>
</head>
<body>
			<!--Help desk Page-->
<div align="center">
    <h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>

    <div class="main">
        <form action="helpprocess.jsp" method="post">
        
        <div class="form"> 
            <h2>Raise Ticket</h2> <br><br>  
            <label for="category">User Category: </label><br>
                    <select name="category" id="category">
                    <option value="admin">Admin</option>
                    <option value="customer">Customer</option></select><br><br>

             <label>Username:</label> <br>
                    <input type="text" name="userid" required/><br><br> 
                 
            <label>What is your Query?</label> <br>
            <input type="text" name="problemid" required/><br><br> 

            <label class="label"> Explain Your Query:</label><br>
            <input type="text" name="problemexp" required /><br> <br>
            <button type="submit">Submit Ticket</button><br><br>
        </div>
        
        </form>
        
    </div>
</div>
</body>
</html>