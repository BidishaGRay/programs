<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>List of teams</title>
<!-- Bootstrap -->
    <link
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            th:href="@{/webjars/bootstrap/3.3.7/css/bootstrap.min.css}"
            rel="stylesheet" />
            
            
  <style type="text/css">
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
.head1{
	text-align: centre;
} 
 .divcenter {
 	text-align: centre;
 }
  
  </style>
</head>
<body>
	
	<div class="page-header divcenter">
	<center><h1>List of Teams</h1>
	<a href="${pageContext.request.contextPath}/index">Home page</a>
	</center>
	</div>
	
	<div class="container text-center" id="tasksDiv">
		<div class="table-responsive">
			<table class="table table-striped table-bordered">
				
				<thead>
					<tr class="">
						<th>Id</th>
						<th>Name</th>
						<th>Rating</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="team" items="${teams }">
						<tr>
							<td>${team.id}</td>
							<td>${team.name}</td>
							<td>${team.rating}</td>
							<td><a href="${pageContext.request.contextPath}/team/edit/${team.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
							<td><a href="${pageContext.request.contextPath}/team/delete/${team.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
							
						</tr>

					</c:forEach>

				</tbody>

			</table>

		</div>
	</div>









	

	<script src="static/js/jquery-1.11.1.min.js"></script>

	<script src="static/js/bootstrap.min.js"></script> 
</body>
</html>