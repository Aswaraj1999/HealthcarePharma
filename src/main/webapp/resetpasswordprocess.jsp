<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password Process...</title>
</head>
<body>
<div align="center">
<!--Establishing connection with database-->
			<!--Code for selecting User details from userdata table-->
<%
		String userid = request.getParameter("userid");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root",
					"Arjun@1234");
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM userdata where UserID = '" + userid + "' ");
			rs.next();
			String countrow = rs.getString(1);
			if(countrow.equals("1")){
			if(password1.equals(password2)){
				String sql = "UPDATE userdata " + " SET Password  = '" + password1 + "' " + " WHERE UserID = '"
						+ userid + "' ";
				int i = st.executeUpdate(sql);
				out.println("Password Reset Successfully..<a href='login.jsp'>Login</a> ");
			}else{
				out.println("Password Not Matched <a href='resetpassword.jsp'>Try Again</a>");
			}
			}else{
				out.println("User Id Not Exist <a href='resetpassword.jsp'>Try Again</a> ");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</div>
</body>
</html>