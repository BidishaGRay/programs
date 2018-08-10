<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head th:fragment="head">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Home page</title>
<style type="text/css">
.exactCenter {
	width: 400px;
	height: 300px;
	position: fixed;
	top: 50%;
	left: 42%;
	margin-top: -110px;
	margin-left: -110px;
	border: 4px solid #f1f1f1;
	border-color: grey;
}

.main-content {
	min-height: 500px;
	max-width: 700px;
	margin-top: 70px;
}

.list {
	max-width: 800px;
}

.form {
	max-width: 450px;
}

.row {
	margin-top: 30px;
}

.table th, td {
	text-align: center;
}

.field-error {
	border: 1px solid #ff0000;
	margin-bottom: 10px;
}
</style>
<!-- Bootstrap -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	th:href="@{/webjars/bootstrap/3.3.7/css/bootstrap.min.css}"
	rel="stylesheet" />

</head>
<body>

	<center>
	<div class="exactCenter">
		<h1 align="center">Welcome ${msg}</h1>



		<div align="center">
			<button class="btn btn-warning pull-left"
				onclick="window.location.href='${pageContext.request.contextPath}/team/save'">
				<span class="glyphicon glyphicon-plus"></span> Add new team
			</button>

			<button class="btn btn-warning pull-left"
				onclick="window.location.href='${pageContext.request.contextPath}/team/list'">
				Team list</button>

			<button class="btn btn-warning pull-left"
				onclick="window.location.href='${pageContext.request.contextPath}/'">
				<span class="glyphicon glyphicon-plus"></span> Logout
			</button>
		</div>
	</div>
	</center>
</body>
</html>