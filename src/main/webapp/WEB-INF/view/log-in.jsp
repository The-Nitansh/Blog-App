<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style>
div {
	margin: 5px;
	font-family: cursive;
}

.error
{
	color : #F40E50;
	font-family: monospace;
	font-size: 12px;
	position: fixed;
	text-align: left;
	margin-left: 20px;
}

</style>
</head>
<body>
	<h1 align="center">Welcome to the login page</h1>
	<div align="center">
		<form:form  action="success" method="POST" modelAttribute="userLogin">
			<div>
				<label>Email : </label>
				<form:input type="text" path="email"></form:input>
				<form:errors path="email" class="error"></form:errors>
			</div>

			<div>
				<label>Passcode : </label>
				<form:input type="password" path="passcode"></form:input>
				<form:errors path="passcode" class="error"></form:errors>
			</div>

			<div>
				<form:button label="Log In">Log In</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>