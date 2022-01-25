<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>recover user id process....</title>
</head>
<body>
<div align="center">
<!--Established connection with database-->
			<!--Code for selecting Userdetails from userdata table -->
<%
		String qans = request.getParameter("qans");
		String cno = request.getParameter("cno");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root",
					"Arjun@1234");
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM userdata WHERE ContactNo = '" + cno + "' ");
			if (rs.next()) {
				if (rs.getString("QAnswer").equals(qans)) {

					String userid = rs.getString("UserID");
					out.println("Your User Id Is " + userid );
					out.println("Go To Login Page <a href='login.jsp'>Click Here</a>");

				} else {
					out.println("Wrong Answer to Question..Please Answer it Correctly. <a href='recoveruserid.jsp'>Try Again</a>");
				}
			}else{
				out.println("Wrong Mobile Number Entered....<a href='recoveruserid.jsp'>Try Again</a> ");
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
	%>
</div>
</body>
</html>