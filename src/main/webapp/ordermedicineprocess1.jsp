<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Medicine...</title>
</head>
<body>
	<div align="center">
	<!--Established connection with database-->
			<!--Code for selecting data from medicine details-->
		<%
		String userid=request.getParameter("userid");
		String pname = request.getParameter("pname");
		String dname = request.getParameter("dname");
		String age = request.getParameter("age");
		String addr = request.getParameter("addr");
		String medicine = request.getParameter("medicine");
		int qty = Integer.parseInt(request.getParameter("qty"));
		double finalprice=0.0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM medicinedata where Mediname ='" + medicine + "' ";
			ResultSet rs = st.executeQuery(strQuery);
			rs.next();
			double price = Double.parseDouble(rs.getString("Price"));
			 finalprice = price * qty;
			out.println("Price required Rs."+finalprice);
			

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		%>
		<button onclick="location.href='ordermedicineprocess.jsp?userid=<%=userid%>&pname=<%=pname%>&dname=<%=dname%>&age=<%=age%>&addr=<%=addr%>&medicine=<%=medicine%>&qty=<%=qty%>&price=<%=finalprice%>';">Confirm Order</button>
	</div>

</body>
</html>