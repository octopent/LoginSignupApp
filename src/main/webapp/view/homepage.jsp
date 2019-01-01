
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
}

.banner {
	margin: 10px 0;
	background: skyblue;
	padding: 20px;
	font-size: 22px;
}

.dashboard {
	background: #DEE9D8;
	padding: 15px;
}

.dashboard>h1 {
	font-size: 18px;
}

.dashboard>button {
	margin: 10px;
	height: 60px;
	width: 150px;
	font-size: 14px;
	background: #50F733;
	padding: 10px;
	border-radius: 5px;
}

.dashboard>button:hover {
	height: 63px;
	width: 153px;
	color: #ffffff;
	font-weight: bold;
	background: #4DDA0B;
}

.passwordChangeArea {
	font-size: 16px;
	margin: 10px 0;
	padding: 20px 60px;;
	background: #E4FEFE;
}

.passwordChangeArea>h1 {
	font-size: 20px;
}

.passwordChangeArea>form>input {
	margin: 10px 0;
	width: 240px;
	padding: 5px;
	font-size: 18px;
	border-radius: 3px;
}

.passwordChangeArea>form>button {
	width: 240px;
	padding: 10px;
	background: #19ACB1;
	color: white;
	border-radius: 5px;
	font-size: 18px;
}

.projectArea {
	
}

.memberArea {
	
}
</style>
</head>
<body>
	Welcome ${user.username}. Your password is <b>${user.password}</b> 

	<div class="banner">Welcome back ${user.username}!</div>

	<div class="dashboard">
		<h1>User Dashboard</h1>
		<button name="changePass">Change Password</button>
		<button name="projects">My Projects</button>
		<button name="members">My Team-members</button>
	</div>

	<div class="passwordChangeArea">
		<h1>Change/Update Password</h1>
		<form action="../updatepass" method="post">
			<br>
			<br> Username: <br>
			<input type="text" name="username" /> <br>
			<br> New Password: <br>
			<input type="text" name="newpass" /> <br>
			<br> Confirm Password: <br>
			<input type="text" name="confnewpass" /> <br>
			<br>
			<button type="submit" value="updatepassword">Update Password</button>
		</form>
	</div>

	<div class="projectArea"></div>

	<div class="memberArea"></div>
</body>
</html>