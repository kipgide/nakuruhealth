<%-- 
    Document   : registerdoc
    Created on : Feb 22, 2016, 3:57:51 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register doctor</title>
    </head>
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
insertPersons=con.prepareStatement("INSERT INTO doctors (id,name,kins,phone,dob,bloodgroup,email,website,address,speciality,facility,department,qualification,academics)"
        + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");



}
catch(SQLException e){
e.printStackTrace();}

}
public int setPerson(String id,String name,String kins,String phone,String dob,String bloodgroup,String email,String website,String address,String speciality,String facility,String department,String qualifications,String academics){
int result=0;
try{
 insertPersons.setString(1, id);
 insertPersons.setString(2, name);
 insertPersons.setString(3, kins);
 insertPersons.setString(4, phone);
 insertPersons.setString(5, dob);
 insertPersons.setString(6, bloodgroup);
 insertPersons.setString(7, email);
 insertPersons.setString(8, website);
 insertPersons.setString(9, address);
 insertPersons.setString(10, speciality);
 insertPersons.setString(11, facility);
 insertPersons.setString(12, department);
 insertPersons.setString(13, qualifications);
 insertPersons.setString(14, academics);
 
 
 
 
 
 
 result=insertPersons.executeUpdate();
 if(result>0){
        
         
           
        
        %>
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
 String id=new String();
 String name=new String();
 String kins=new String();
 String phone =new String();
 String dob=new String();
  String bloodgroup=new String();
 String email=new String();
 String website=new String();
 String address=new String();
 String speciality=new String();
 String facility =new String();
 String department=new String();
  String qualifications=new String();
 String academics=new String();
 
 
 
 if (request.getParameter("id")!=null){
 id=request.getParameter("id");
 }
 if (request.getParameter("name")!=null){
 name=request.getParameter("name");
 }
 if (request.getParameter("kins")!=null){
 kins=request.getParameter("kins");
 }
 if (request.getParameter("phone")!=null){
 phone=request.getParameter("phone");
 }

 if (request.getParameter("dob")!=null){
 dob=request.getParameter("dob");
 }
  if (request.getParameter("bloodgroup")!=null){
 bloodgroup=request.getParameter("bloodgroup");
 }
 
 if (request.getParameter("email")!=null){
 email=request.getParameter("email");
 }
 
 if (request.getParameter("website")!=null){
website=request.getParameter("website");
 }
 if (request.getParameter("address")!=null){
 address=request.getParameter("address");
 }
 if (request.getParameter(" speciality")!=null){
 speciality=request.getParameter(" speciality");
 }
 if (request.getParameter(" facility")!=null){
 facility=request.getParameter(" facility");
 }

 if (request.getParameter("department")!=null){
 department=request.getParameter("department");
 }
  if (request.getParameter("qualifications")!=null){
 qualifications=request.getParameter("qualifications");
 }
 
 if (request.getParameter(" academics")!=null){
 academics=request.getParameter(" academics");
 }
 Person person= new Person();
 result=person.setPerson(id, name, kins, phone, dob, bloodgroup, email, website, address, speciality, facility, department, qualifications, academics)
 ;

        %>
    
    
    <body>
        <h1>Register Doctor.</h1>
        <form name="docsform" action="registerdoc.jsp" method="POST">
        
         <table style=" border:1px; border-collapse:collapse">
           
                 
                     <tbody>
                         <tr>
                             <td>ID</td>
                             <td>  <input type="text" name="id" value="" size="50" /></td>
                         </tr>
                         <tr>
                             <td>Name : </td>
                             <td><input type="text" name="name" value="" /></td>
                         </tr>
                         <tr>
                             <td>Next of kin</td>
                             <td><input type="text" name="kins" value="" /></td>
                         </tr>
                         <tr>
                             <td>Mobile no</td>
                             <td><input type="text" name="phone" value="" /></td>
                         </tr>
                         <tr>
                             <td>Date Of Birth</td>
                             <td><input type="text" name="dob" value="" /></td>
                         </tr>
                         <tr>
                             <td>Blood Group</td>
                             <td><input type="text" name="bloodgroup" value="" /></td>
                         </tr>
                         <tr>
                             <td>Email</td>
                             <td><input type="text" name="email" value="" /></td>
                         </tr>
                         <tr>
                             <td>Website :</td>
                             <td><input type="text" name="website" value="" /></td>
                         </tr>
                         <tr>
                             <td>Address</td>
                             <td><input type="text" name="address" value="" /></td>
                         </tr>
                         <tr>
                             <td>Speciality </td>
                             <td><input type="text" name="speciality" value="" /></td>
                         </tr>
                         <tr>
                             <td>Facility</td>
                             <td><input type="text" name="facility" value="" /></td>
                         </tr>
                         <tr>
                             <td>Department</td>
                             <td><input type="text" name="department" value="" /></td>
                         </tr>
                         <tr>
                             <td>Qualifications</td>
                             <td><input type="text" name="qualifications" value="" /></td>
                         </tr>
                         <tr>
                             <td>Academics</td>
                             <td><input type="text" name="academics" value="" /></td>
                         </tr>
                     </tbody>
                 


         </table>
 <input type="submit" value="submit" name="submit" />
                    <input type="reset" value="clear" name="clear" />
        </form>
    </body>
</html>
