<%@ page import="java.util.Date,java.io.*,java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
<style>
div {
  background-color: #d8f9ff;
  
  margin: auto;
  width: 60%;
  padding: 10px;
  
}

</style>

</head>
<body>
<div align="center">

<h1 style="color:Blue", align="Center">Dashboard</h1>   
<table style="with: 100%">  
	<tr>
	<h2>
	<% String Name =(String)request.getSession().getAttribute("Name"); %>
     
      Welcome <% out.println(Name); %>
     </h2>
</tr>

<tr>
      <%
         Date date = new Date();
         
         out.print( "<h4 align = \"left\">"+" Login : " + date.toString()+"</h4>");%>
         </tr>
         <tr>
        <%
         Date lastAccessTime = new Date(session.getLastAccessedTime());
       
         out.print("<h4 align = \"left\">"+"Previous Login : "+ lastAccessTime + "</h4>"); 
          
          %>
          <p align="left"><a href="login.jsp"><b>Logout</b></a></p>
          </tr>

</td>      
</table>
</div>
</body>
</html>