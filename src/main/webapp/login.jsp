<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginPage</title>
<style>
.main {
	width: 100%;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.5) 50%,
		rgba(0, 0, 0, 0.5) 50%), url(1.jpg);
	background-position: center;
	background-size: cover;
	height: 100vh;
}

.logo1 {
	color: #ff7200;
	font-size: 35px;
	font-family: Arial;
	padding-left: 20px;
	padding-top: 10px;
	margin-top: 5px
}

input[type=text], input[type=password] {
	width: 50%;
	margin: 8px 0;
	padding: 12px 20px;
	display: inline-block;
	border: 2px solid #ff7200;
	box-sizing: border-box;
}

button {
	background-color: #ff7200;
	width: 20%;
	display:inline-block;
	color: white;
	padding: 15px;
	margin: 10px 0px;
	border: none;
	cursor: pointer;
	font-size: 20px;
}

label {
	color: #fff;
	letter-spacing: 1px;
	font-size: 25px;
	font-weight: 500;
}

.form {
	width: 50%;
	height: 380px;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.8) 50%,
		rgba(0, 0, 0, 0.8) 50%);
	position: absolute;
	top: 140px;
	left: 350px;
	transform: translate(0%, -5%);
	border-radius: 10px;
	padding: 25px;
}

span {
	color: #fff;
	font-size: 20px;
	top: 400px;
}
</style>
</head>
<body>
	<div align="center">
		<h1 class="logo1">WELCOME TO HEALTHCARE PHARMA</h1>
<!--Customer Login Page-->
		
		<div class="main">
			<form action="loginprocess.jsp" method="post">

				<div class="form">
					<label>Username :</label> <br> <input type="text"
						name="userid" required /><br> <br> <label class="label">
						Password :</label><br> <input type="password" name="password"
						required /><br> <br>
					<button type="submit">Login</button>
					<br> <br>
			</form>
			<form action="Adminlogin.jsp">
				<button type="submit">Admin login</button>
			</form>
			<br> <br> <span>If not registered yet....<a
				href="registration.jsp">Register Here</a></span> <br> <br> <span>In
				case you Forgot your Username<a href="recoveruserid.jsp">Get
					Username</a>
			</span> <br> <br> <span>Forgot Password<a
				href="recoverpassword.jsp">click Here</a></span> <br> <br> <span>Reset
				Password<a href="resetpassword.jsp">click Here</a>
			</span>
		</div>

	</div>
	</div>
</body>
</html>