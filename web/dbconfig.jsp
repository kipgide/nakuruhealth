<%-- 
    Document   : dbconfig
    Created on : Feb 17, 2016, 6:29:11 PM
    Author     : Gideon
--%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Configure</title>
    </head>
    <body>
        <h1>configure</h1>
        <% 
java.sql. Connection con=null;
String URL="jdbc:mysql://localhost:3306/users";
String Driver="com.mysql.jdbc.Driver";
String USERNAME="root";
String PASSWORD="";
try{
    Class.forName(Driver);
    con=DriverManager.getConnection(URL,USERNAME,PASSWORD);
    if (con!=null){
        out.println("Connected");
    }
    else{ 
        out.println("Not CONNECTED");
    }
}
       catch(SQLException e){
       
       e.printStackTrace();
       }
       
      
        
        
        %>
       
    </body>
</html>
