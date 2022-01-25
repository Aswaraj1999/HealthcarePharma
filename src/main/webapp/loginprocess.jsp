<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head>
<style>
h3 {
	text-align: center
}
</style>
</head>
<div align="center">
<!--Established connection with database-->
			<!--User Validation-->
	<%
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		try{
			Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from userdata where UserID= '" + userid + "' and Password= '" + password + "' and UserCategory='Customer' ");
		boolean flag=false;
		while(rs.next()){
			session.setAttribute("userid",userid);
			response.sendRedirect("Customerhome.jsp");
		
		}
				if (flag) {				
	%>
	<br>
	<h2>WELCOME TO HEALTHCARE PHARMA</h2>
  <form action="Medicineinfo.jsp">
	<input type="submit" value="View Available Medicines" /><br>
	
	</form>
     <form action="AddMedicine.jsp">
		<input type="submit" value="Add Medicines" />
	</form>
	
	</form>
     <form action="AddMedicine.html">
		<input type="submit" value="Delete Medicines" />
	</form>
	
	</form>
     <form action="login.jsp">
		<input type="submit" value="Log Out" />
	</form>
	<%
	
				}
		
				
				else{		
				out.println("<b>Invalid password or username.<a href='login.jsp'>Try Again</a></b>");
		}
		

				
		} catch (Exception e) {
			e.printStackTrace();
	}
	%>
</div>