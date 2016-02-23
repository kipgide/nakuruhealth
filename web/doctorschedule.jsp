<%-- 
    Document   : doctorschedule
    Created on : Feb 22, 2016, 5:01:26 PM
    Author     : Gideon
--%>
<%@page import= "java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctors Schedule</title>
    </head>
    <body>
        <h1>My schedule</h1>
        <form name="myschedule" action="doctorschedule.jsp" method="POST">
        <table style=" border:1px; border-collapse:collapse">
                    <tr><td> Time From:</td>
                        <td><%  %> </td></tr>
                    <tr> <td>Time To:</td>
                        <td><%  %></td>
                    </tr>
                    
                    <tr> <td>Day:</td>
                        <td><%  %></td>
                    </tr>
                    
        </table>
        <input type="submit" value="ADD" />
         </form> 
        
        
    </body>
</html>
