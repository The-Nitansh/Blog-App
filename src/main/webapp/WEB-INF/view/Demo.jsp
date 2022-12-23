<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Displaying details</title>
</head>
<body>

	<div align="center">
		<h1>Details</h1>
		<h2>Email : ${userLogin.email}</h2>
		<h2>
			Passcode : 
			<c:forEach items="${userLogin.passcode}" var="ch">
				${ch}
		</c:forEach>
		</h2>
	</div>
</body>
</html>