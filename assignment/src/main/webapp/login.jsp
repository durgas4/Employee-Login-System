<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in page</title>
</head>
<style>
div {
  background-color: green;
  opacity: 0.6;
  margin: auto;
  width: 60%;
  padding: 10px; 
}
</style>
<body>
 <div align="center">
  <h1 style="color:white">Employee Login Form</h1>
  <form action="<%=request.getContextPath()%>/login" method="post">
   <table style="with: 100%">
    <tr>
     <td>User Name</td>
     <td><input type="text" name="Name" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>

   </table>
   <input type="submit" value="Login" />
  </form>
 </div>
</body>
</html>