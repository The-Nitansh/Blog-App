<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1" isELIgnored = "false"%>
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
		<h2>Name : ${userReg.name}</h2>
		<h2>Gender : ${userReg.gender}</h2>
		<h2>Age : ${userReg.age}</h2>
		<h2>Country : ${userReg.country }</h2>
		<h2> </h2>
	</div>
</body>
</html>