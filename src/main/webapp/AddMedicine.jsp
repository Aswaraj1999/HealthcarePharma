<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Medicines</title>
<style>
	.main{
	width: 100%;
	background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(1.jpg);
	background-position: center;
	background-size: cover;
	height: 130vh;
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
		width: 130%;   
		margin: 8px 0;  
		padding: 12px 20px;   
		display: inline-block;   
		border: 2px solid #ff7200;   
		box-sizing: border-box; 
	}
	input[type=submit] ,input[type=reset]{   
	   background-color: #ff7200;   
	   width: 50%;  
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
	height: 650px;
	background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
	position: absolute;
	top: 140px;
	left: 350px;
	transform: translate(0%,-5%);
	border-radius: 10px;
	padding: 25px;
}
table {
        color:white;
        font-size:150%;
        text-align:center;
    }
    .table td, .table th {
        font-size: 30px;
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
    <h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>    
    <hr>
    <div align="center">
    <div class="main">    
    <form method="post"  action="Addmedicineprocess.jsp" name="add_form">  
   
        
        <div class="form"> 
        <h2>Fill Medicine details</h2><br><br>
         <table align="center">   
            
            <tr>
                <td>Medicine Name: </td>
                   <td> <input type="text"  id="mname" name="mname" placeholder="Medicine Name"></td>
                    </tr>
                 <tr>
                <td> Medicine Type: </td>  
                   <td>  <input type="text" id="mtype" name="mtype" placeholder="capsule or tablet or syrup">  </td>
                    </tr>
                 <tr>
                <td> Medicine Brand: </td>
                   <td>  <input type="text" id="mbrand" name="mbrand" ></td>
                    </tr>
                 <tr>
                <td> Quantity(Stock): </td> 
                    <td> <input type="Number" id="mqty" name="mqty"> </td> 
                     </tr>
                 <tr>  
                <td>      Price: </td> 
                   <td>  <input type="number" name="mprice" id="mprice"> </td> 
                    </tr>  
                  <tr>
                <td> Expiry Date: </td>  
                   <td>  <input type="text" id="mexp" name="mexp" > </td> 
                    </tr> 
                
                   <tr>
					<td colspan="2" align="center"><input type="submit" value="Add" /></td>
					
				</tr>
				<tr>
				<td colspan="2" align="center"><input type="reset" value="Reset" /></td>
				</tr>
               </table>
                </div>     
              
    </form> 
</div>
</div>  
</body>
</html>