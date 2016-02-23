<%-- 
    Document   : delete
    Created on : Feb 17, 2016, 12:39:31 AM
    Author     : Gideon
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE</title>
    </head>
    <body>
        <h1>DELETE</h1>
  public class Actor{
  String URL = "jdbc:mysql://localhost:3306/users";
  
  
  
  
  
  
  }      
        
        
        
        <form name="myform" action="delete.jsp" method="POST">
            <table border="1">
             
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><select name="user">
                                <option></option>
                            </select></td>
                    </tr>
                    
                </tbody>
            </table>
             <input type="submit" value="submit" name="submit" />
        </form>
    </body>
</html>
