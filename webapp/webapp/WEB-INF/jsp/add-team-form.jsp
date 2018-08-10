<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Add Team</title>
<style>
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
	<h1>Add Team</h1>
	<p>Here you can add a new team members</p>
	</center>
	<div class="container main-content form">
		<div class="row">
			<form:form method="POST" modelAttribute="team" action="${pageContext.request.contextPath}/team/add">
				<input type="hidden" th:field="*{id}" />
				<div class="form-group">
					<label>Name</label>
					<form:input name="name" path="name" />
				</div>
				<div class="form-group">
					<label>Rating</label>
					<form:input name="rating" path="rating" />
				</div>
				<button type="submit" class="btn btn-primary">Add</button>
			</form:form>
		</div>
	</div><!-- /.container -->

	<p>
		<a href="${pageContext.request.contextPath}/index">Home page</a>
	</p>
</body>
</html>