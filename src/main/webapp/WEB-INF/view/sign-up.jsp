<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign - Up</title>

<style>
body {
	background: "black";
	font-family: sans-serif;
}

div {
	margin: 5px;
	padding: 2px;
	text-align: center;
}

label {
	color: cyan;
	text-decoration: bold;
}

h1 {
	font-size: 40px;
	text-align: center;
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
	<h1>User Registration Page</h1>

	<div>
		<%-- <form:form method="GET" action="details" modelAttribute="list"> --%>
		<form:form method="POST" modelAttribute="userReg" action="details">
			<div>
				<label for="user"> Name </label>
				<form:input path="name"></form:input>
				<form:errors path="name" cssClass="error"></form:errors>
			</div>

			<div>
				<label for="age"> Age </label>
				<form:input type="number" path="age" />
				<form:errors path="age" cssClass="error"></form:errors>
			</div>

			<div>
				<label for="g"> Gender : </label>
				<form:radiobutton path="gender" value="Male" label="Male" />
				<form:radiobutton path="gender" value="Female" label="Female" />
				<form:errors path="gender" cssClass="error"></form:errors>
			</div>

			<div>
				<%-- 	<form:select name="country" path="country">
					<c:if test="${list} == null">
						<h3> List is empty </h3>
		 			</c:if>
						<c:forEach items="${list}" var="countries">
							<form:option value="${countries}" label="${countries}"></form:option>
						</c:forEach>
						<form:option value=""></form:option>
					</form:select> --%>

				<label for="cntry" >Countries : </label>
				<form:select name="country" path="country">
					<form:option value="India" label="India"></form:option>
					<form:option value="UK" label="UK"></form:option>
					<form:option value="USA" label="USA"></form:option>
					<form:option value="Australia" label="=Australia"></form:option>
				</form:select>
			</div>
			
			<div>
				<label for="habibi" >Hobbies : </label>
				<form:checkbox path="interest" value = "gaming" label="Gaming" />
				<form:checkbox path="interest" value = "cricket" label="Cricket"/>
				<form:checkbox path="interest" value = "technology" label="Technology"/>
				<form:checkbox path="interest" value = "geopolitics" label="GeoPolitics"/>
				<form:checkbox path="interest" value = "educational" label="Educational"/>
				<form:errors path ="interest" cssClass="error"></form:errors>
			</div>

			<div>
				<label for="email"> Email </label>
				<form:input path="email" />
				<form:errors path="email" cssClass="error"></form:errors>
			</div>

			<div>
				<label for="pswd"> Passcode </label>
				<form:input path="passcode" />
				<form:errors path="passcode" class="error"></form:errors>
			</div>

			<div>
				<form:checkbox path="termsAndConditions"/>
				<label> I agree to the terms and conditions</label>
				<form:errors path="termsAndConditions" cssClass="error"></form:errors>
				<!-- Display the error message specified on the browser screen -->
			</div>

			<div>
				<form:button>Submit</form:button>
			</div>
		</form:form>
		<%-- </form:form> --%>
	</div>


</body>
</html>