<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <body>
        <h1>Session counter</h1>
        
        <%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            
            out.println("Welcome to my website!");
            hitsCount = 1;
         } else {
            
            out.println("Welcome back to my website!");
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
      %>
      
         <p>Total number of visits: <%= hitsCount%></p>
        
        <h1>Witaj, <c:out value="${p1.firstName} ${p1.lastName}"/>!</h1>
        <h1>mail to: <c:out value="${p1.email}"/>!</h1>
        <!-- W c:out wartosc zostanie odczytana jako ciag znakow -->
        
        <h1>Witaj, ${p1.firstName} ${p1.lastName}!</h1>
        <h1>mail to: ${p1.email}!</h1>
        <!--Tutaj wyrazenie zostanie wykonane jako kod html lub js -->
        
        <c:forEach items="${dniTygodnia}" var="dzien">
            <p>
            ${dzien}
            </p>
        </c:forEach>
    </body>
</html>