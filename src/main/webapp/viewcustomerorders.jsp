<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view customer orders</title>
<style>
table, th, td {
	border: 2px solid #ff7200;
	border: 1px solid;
	font-size: 20px;
	width: 200px;
	height: 50px;
	color: white;
	table-layout: auto;
	border-collapse: collapse;
}
table{
position:relative; top:50px;
}

th {
	background-color: #ff7200;
}

button {
	background-color: #ff7200;
	width: 10%;
	color: white;
	padding: 5px;
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
</style>
</head>
<body>
	<h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>
	<div align="center" class="main">
		<table align="center">
			<thead>
				<tr>
					<th>OrderID</th>
					<th>UserID</th>
					<th>Patient Name</th>
					<th>Doctor's Name</th>
					<th>Age</th>
					<th>Address</th>
					<th>Medicine Name</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Status</th>
					<th colspan="1">Action</th>
				</tr>
			</thead>
			<!--Established connection with database-->
			<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from orderdetails");
			%>
     <!--selecting data from order details table-->
			<%
			while (rs.next()) {
				String orderid = rs.getString("orderid");
				String userid = rs.getString("Userid");
			%>
			<tr align="center">
				<td><%=orderid%></td>
				<td><%=userid%></td>
				<td><%=rs.getString("Pname")%></td>
				<td><%=rs.getString("Dname")%></td>
				<td><%=rs.getString("Age")%></td>
				<td><%=rs.getString("Addr")%></td>
				<td><%=rs.getString("Mname")%></td>
				<td><%=rs.getString("mqty")%></td>
				<td><%=rs.getString("mprice")%></td>
				<td><%=rs.getString("status")%></td>
				<td><a href='editcustomerorderstatus.jsp?orderid=<%=orderid%>';>Edit
						 Status</a></td>
			</tr>


			<%
			}
			%>
		</table>
		<br> <br><br><br>
		<button onclick="location.href='Adminhome.jsp'">Back to Home</button>

		<%
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>

	</div>
</body>
</html>