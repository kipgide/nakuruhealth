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
        <title>manage department</title>
        <script src="js/jquery-1.12.0.min.js"></script>
<link rel="stylesheet" href="css/style.css" >
    </head>
    <body onLoad=" updatesuccess()">
        <h1>Department manager . </h1>
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
insertPersons=con.prepareStatement("INSERT INTO departmentregister (name,subcounty,departmenthead,nofstaff,address,contacts)"
        + "VALUES(?,?,?,?,?,?)");



}
catch(SQLException e){
e.printStackTrace();}

}
public int setPerson(String name,String subcounty,String departmenthead,String nofstaff,String address,String contacts){
int result=0;
try{
 insertPersons.setString(1, name);
 insertPersons.setString(2, subcounty);
 insertPersons.setString(3,departmenthead);
 insertPersons.setString(4, nofstaff);
 insertPersons.setString(5,address);
 insertPersons.setString(6, contacts);
 
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
 String name=new String();
 String subcounty=new String();
 String departmenthead=new String();
 String nofstaff=new String();
 String address=new String();
 String contacts=new String();
 
 if (request.getParameter("name")!=null){
 name=request.getParameter("name");
 }
 if (request.getParameter("subcounty")!=null){
 subcounty=request.getParameter("subcounty");
 }
 if (request.getParameter("departmenthead")!=null){
 departmenthead=request.getParameter("departmenthead");
 }
 if (request.getParameter("nofstaff")!=null){
 nofstaff=request.getParameter("nofstaff");
 }
 if (request.getParameter("address")!=null){
 address=request.getParameter("address");
 }
 if (request.getParameter("contacts")!=null){
 contacts=request.getParameter("contacts");
 }
 

 
 Person person= new Person();
 result = person.setPerson(name, subcounty, departmenthead, nofstaff, address, contacts);

        %>
        
        
        
        
        <form name="insert" action="department.jsp" method="POST">
            
            <table border="1">
                
                <tbody>
                    <tr>
                        <td>Name of Department</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Sub County</td>
                        <td><input type="text" name="subcounty" value="" /></td>
                    </tr>
                    <tr>
                        <td>Head of Department</td>
                        <td><input type="text" name="departmenthead" value="" /></td>
                    </tr>
                    <tr>
                        <td>Number of Staff</td>
                        <td><input type="text" name="nofstaff" value="" /></td>
                    </tr>
                    <tr>
                        <td>Address </td>
                        <td><input type="text" name="address" value="" /></td>
                    </tr>
                    <tr>
                        <td>Contacts</td>
                        <td><input type="text" name="contacts" value="" /></td>
                    </tr>
                    
                </tbody>
               
                 
                
            </table>
           
             <input type="submit" value="submit" name="submit" />
                    <input type="reset" value="clear" name="clear" />
                    <input type="hidden" name="hidden" value="<%= result%>" />

        </form>
        
        
     
        
        
        
    </body>
</html>
