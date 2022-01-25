<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Process....</title>
</head>
<body>
<div align="center">
	<!--Established Connection with database -->
		<!--Code for deleting medicine details-->
	<%
	String mediname = request.getParameter("Mediname");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
		Statement st = conn.createStatement();
		String strQuery = "Delete from  medicinedata where Mediname='"+mediname+"'";
		int i = st.executeUpdate(strQuery);
		if (i == 1) {
			out.println("Medicine Details deleted Successfully <a href='viewandupdatemedicine.jsp'>Click to View</a>");
		}

	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
	%>
	</div>
</body>
</html>