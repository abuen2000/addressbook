<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact List</title>
</head>
<body>
 <center>

  <div style="color: teal; font-size: 30px">Contact List</div>

  <c:if test="${!empty ContactList}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>User ID</td>
     <td>Type</td>
     <td>Area Code</td>
     <td>Phone Number</td>
    </tr>
    <c:forEach items="${ContactList}" var="contact">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${contact.userId}" />
      </td>
      <td><c:out value="${contact.type}" />
      </td>
      <td><c:out value="${contact.areaCode}" />
      </td>
      <td><c:out value="${contact.phoneNumber}" />
      </td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  <br>
 <a href="list">Click Here to see User List</a>
 
 
 </center>
</body>
</html>