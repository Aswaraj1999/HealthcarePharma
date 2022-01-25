<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>    
<html>    
<head>    
    <title>Reg Form</title>
    <style>
        .main{
        width: 100%;
        background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(1.jpg);
        background-position: center;
        background-size: cover;
        height: 300vh;
    } 
    .logo1{
        color: #ff7200;
        font-size: 35px;
        font-family: Arial;
        padding-left: 450px;
       
        padding-top: 10px;
        margin-top: 5px
    }
        input[type=text], input[type=number],select {   
            width: 70%;   
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
        height: 1300px;
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
        position: absolute;
        top: 160px;
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
        <script>    
            function validate() {    
                var fname = document.reg_form.fname;    
                var lname = document.reg_form.lname;    
                var age = document.reg_form.age;    
                var gender = document.reg_form.gender;    
                var email = document.reg_form.email;    
                var mobile = document.reg_form.mobile;    
                var userid = document.reg_form.userid;  
                var password =document.reg_form.password;  
        
                if (fname.value.length <= 0) {    
                    alert("Name is required");    
                    fname.focus();    
                    return false;    
                }    
                if (lname.value.length <= 0) {    
                    alert("Last Name is required");    
                    lname.focus();    
                    return false;    
                }   
                if (age.value.length <= 0) {    
                    alert("Age is required");    
                    age.focus();    
                    return false;    
                } 
                if (age.value <= 17) {    
                    alert("Invalid Age(Age must be over 18)");    
                    age.focus();    
                    return false;    
                }    
                if (gender.value.length <= 0) {    
                    alert("Gender is required");    
                    gender.focus();    
                    return false;    
                }    
                if (email.value.length <= 0) {    
                    alert("Email Id is required");    
                    email.focus();    
                    return false;    
                }    
                if (cno.value.length < 10|| cno.value.length > 11) {    
                    alert("Mobile number is Invalid");    
                    mobile.focus();    
                    return false;    
                }  
                if (userid.value.length <= 0) {    
                    alert("User Id is required");    
                    userid.focus();    
                    return false;    
                } 
                if (password.value.length <= 0) {    
                    alert("Password Id is required");    
                    password.focus();    
                    return false;    
                } 
                   
                return true;    
            }    
        </script>      
</head>    
<body>   
<!--Validating all the entered User details-->
			<!--Registraton Page-->
    <h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>    
    <hr>
    <div align="center"> 
    <div class="main"> 
    <form method="" id="form" action="registrationprocess.jsp" name="reg_form" onsubmit="return validate()">    
            <div class="form">
                <h2>Registration Form</h2> <br><br>   
       >    
                <label>First Name: </label><br>
                    <input type="text"  id="fname" name="fname" placeholder="First Name"> <br><br>   
                   
                <label>Last Name: </label><br>
                    <input type="text" id="lname" name="lname" placeholder="Last Name"><br><br>    
                    
                <label >Age:</label><br>
                     <input type="number" id="age" name="age" ><br><br>
                  
                     <label for="gender">Gender </label><br>
                     <select name="gender" id="gender">
                     <option value="Male">Male</option>
                     <option value="Female">Female</option></select> <br><br>

                <label>Email Id: </label><br>
                    <input type="text" name="email" placeholder="example@gmail.com">   <br><br> 
                 
                <label>Mobile: </label><br>
                    <input type="number" name="cno" id="cno"><br><br>    
                 
                <label for="category">User Category: </label><br>
                    <select name="category" id="category">
                    <option value="admin">Admin</option>
                    <option value="customer">Customer</option></select><br><br>
          
                <label>Who is your favorite player?: </label><br>       
                    <input type="text" id="qans" name="qans" >  <br><br>  
             
                <label>User-Id: </label> <br>      
                    <input type="text" id="userid" name="userid" > <br><br>   
                   
                <label>Password: </label>  <br>   
                    <input type="text" name="password" id="password"><br><br>    
               
                    <button type="submit">Add</button>   
                    <button type="reset">Reset</button><br><br>  
            </div>   
    </form> 
</div>
</div>     
</body>    
</html> 