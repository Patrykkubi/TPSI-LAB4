<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        
 
      
        
        <table border="1" style="width:100%" >
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Email</th>
  </tr>
  
 

        <c:forEach items="${Osoby}" var="osoba">
  <tr>
    <td>${osoba.firstName}</td>
    <td>${osoba.lastName}</td>
    <td>${osoba.email}</td>
  </tr>      
            
        </c:forEach>
</table>
    </body>
</html>
