<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>


<style type="text/css">

.container {
    position: relative;
    text-align: center;
    color: black;
    }
.centered {
    position: absolute;
    top: 80%;
    left: 51%;
    transform: translate(-50%, -50%);
	}
.bottomcentered{
    position: absolute;
    top: 90%;
    left: 51%;
    transform: translate(-50%, -50%);
	}
</style>
</head>
<body>

	<center>
		<div class="container">
			<img src="glow_team_effort.png"  >
			<div class="centered">
				<font size="4px"><b>Welcome To Marlabs Team Management</b></font>
			</div>	
			<div class="bottomcentered">
				<button  onclick="window.location.href='${pageContext.request.contextPath}/login'">Manager Login</button>
				<button  onclick="window.location.href='${pageContext.request.contextPath}/team/employeeList'">View Team lists</button>
			</div>
		</div>
	</center>
</body>
</html>