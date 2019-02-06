<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Home Page</title>
</head>
<body>
	<form:form modelAttribute="person" class="form-inline"
		action="display.html" method="post">
		<div class="form-group mb-2">
			<label for="staticEmail2" class="sr-only">Enter Name : </label>
		</div>
		<div class="form-group mx-sm-3 mb-2">
			<form:input path="pname" name="pname" type="text"
				class="form-control" placeholder="Name only" />
		</div>
		<button type="submit" class="btn btn-primary mb-2">Confirm</button>
	</form:form>
</body>
</html>