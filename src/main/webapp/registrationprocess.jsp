<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <div align="center">
<%
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String cno = request.getParameter("cno");
	String category = request.getParameter("category");
	String email = request.getParameter("email");
	String qans = request.getParameter("qans");
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	%>
	<!--Established connection with database-->
			<!--Code for selecting User details from Userdata table-->
	<% 
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root",
				"Arjun@1234");
		Statement st = conn.createStatement();
		String strQuery = "SELECT COUNT(*) FROM userdata where UserID='" + userid + "' OR Email = '" + email + "' ";
		ResultSet rs = st.executeQuery(strQuery);
		rs.next();
		String Countrow = rs.getString(1);

		if (Countrow.equals("0")) {
			int i = st.executeUpdate(
					"insert into userdata(Fname,Lname,Age,Gender,ContactNo,Email,UserCategory,QAnswer,UserID,Password) values('"
							+ fname + "','" + lname + "','" + age + "','" + gender + "','" + cno + "','"
							+ email + "','" + category + "','" + qans + "','" + userid + "','" + password + "')");
			out.println("Thank you for register ! Please<a href='login.jsp'>Click Here</a> for login.");
		} else {
			out.println("Registration Not Completed..userid or email already exist..  <a href='registration.jsp'>Try Again </a>");
		}
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
</div>