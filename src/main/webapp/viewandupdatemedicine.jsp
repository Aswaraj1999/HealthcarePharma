<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine Information</title>
<style>

table, th, td {
        border: 2px solid #ff7200;   
  border: 1px solid ;
  font-size:20px;
  width: 180px;
  height:50px;
  color:white;
  table-layout:fixed;
  border-collapse: collapse;
  
  
   
}
table{
position:relative; top:50px
}
th{
	background-color: #ff7200;
}
 button {   
       background-color: #ff7200;   
       width: 10%;  
        color:white;   
        padding: 5px;   
        margin: 20px 0px;   
        border: none;   
        cursor: pointer;
        font-size: 20px;   
         }

    .main{
    width: 100%;
    background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(1.jpg);
    background-position: center;
    background-size: cover;
    height: 200vh;
} 
.logo1{
    color: #ff7200;
    font-size: 35px;
    font-family: Arial;
    padding-left: 450px;
   
    padding-top: 10px;
    margin-top: 5px
}
</style>
</head>
<body>

			<!--Code for viewing and updating medicine details-->
<h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>
<div align="center" class="main">
<table align="center">
			<thead>
			<tr>
			<th>Medicine Name</th>
			<th>Medicine Type</th>
			<th>Brand</th>
			<th>Quantity(stock)</th>
			<th>Price</th>
			<th>Expiry Date</th>
			<th colspan="2">Actions</th>
			</tr>
			</thead>
			<!--Establishing connection with database-->
    <%
  try{
	  Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
		Statement st = con.createStatement();
		ResultSet rs =st.executeQuery("select * from medicinedata");
		%>
		<!--selecting medicine data from medicinedetails table-->
		<%
		while(rs.next()){
			String Mediname=rs.getString("Mediname");
		%>
			<tr align="center">
			<td><%=Mediname %></td>
			<td><%=rs.getString("Meditype") %></td>
			<td><%=rs.getString("Medibrand") %></td>
			<td><%=rs.getString("Qty") %></td>
			<td><%=rs.getString("Price") %></td>
			<td><%=rs.getString("Expdate") %></td>
			<td><a href='editmedicine.jsp?Mediname=<%=Mediname%>';>Edit</a></td>
			<td><a href='deletemedicine.jsp?Mediname=<%=Mediname%>';>Delete</a></td>
			</tr>
			
		
		<%
		
		}
		%>
		</table>
		<br><br><br><br>
		<button onclick="location.href='Adminhome.jsp'">Back to Home</button>
		
		<%	 
  }
catch (Exception e) {
	e.printStackTrace();
      }
%>

</div>
</body>
</html>