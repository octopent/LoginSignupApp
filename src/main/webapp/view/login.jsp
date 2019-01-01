<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
body {
	font-family: Lato, sans-serif;
}
.userform {
	background-color: skyblue;
	width: 400px;
	height: 300px;
	padding: 40px;
	position: fixed;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}
.userform>h1 {
	font-size: 18px;
	margin: 0 0 50px 0;
}
.userform>form>input {
	margin: 10px;
	font-size: 18px;
	border-radius: 5px;
}
.userform>form>button {
	display: inline-block;
	border-radius: 4px;
	background-color: #066910;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 16px;
	padding: 10px 20px;
	width: 120px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}
.usermenu {
	width: 100%;
	text-align: center;
}
.usermenu>form>button {
	font-size: 16px;
	margin: 5px;
	width: 90px;
	height: 90px;
}
.usermenu>form>button:hover {
	background: #DB7A7A;
}
</style>
</head>
<body>
<body>
	<div class="userform">
		<h1>FILL UP THE FORM BELOW TO PROCEED!</h1>
		
		<form action="../login" method="post">
			Username: <input type="text" name="username" /><br> 
			Password: <input type="password" name="password" /><br> <br>
			<div class="radiogrp">
				Choose type: <input type="radio"> User <input type="radio">
				Admin
			</div>
			<br> <input type="submit" value="login" />
			<button type="reset" id="resetBtn">Reset</button>
		</form>
		
	</div>
</body>
</body>
</html>