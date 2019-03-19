<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css"
	integrity="sha384-PDle/QlgIONtM1aqA2Qemk5gPOE7wFq8+Em+G/hmo5Iq0CCmYZLv3fVRDJ4MMwEA"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"
	integrity="sha384-7aThvCh9TypR7fIc2HV4O/nFMVCBwyIUKL8XCtKE+8xgCgl/PQGuFsvShjr74PBp"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.0/themes/base/jquery-ui.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>

<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.js"></script>

<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/additional-methods.js"></script>

<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/additional-methods.min.js"></script>


<script src="https://www.google.com/jsapi" type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/application.js"
	type="text/javascript"></script>
<meta charset="ISO-8859-1">
<title>Employee Registration Page</title>
</head>
<body class="container">

	<div class="border border-primary">
		<div class="row">
			<div class="col-md-12">

				<form:form id="employeeForm" name="employeeForm"
					modelAttribute="employee" class="form-horizontal" method="POST">

					<img src="..." alt="AshwinG" class="rounded-circle">

					<c:if test="${not empty success}">
						<div class="alert alert-success alert-dismissible fade show"
							role="alert">
							<strong>Message</strong> ${success}
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
					</c:if>
					<c:if test="${not empty error}">
						<div class="alert alert-danger alert-dismissible fade show"
							role="alert">
							<strong>Message</strong> ${error}
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
					</c:if>


					<fieldset style="padding: 10px;">

						<!-- Form Name -->
						<legend>Employee Registration</legend>
						<hr>

						<form:input path="id" id="eid" name="eid" type="hidden" />
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="">Name</label>
							<div class="col-md-4">
								<form:input path="ename" id="ename" name="ename" type="text"
									placeholder="Full name" class="form-control input-md"
									required="" />
								<form:errors class="danger text-muted" path="ename" />
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="">Marks</label>
							<div class="col-md-4">
								<form:input path="salary" id="salary" name="salary" type="text"
									placeholder="Salary" class="form-control input-md" required="" />
								<form:errors class="danger text-muted" path="salary" />
							</div>
						</div>

						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for=""></label>
							<div class="col-md-4">
								<c:choose>
									<c:when test="${employee.id == null}">
										<button type="submit" class="btn btn-success">Save</button>
									</c:when>
									<c:otherwise>
										<button type="submit" class="btn btn-info">Update</button>
									</c:otherwise>
								</c:choose>
							</div>
						</div>

					</fieldset>
				</form:form>
				<fieldset style="padding: 10px;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Name</th>
								<th scope="col">Salary</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${employeeList}" var="emp" varStatus="cnt">
								<tr>
									<td scope="row">${cnt.count}</td>
									<td>${emp.ename}</td>
									<td>${emp.salary}</td>
									<td><a onclick="javascript:editEmp(${emp.id});"
										class="btn btn-dark">Edit</a> <a
										onclick="javascript:deleteEmp(${emp.id});"
										class="btn btn-danger">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Name</th>
								<th scope="col">Salary</th>
								<th scope="col">Action</th>
							</tr>
						</tfoot>
					</table>
				</fieldset>
			</div>
		</div>
	</div>
</body>
</html>