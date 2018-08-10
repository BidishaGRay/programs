<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Custom style -->
<link href="../static/css/style.css" th:href="@{/css/style.css}"
	rel="stylesheet" />
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 3px solid #f1f1f1;
	width: 30%;
	align: centre;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}
</style>
</head>
<body>
	<h3>${msg}</h3>
	<center>
		<h2>Login Form</h2>
		<form modelAttribute=admin action="${pageContext.request.contextPath}/admin/check" method="post">
			<div class="container">
				<label for="uname"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="userid" required> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required>

				<button type="submit">Login</button>
			</div>


		</form>
	</center>
</body>
</html>
