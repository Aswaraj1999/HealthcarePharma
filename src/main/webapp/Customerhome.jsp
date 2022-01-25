<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard</title>
<style>
.logo1 {
	color: #ff7300;
	font-size: 35px;
	font-family: Arial;
	padding-left: 20px;
	padding-top: 10px;
	margin-top: 5px
}

.main {
	width: 100%;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.5) 50%,
		rgba(0, 0, 0, 0.5) 50%), url(1.jpg);
	background-position: center;
	background-size: cover;
	height: 100vh;
}

.menu {
	width: 400px;
	float: left;
	height: 70px;
}

ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}

ul li {
	 list-style: none;
    margin-left: 100px;
    margin-top: 27px;
    font-size: 16px;
}

ul li a {
	text-decoration: none;
	color: #fff;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
}

ul li a:hover {
	color: #ff7200;
}

.search {
	width: 330px;
	float: left;
	margin-left: 450px;
	margin-top: 32px;
}

.srch {
	font-family: 'Times New Roman';
	width: 160px;
	height: 40px;
	/* background: transparent; */
	border: 1px solid #ff7200;
	margin-top: 13px;
	color: #fff;
	/* border-right: none; */
	font-size: 16px;
	float: left;
	padding: 10px;
	border-bottom-left-radius: 5px;
	border-top-left-radius: 5px;
	border-bottom-right-radius: 5px;
	border-top-right-radius: 5px;
}

.btn {
	width: 100px;
	height: 40px;
	background: #ff7200;
	border: 2px solid #ff7200;
	margin-top: 13px;
	color: white;
	font-size: 15px;
	border-bottom-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: 0.2s ease;
	cursor: pointer;
}

.btn:hover {
	color: #000;
}

.btn:focus {
	outline: none;
}

.srch:focus {
	outline: none;
}

.navbar {
	width: 1200px;
	height: 75px;
	margin: auto;
}
</style>
</head>
<body>
	<!--Customer Dashboard-->
	<div align="center">
		<h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>
		<h2 class=logo>
			<%
			String userid = (String) session.getAttribute("userid");
			out.println("Welcome " + userid);
			%>
		</h2>
		<div class="main">
			<div class="navbar">
				<div class="menu">
					<ul>
						<li><a href="Medicineinfo.jsp">View Available Medicine</a></li>
						<li><a href="Ordermedicine.jsp">Order Medicine</a></li>
						<li><a href="trackorders.jsp">Track Order Status</a></li>
						<li><a href="help.jsp">Help</a></li>
						<li><a href="login.jsp">Log Out</a></li>
					</ul>
				</div>
				<div class="search">
					<input class="srch" type="search" name="" placeholder="Type text">
					<a href="#">
						<button class="btn">Search</button>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>