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
        <title>manage Patient</title>
        <script src="js/jquery-1.12.0.min.js"></script>
<link rel="stylesheet" href="css/style.css" >
    </head>
    <body onLoad=" updatesuccess()">
        <h1>INPATIENT . </h1>
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
insertPersons=con.prepareStatement("INSERT INTO ipatient (idNo,firstname,lastname,middlename,gender,bloodgroup,dob,ipatientno,age,regdate,occupation,mstatus,mid,phone,address,subcounty)"
        + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");



}
catch(SQLException e){
e.printStackTrace();}

}
public int setPerson(String idNo,String firstname,String lastname,String middlename,String gender,String bloodgroup
        ,String dob,String ipatientno,String age,String regdate,String occupation,String mstatus,String mid,String phone,String address,String subcounty){
int result=0;
try{
 insertPersons.setString(1, idNo);
 insertPersons.setString(2, firstname);
 insertPersons.setString(3, lastname);
 insertPersons.setString(4, middlename);
 insertPersons.setString(5, gender);
 insertPersons.setString(6, bloodgroup);
 insertPersons.setString(7, dob);
 insertPersons.setString(8, ipatientno);
 insertPersons.setString(9, age);
 insertPersons.setString(10, regdate);
 insertPersons.setString(11, occupation);
 insertPersons.setString(12, mstatus);
 insertPersons.setString(13, mid);
 insertPersons.setString(14, phone);
 insertPersons.setString(15, address);
insertPersons.setString(16, subcounty);
 
 
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
String idNo=new String();
 String firstname=new String();
 String lastname=new String();
 String middlename=new String();
 String gender=new String();
 String bloodgroup=new String();
 String dob=new String();
 String ipatientno=new String();
  String age=new String();
  String regdate=new String();
 String occupation=new String();
 String mstatus =new String();
 String mid=new String();
 String phone=new String();
 String address=new String();
  String subcounty=new String();
  
 
 if (request.getParameter("idNo")!=null){
 idNo=request.getParameter("idNo");
 }
 
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
 
 if (request.getParameter("ipatientno")!=null){
ipatientno=request.getParameter("ipatientno");
 }
 if (request.getParameter("age")!=null){
age=request.getParameter("age");
 }
 if (request.getParameter("regdate")!=null){
regdate=request.getParameter("regdate");
 }
 if (request.getParameter("occupation")!=null){
occupation=request.getParameter("occupation");
 }
  
 if (request.getParameter("mstatus")!=null){
mstatus=request.getParameter("mstatus");
 }
 if (request.getParameter("mid")!=null){
mid=request.getParameter("mid");
 }
 if (request.getParameter("phone")!=null){
phone=request.getParameter("phone");
 }
 
 if (request.getParameter("address")!=null){
address=request.getParameter("address");
 }
  if (request.getParameter("subcounty")!=null){
subcounty=request.getParameter("subcounty");
 }
 
 
 
 
 Person person= new Person();
 result=person.setPerson(idNo, firstname, lastname, middlename, gender, bloodgroup, dob, ipatientno, age, regdate, occupation, mstatus, mid, phone, address, subcounty);
 

        %>
        
        
        
        
        <form name="insert" action="ipatient.jsp" method="POST">
            
            <table border="1">
                
                <tbody>
                    PERSONAL DETAILS
                     <tr>
                         
                        <td>ID NO :</td>
                        <td><input type="text" name="idNo" value="" /></td>
                    </tr>
                    <tr>
                        <td>FIRST NAME :</td>
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
                        <td>PATIENT NO: :</td>
                        <td><input type="text" name="ipatientno" value="" /></td>
                    </tr>
                    <tr>
                        <td>Age :</td>
                        <td><input type="text" name="age" value="" /></td>
                    </tr>
                    <tr>
                        <td>Registration Date</td>
                        <td><input type="text" name="regdate" value="" /></td>
                    </tr>
                    <tr>
                        <td>Occupation :</td>
                        <td><input type="text" name="occupation" value="" /></td>
                    </tr>
                    <tr>
                        <td>Marital Status</td>
                        <td>
                <select name="maritalstatus">
                    <option>Single</option>
                    <option>Divorced</option>
                </select></td>
                    </tr>
                    <tr>
                        <td>Mother's ID :</td>
                        <td><input type="text" name="mid" value="" /></td>
                    </tr>
              
                
           
                    CONTACT DETAILS
                    <tr>
                        <td>Phone No: </td>
                        <td><input type="text" name="phone" value="" /></td>
                    </tr>
                    <tr>
                        <td>ADDRESS:</td>
                        <td><input type="text" name="address" value="" /></td>
                    </tr>
                    <tr>
                        <td>Sub County  :</td>
                        <td><input type="text" name="subcounty" value="" /></td>
                    </tr>
                    
                    
            </table>
                 
           
          
           
             <input type="submit" value="submit" name="submit" />
                    <input type="reset" value="clear" name="clear" />
                    <input type="hidden" name="hidden" value="<%= result%>" />

        </form>
        
        
     
        
        </tbody>
        
    </body>
</html>
