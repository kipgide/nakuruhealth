
<%-- 
    Document   : display
    Created on : Feb 20, 2016, 9:35:52 PM
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
        <title> Patient Master</title>
    </head>
    <body>
        <h1>County Patient Master......</h1>
          <%   
String URL ="jdbc:mysql://localhost:3306/users";
String USERNAME="root";
String PASSWORD="";
Connection con=null;
Statement selectPersons=null;
ResultSet rs=null;%>
<table border="1">
    
    
    
    <tr>
    <td>First name</td>
    <td>Last name </td>   
</tr>

<% try{
con=DriverManager.getConnection(URL,USERNAME,PASSWORD);
selectPersons=con.createStatement();

String sql="SELECT *FROM ipatient";

rs=selectPersons.executeQuery(sql);
 while (rs.next())  {
     
%> 


<tr>
                    <td><%=rs.getString("firstname") %>   </td>
                    <td><%=rs.getString("lastname") %>   </td>
                    <td><a href="ipatient.jsp"/>view patient records</a> </td>
                   
                </tr>
  <%                }
          }
          
catch(SQLException e){
e.printStackTrace();}
%>

</table>

    
 
 
       
      
        

        
        
    </body>
</html>
