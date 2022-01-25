<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Medicine</title>
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
		width: 80%;   
		margin: 8px 0;  
		padding: 12px 20px;   
		display: inline-block;   
		border: 2px solid #ff7200;   
		box-sizing: border-box; 
	}
	input[type=submit] {   
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
	height: 550px;
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
	<div align="center" class="main">
		<%
		String Mediname = request.getParameter("Mediname");
		%>
		<form action="editmedicineprocess.jsp" method="post">
		<div class="form">
		<h2>Medicine Information</h2> 
		<!--Established connection with database-->
			<!--Code for editing medicine details-->
		
			<table align="center">
				<%
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from medicinedata where Mediname='" + Mediname + "'");
				%>

				<%
				while (rs.next()) {
					String meditype = rs.getString("Meditype");
					String medibrand = rs.getString("Medibrand");
					String qty = rs.getString("Qty");
					String price = rs.getString("Price");
					String exp = rs.getString("Expdate");
				%>
				<tr>
					<td>Mediname:</td>
					<td><input type="text" name="mediname" value="<%=Mediname%>"
						readonly /></td>
				</tr>
				<tr>
					<td>MediType:</td>
					<td><input type="text" name="meditype" value="<%=meditype%>"
						readonly /></td>
				</tr>
				<tr>
					<td>MediBrand:</td>
					<td><input type="text" name="medibrand" value="<%=medibrand%>"
						readonly /></td>
				</tr>
				<tr>
					<td>Quantity:</td>
					<td><input type="text" name="qty" value="<%=qty%>" /></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><input type="text" name="price" value="<%=price%>" /></td>
				</tr>
				<tr>
					<td>Expiry Date:</td>
					<td><input type="text" name="exp" value="<%=exp%>" readonly /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="Update" /></td>
				</tr>


				<%
				}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</table>
			</div>
		</form>
	</div>
</body>
</html>