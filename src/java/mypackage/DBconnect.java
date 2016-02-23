/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.sql.*;

/**
 *
 * @author Gideon
 */
public class DBconnect {
    private  Connection con;
    private Statement stat;
    private ResultSet rs;
    
    public DBconnect(){
   try{ 
       Class.forName("com.mysql.jdbc.Driver");
       con =DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","");
       stat=con.createStatement();
       
       
   }catch(ClassNotFoundException | SQLException ex){
       System.out.print("Error Message: "+ ex);
   }
   
    
    }
    
    public void getCredentials(){
    
    try{
    String query = "select*from users";
    rs=stat.executeQuery(query);
    String name=rs.getString("username");
    String password=rs.getString("password");
    
    
    }
    catch(Exception ex){
        System.out.println(ex);
    }
    
    
    
    }
    public void getData(){
    
    try{
    String query = "select*from spersonal";
    rs=stat.executeQuery(query);
    while(rs.next()){
    String firstname=rs.getString("firstname");
    String lastname=rs.getString("lastname");
    String middlename=rs.getString("middlename");
    String gender=rs.getString("gender");
   String bloodgroup=rs.getString("bloodgroup");
   String dob=rs.getString("dob");
   String empno=rs.getString("empno");
   
    }
    
    }
    catch(Exception ex){
        System.out.println(ex);
    }
    
    
    
    }
    
    
    
}  
    
    
}
