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
        <title>manage Staff</title>
        <script src="js/jquery-1.12.0.min.js"></script>
<link rel="stylesheet" href="css/style.css" >
    </head>
    <body onLoad=" updatesuccess()">
        <h1>REGISTER STAFF . </h1>
        <a href="index.jsp"/>Home</a>
        <%!
     public class Person{
String URL ="jdbc:mysql://localhost:3306/users";
String USERNAME="root";
String PASSWORD="";
Connection con=null;
PreparedStatement insertPersons=null;
ResultSet rs=null;
public Person(){
try{
con=DriverManager.getConnection(URL,USERNAME,PASSWORD);
insertPersons=con.prepareStatement("INSERT INTO spersonal (firstname,lastname,middlename,gender,bloodgroup,dob,empno)"
        + "VALUES(?,?,?,?,?,?,?)");



}
catch(SQLException e){
e.printStackTrace();}

}
public int setPerson(String firstname,String lastname,String middlename,String gender,String bloodgroup,String dob,String empno){
int result=0;
try{
 insertPersons.setString(1, firstname);
 insertPersons.setString(2, lastname);
 insertPersons.setString(3, middlename);
 insertPersons.setString(4, gender);
 insertPersons.setString(5, bloodgroup);
 insertPersons.setString(6, dob);
 insertPersons.setString(7, empno);
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
 String firstname=new String();
 String lastname=new String();
 String middlename=new String();
 String gender=new String();
 String bloodgroup=new String();
 String dob=new String();
 String empno=new String();
 if (request.getParameter("firstname")!=null){
 firstname=request.getParameter("firstname");
 }
 if (request.getParameter("lastname")!=null){
 lastname=request.getParameter("lastname");
 }
 if (request.getParameter("middlename")!=null){
 middlename=request.getParameter("middlename");
 }
 if (request.getParameter("gender")!=null){
 gender=request.getParameter("gender");
 }
 if (request.getParameter("bloodgroup")!=null){
 bloodgroup=request.getParameter("bloodgroup");
 }
 if (request.getParameter("dob")!=null){
 dob=request.getParameter("dob");
 }
 
 if (request.getParameter("empno")!=null){
 empno=request.getParameter("empno");
 }
 Person person= new Person();
 result=person.setPerson(firstname, lastname, middlename, gender, bloodgroup, dob, empno);
 

        %>
        
        
        
        
        <form name="insert" action="manageStaff.jsp" method="POST">
            
            <table style=" border:1px; border-collapse:collapse">
                
                <tbody>
                    <tr>
                        <td>FIRSTNAME :</td>
                        <td><input type="text" name="firstname" value="" /></td>
                    </tr>
                    <tr>
                        <td>LAST NAME :</td>
                        <td><input type="text" name="lastname" value="" /></td>
                    </tr>
                    <tr>
                        <td>MIDDLE NAME</td>
                        <td><input type="text" name="middlename" value="" /></td>
                    </tr>
                    <tr>
                        <td>GENDER</td>
                        <td><input type="text" name="gender" value="" /></td>
                    </tr>
                    <tr>
                        <td>BLOOD GROUP </td>
                        <td><input type="text" name="bloodgroup" value="" /></td>
                    </tr>
                    <tr>
                        <td>Date Of Birth</td>
                        <td><input type="text" name="dob" value="" /></td>
                    </tr>
                    <tr>
                        <td>EMPLOYMENT NO :</td>
                        <td><input type="text" name="empno" value="" /></td>
                    </tr>
                   
                </tbody>
               
                 
                
            </table>
           
             <input type="submit" value="submit" name="submit" />
                    <input type="reset" value="clear" name="clear" />
                    <input type="hidden" name="hidden" value="<%= result%>" />

        </form>
        
        
     
        
        
        
    </body>
</html>
