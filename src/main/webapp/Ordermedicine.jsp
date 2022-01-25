<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>    
<html>    
<head>    
    <title>Order Medicine</title>
    <style>
        .main{
        width: 100%;
        background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(1.jpg);
        background-position: center;
        background-size: cover;
        height: 150vh;
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
        height: 900px;
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
<!--Established connection with database-->
<!--Code for selecting medicine name field from medicine details-->
 <% 
try{
	Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
Statement st = con.createStatement();
ResultSet rs=st.executeQuery("select * from medicinedata");

%>    
    <h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>  
    <hr>
    <div align="center"> 
    <div class="main"> 
    <form method="post" id="form" action="ordermedicineprocess1.jsp" name="reg_form" onsubmit="return validate()">  
        <div class="form">   
             
        <h2>Order Medicine</h2>  <br> <br>   
            
                <label>UserID: </label> <br>   
                    <input type="text"  id="userid" name="userid" placeholder="Userid"> <br><br>   
                  
                <label>Patient Name: </label>  <br>   
                    <input type="text"  id="pname" name="pname" placeholder="Patient Name">  <br><br>   
                    
                <label>Doctor's Name: </label>    <br> 
                    <input type="text" id="dname" name="dname" placeholder="Doctor's Name">  <br><br>   
                    
                <label >Age:</label><br> 
                    <input type="number" id="age" name="age" ><br><br> 
                    
                     <label >Address:</label><br> 
                    <input type="text" id="addr" name="addr" ><br><br> 
                    
                <label>Medicine: </label><br> 
                     <select id="medicine" name="medicine">      
                    <% 
                        while(rs.next()){
                        String medicinename=rs.getString("Mediname");
                        
                    %>
                            
                    <option value="<%=medicinename%>"><%=medicinename%></option>
              
                    <%} %>
                    </select><br><br> 
                <label >Quantity:</label><br> 
                     <input type="number" id="qty" name="qty" required placeholder="Enter Quantity Here" ><br><br> 
                    
                     <button type="submit">Add</button>   
                     <button type="reset">Reset</button><br><br>   
               
            <% 
         }
             catch (Exception e) {
     			e.printStackTrace();
         	}


            %>
            
                         
        </div>
    </form> 
</div>
</div>     
</body>    
</html> 