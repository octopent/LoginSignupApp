<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginSignupApp</title>
<style>
body {
	font-family: Lato, sans-serif;
}

.choice {
	text-align: center;
	background-color: skyblue;
	width: 50%;
	height: 25%;
	padding: 50px 0;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.choice>a>button {
	width: 144px;
	height: 72px;
	margin: 10px;
	border-radius: 5px;
	background: greenyellow;
	font-size: 18px;
}
</style>
</head>
<body>
	<div class="choice">
		<a href="login.jsp">
			<button>Login</button>
		</a> <a href="signup.jsp">
			<button>Signup</button>
		</a>
	</div>
</body>
</html>