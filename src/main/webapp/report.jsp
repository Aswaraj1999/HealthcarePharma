<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine Information</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("#btnPrint").live("click", function () {
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>Medicine Stock Report</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        });
    </script>
 <style>


table, th, td {
       
  border: 1px solid;
  border-collapse: collapse;
  font-size:20px;
  width: 85%;
  
  color:white;
  table-layout:fixed;
  padding:20px;
  font-weight:bold;
 
  
  
   
}
table{
position:relative; top:50px;
height:500px;
}
th{
	background-color: #ff7200;
}
 button {   
       background-color: #ff7200;   
       width: 15%;  
        color:white;   
        padding: 5px;   
        margin: 20px 0px;   
        border: none;   
        cursor: pointer;
        font-size: 20px;   
         }

    .main{
    width: 100%;
    background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(1.jpg);
    background-position: center;
    background-size: cover;
    height: 150vh;
} 
.logo1{
    color: #ff7200;
    font-size: 35px;
    font-family: Arial;
    padding-left: 450px;
   
    padding-top: 10px;
    margin-top: 5px
}
</style>
</head>
<body>

<h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>
<form>
<div class="main">
<div id="dvContainer">
<table align="center">
			<thead>
			<tr>
			<th>Medicine Name</th>
			<th>Medicine Type</th>
			<th>Brand</th>
			<th>Quantity(stock)</th>
			<th>Price</th>
			<th>Expiry Date</th>
			</tr>
			</thead>
			<!--Established connection with database-->
			<!--Code for displaying medicine details-->
    <%
  try{
	  Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthpharma", "root", "Arjun@1234");
		Statement st = con.createStatement();
		ResultSet rs =st.executeQuery("select * from medicinedata");
		%>
		
		<%
		while(rs.next()){
		%>
			<tr align="center">
			<td><%=rs.getString("Mediname") %></td>
			<td><%=rs.getString("Meditype") %></td>
			<td><%=rs.getString("Medibrand") %></td>
			<td><%=rs.getString("Qty") %></td>
			<td><%=rs.getString("Price") %></td>
			<td><%=rs.getString("Expdate") %></td>
			</tr>
			
		
		<%
		
		}
		%>
	
		</table><br><br><br><br><br>
		</div>
		<div align="center"> 
			<button id="btnPrint">Download</button>
			</div>  
		<%	 
  }
catch (Exception e) {
	e.printStackTrace();
      }
%>
</div>
</form>
</body>
</html>