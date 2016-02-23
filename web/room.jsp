<%-- 
    Document   : record
    Created on : Feb 5, 2016, 10:37:24 AM
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
        <title>manage rooms</title>
        <script src="js/jquery-1.12.0.min.js"></script>
<link rel="stylesheet" href="css/style.css" >
    </head>
    <body onLoad=" updatesuccess()">
        <h1>room manager . </h1>
        <a href="index.jsp"/>Home</a>
        <%!
     public class Person{
String URL ="jdbc:mysql://localhost:3306/facility";
String USERNAME="root";
String PASSWORD="";
Connection con=null;
PreparedStatement insertPersons=null;
ResultSet rs=null;
public Person(){
try{
con=DriverManager.getConnection(URL,USERNAME,PASSWORD);
insertPersons=con.prepareStatement("INSERT INTO roomregister (facility,department,roomtype,nofbeds,status,price)"
        + "VALUES(?,?,?,?,?,?)");



}
catch(SQLException e){
e.printStackTrace();}

}
public int setPerson(String facility,String department,String roomtype,String nofbeds,String status,String price){
int result=0;
try{
 insertPersons.setString(1, facility);
 insertPersons.setString(2, department);
 insertPersons.setString(3,roomtype);
 insertPersons.setString(4, nofbeds);
 insertPersons.setString(5,status);
 insertPersons.setString(6, price);
 
 result=insertPersons.executeUpdate();
 if(result>0){
        
         
           
        
        %>
  <SCRIPT language="JAVASCRIPT">     
      
          
                alert("update successful");
          
            </script>
 
       
     
            
    <%!
    
     
 }

}catch(SQLException e){
e.printStackTrace();}
return result;
}

        

         
     }   
       
        
%>
        <%

int result=0;
 String facility=new String();
 String department=new String();
 String roomtype=new String();
 String nofbeds=new String();
 String status=new String();
 String price=new String();
 
 if (request.getParameter("facility")!=null){
 facility=request.getParameter("facility");
 }
 if (request.getParameter("department")!=null){
 department=request.getParameter("department");
 }
 if (request.getParameter("roomtype")!=null){
 roomtype=request.getParameter("roomtype");
 }
 if (request.getParameter("nofbeds")!=null){
 nofbeds=request.getParameter("nofbeds");
 }
 if (request.getParameter("status")!=null){
 status=request.getParameter("status");
 }
 if (request.getParameter("price")!=null){
 price=request.getParameter("price");
 }
 

 
 Person person= new Person();
 result = person.setPerson(facility,department,roomtype, nofbeds, status, price);

        %>
        
        
        
        
        <form name="insert" action="room.jsp" method="POST">
            
            <table border="1">
                
                <tbody>
                    <tr>
                        <td>Facility: </td>
                        <td><input type="text" name="facility" value="" /></td>
                    </tr>
                    <tr>
                        <td>Department:  </td>
                        <td><input type="text" name="department" value="" /></td>
                    </tr>
                    <tr>
                        <td>Room Type</td>
                        <td><input type="text" name="roomtype" value="" /></td>
                    </tr>
                    <tr>
                        <td>Number of Beds</td>
                        <td><input type="text" name="nofbeds" value="" /></td>
                    </tr>
                    <tr>
                        <td>Status: </td>
                        <td><input type="text" name="status" value="" /></td>
                    </tr>
                    <tr>
                        <td>Price: </td>
                        <td><input type="text" name="price" value="" /></td>
                    </tr>
                    
                </tbody>
               
                 
                
            </table>
           
             <input type="submit" value="submit" name="submit" />
                    <input type="reset" value="clear" name="clear" />
                    <input type="hidden" name="hidden" value="<%= result%>" />

        </form>
        
        
     
        
        
        
    </body>
</html>
