<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<style>
div {
  background-color: #97CF9B;
  opacity: 0.6;
  margin: auto;
  width: 60%;
  padding: 10px;
 ;
  
}
h1 { color: white; }
</style>

<body>
 <div align="center">
  <h1 style="color:white">Employee Register Form</h1>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 80%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="Name" /></td>
    </tr>
        <tr>
     <td>Email ID</td>
     <td><input type="text" name="Email" /></td>
    </tr>
        <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
   </table>
   <input type="submit" value="Register" />
  </form>
 </div>
</body>
</html>