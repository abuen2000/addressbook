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

		<form:form id="addForm1" modelAttribute="contact" method="post"
			action="addContact">
			<table width="400px" height="150px">
				<tr>
					<td><form:label path="userId">User ID</form:label></td>
					<td><form:input path="userId" /></td>
				</tr>
				<tr>
					<td><form:label path="type">Type</form:label></td>
					<td><form:input path="type" /></td>
				</tr>
				<tr>
					<td><form:label path="areaCode">Area Code</form:label></td>
					<td><form:input path="areaCode" /></td>
				</tr>
				<tr>
					<td><form:label path="phoneNumber">Phone Number</form:label></td>
					<td><form:input path="phoneNumber" /></td>
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