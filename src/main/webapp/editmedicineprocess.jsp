<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Process....</title>
</head>
<body>
<div align="center">
<!--Established connection with database-->
			<!--Code for updating medicine details-->
	<%
	String mediname = request.getParameter("mediname");
	String meditype = request.getParameter("meditype");
	String medibrand = request.getParameter("medibrand");
	String qty = request.getParameter("qty");
	String price = request.getParameter("price");
	String exp = request.getParameter("exp");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
		Statement st = conn.createStatement();
		String strQuery = "UPDATE medicinedata " + "set Qty='" + qty + "',Price='" + price + "' " + " where Mediname ='"
		+ mediname + "' ";
		int i = st.executeUpdate(strQuery);
		if (i == 1) {
			out.println("Medicine Details Updated Successfully <a href='viewandupdatemedicine.jsp'>Click to View</a>");
		}

	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
	%>
	</div>
</body>
</html>