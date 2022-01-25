<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Customer Order Status..</title>
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
		width: 50%;   
		margin: 8px 0;  
		padding: 12px 20px;   
		display: inline-block;   
		border: 2px solid #ff7200;   
		box-sizing: border-box; 
	}
	input[type=submit] {   
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
	height: 800px;
	background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
	position: absolute;
	top: 140px;
	left: 350px;
	transform: translate(0%,-5%);
	border-radius: 10px;
	padding: 25px;
}
table {
        color:white
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
		String orderid = request.getParameter("orderid");
		%>
		
		<form action="editcustomerorderstatusprocess.jsp" method="post">
			<table align="center" class="form">
				
				<br>
						<h2>Order Information</h2>
					
					<!--Established connection with database-->
					<!--Displayed All Order data from orderdetails table-->
				<%
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from orderdetails where orderid='" + orderid + "'");
				%>

				<%
				while (rs.next()) {
					String userid = rs.getString("Userid");
					String pname = rs.getString("Pname");
					String dname = rs.getString("Dname");
					String age = rs.getString("Age");
					String addr = rs.getString("Addr");
					String mname = rs.getString("Mname");
					String mqty = rs.getString("mqty");
					String mprice = rs.getString("mprice");
					String status = rs.getString("status");
				%>
					<tr>
					<td>OrderID:</td>
					<td><input type="text" name="orderid" value="<%=orderid%>"
						readonly /></td>
				</tr>
				<tr>
					<td>UserID:</td>
					<td><input type="text" name="userid" value="<%=userid%>"
						readonly /></td>
				</tr>
				<tr>
					<td>Patient Name:</td>
					<td><input type="text" name="pname" value="<%=pname%>"
						readonly /></td>
				</tr>
				<tr>
					<td>Doctor's Name:</td>
					<td><input type="text" name="dname" value="<%=dname%>"
						readonly /></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><input type="text" name="age" value="<%=age%>" readonly /></td>
				</tr>
					<tr>
					<td>Address:</td>
					<td><input type="text" name="addr" value="<%=addr%>" readonly /></td>
				</tr>
					<tr>
					<td>Medicine Name:</td>
					<td><input type="text" name="mname" value="<%=mname%>" readonly /></td>
				</tr>
				<tr>
					<td>Quantity:</td>
					<td><input type="text" name="mqty" value="<%=mqty%>" readonly/></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><input type="text" name="mprice" value="<%=mprice%>" readonly /></td>
				</tr>
					<tr>
					<td>Status:</td>
					<td> <select name="status" id="status">
					<option value='<%=status %>'><%=status%></option>
					<option value='Packed'>Packed</option>
					<option value='Shipped'>Shipped</option>
					<option value='Delivered'>Delivered</option>
					</select></td>
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
		</form>
	</div>
</body>
</html>