<%-- 
    Document   : login
    Created on : Feb 14, 2016, 12:13:13 PM
    Author     : Gideon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn</title>
               <link rel="stylesheet" href="style.css" type="text/css" >

    </head>
    <div id="container">
    <body>
        <div id="header">
        <h1>Login</h1>
        <form action="Logins" method="post" class="login">
       
        <table border="0">
            
            <tbody>
                <tr>
                    <td>Username</td>
                        <td><input type="text" name="uname" value=""  class="login-input"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" value=""class="login-input" /></td>
                </tr>
                <tr> <td><input type="submit" value="Submit"  class="login-submit"/></td></tr>
            </tbody>
           
        </table>
 </form>
         </div>
        
    </body>
    </div>
</html>
