<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Paymentpage</title>
<style>
.main{
    width: 100%;
    background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(1.jpg);
    background-position: center;
    background-size: cover;
    height: 100vh;
} 
.logo1{
    color: #ff7400;
    font-size: 35px;
    font-family: Arial;
    padding-left: 20px;
   
    padding-top: 10px;
    margin-top: 5px
}
    input[type=text], input[type=password] {   
        width: 50%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid #ff7200;   
        box-sizing: border-box; 
    }
    input[type=date]{
        width: 40%;
        height:40px;
        border: 2px solid #ff7200; 
        box-sizing: border-box; 
        font-size:20px;

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
    height: 550px;
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
    span{  
    color:#fff;  
    font-size: 20px;
    top: 400px;  
    }
</style>
</head>
<body>
<div align="center">
    <h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>

			<!--Payment page-->
    <div class="main">
        <form action="Paymentmsg.jsp" method="post">
        
        <div class="form"> 
            <h2>Enter Card Details</h2><br>
            <label> Card Number:</label> <br>
            <input type="text" name="card" required/><br><br> 
            <label class="label"> Expiry:</label><br>
            <input type="date" name="expiry" required /><br><br>
            <label class="label"> CVV:</label><br>
            <input type="text" name="cvv" required /><br> <br>
            <label class="label"> Name of Card Holder:</label><br>
            <input type="text" name="name" required /><br> <br>
            <button type="submit">PAY NOW</button><br><br>
            
        </div>
        
        </form> <br>
        
    </div>
</div>
</body>
</html>