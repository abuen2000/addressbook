<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Details</title>
</head>
<body>
 <center>

  <div style="color: teal; font-size: 30px">User
   Details</div>

  <c:if test="${!empty usserList}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>First Name</td>
     <td>Last Name</td>
     <td>dob</td>
     <td>sex</td>
     <td>Add Contact</td>
     <td>View Contact</td>
    </tr>
    <c:forEach items="${usserList}" var="user">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${user.firstName}" />
      </td>
      <td><c:out value="${user.lastName}" />
      </td>
      <td><c:out value="${user.dob}" />
      </td>
      <td><c:out value="${user.sex}" />
      </td>
      <td><a href="formcontact?userid=${user.id}">Add</a></td>
      <td><a href="getContact?userid=${user.id}">View</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>

<br>
  <a href="form">Click Here to add new User</a>
 </center>
</body>
</html>