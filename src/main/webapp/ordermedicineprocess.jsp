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

<!--Established connection with database-->
			<!--Code for inserting orderdata in order details table-->
	<div align="center">
		<%
		String userid = request.getParameter("userid");
		String pname = request.getParameter("pname");
		String dname = request.getParameter("dname");
		String age = request.getParameter("age");
		String addr = request.getParameter("addr");
		String medicine = request.getParameter("medicine");
		int qty = Integer.parseInt(request.getParameter("qty"));
		double finalprice = Double.parseDouble(request.getParameter("price"));
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM medicinedata where Mediname ='" + medicine + "' ";
			ResultSet rs = st.executeQuery(strQuery);
			rs.next();
			int qty2 = Integer.parseInt(rs.getString("Qty"));
			int qty3 = qty2 - qty;
			if (qty < qty2) {

				int i = st.executeUpdate("insert into orderdetails(Userid,Pname,Dname,Age,Addr,Mname,mqty,mprice) values('"
				+ userid + "','" + pname + "','" + dname + "','" + age + "','" + addr + "','" + medicine + "','" + qty
				+ "','" + finalprice + "')");
				out.println(
				"Thank you your order has been partially placed ! Please <a href='payment.jsp?'>Click Here</a> for Payment");
			} else {
				out.println("Order can't be processed.  <a href='Ordermedicine.jsp'>Try Again </a>");
			}
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		%>

	</div>
</body>
</html>