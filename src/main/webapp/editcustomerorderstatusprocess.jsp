<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Customer Order Status....</title>
</head>
<body>
<div align="center">
<!--Established connection with database-->
<!--Updated customer order status in orderdetails table-->
	<%
	String orderid = request.getParameter("orderid");
	String userid = request.getParameter("userid");
	String pname = request.getParameter("pname");
	String dname = request.getParameter("dname");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	String mname = request.getParameter("mname");
	String mqty = request.getParameter("mqty");
	String mprice = request.getParameter("mprice");
	String status = request.getParameter("status");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
		Statement st = conn.createStatement();
		String strQuery = "UPDATE orderdetails " + "set status='" + status + "' " + " where orderid ='"
		+ orderid + "' ";
		int i = st.executeUpdate(strQuery);
		if (i == 1) {
			out.println("Order Details Updated Successfully!!!<a href='viewcustomerorders.jsp'>Click Here</a> to go back");
		}

	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
	%>
	</div>
</body>
</html>