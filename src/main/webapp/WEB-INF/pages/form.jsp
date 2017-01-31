<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Address Book</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">Add Address Book</div>

		<form:form id="addForm" modelAttribute="user" method="post"
			action="addUser">
			<table width="400px" height="150px">
				<tr>
					<td><form:label path="firstName">First Name</form:label></td>
					<td><form:input path="firstName" /></td>
					<td><form:errors path="firstName"/></td>
				</tr>
				<tr>
					<td><form:label path="lastName">Last Name</form:label></td>
					<td><form:input path="lastName" /></td>
				</tr>
				<tr>
					<td><form:label path="dob">DOB</form:label></td>
					<td><form:input path="dob" />mm/dd/yyyy</td>
					<td><form:errors path="dob"/></td>
				</tr>
				<tr>
					<td><form:label path="sex">Sex</form:label></td>
					<td><form:input path="sex" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Add" /></td>
				</tr>
			</table>
		</form:form>


		<a href="list">Click Here to see User List</a>
	</center>
</body>
</html>