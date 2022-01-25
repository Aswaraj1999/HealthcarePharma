<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <div align="center">
<%
	String mname = request.getParameter("mname");
	String mtype = request.getParameter("mtype");
	String mbrand= request.getParameter("mbrand");
	String mqty = request.getParameter("mqty");
	String mprice  = request.getParameter("mprice");
	String mexp = request.getParameter("mexp");
	%>
    <!--Esablishing Connection with database-->
    <!-- After Verifying Inserting Medicine Details in Medicinedata table-->
    <%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root",
				"Arjun@1234");
		Statement st = conn.createStatement();
		String strQuery = "SELECT COUNT(*) FROM medicinedata where Mediname ='" + mname + "' AND Meditype = '" + mtype + "' ";
		ResultSet rs = st.executeQuery(strQuery);
		rs.next();
		String Countrow = rs.getString(1);

		if (Countrow.equals("0")) {
			int i = st.executeUpdate(
					"insert into medicinedata(Mediname,Meditype,Medibrand,Qty,Price,Expdate) values('"
							+ mname + "','" + mtype + "','" + mbrand + "','" + mqty + "','" + mprice + "','"
							+ mexp + "')");
			out.println("Thank you Added Medicine Details Saved Successfully ! Please <a href='Adminhome.jsp'>Click Here</a> to return to home page ");
		} else {
			out.println("Medicine deatils Not Added.. as this details already exist..  <a href='AddMedicine.jsp'>Try Again </a>");
		}
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
</div>