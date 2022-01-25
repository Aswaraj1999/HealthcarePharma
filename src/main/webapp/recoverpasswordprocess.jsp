<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recoverpassword process...</title>
</head>
<body>
<div align="center">
     <!--Established connection with database-->
			<!--Code for selecting userdetails from userdata table-->
<%
		String userid = request.getParameter("userid");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root",
					"Arjun@1234");
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM userdata where UserID= '" + userid + "' ");
			rs.next();
			String Countrow = rs.getString(1);
			if (Countrow.equals("1")){
				
				out.println("Reset Your Password <a href='resetpassword.jsp'>here</a> ");
			}else{
				out.println(" Wrong User Id <a href='recoverpassword.jsp'>Try Again</a> ");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	</div>
</body>
</html>