<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Access</title>
</head>
<body>
 <h1 align="center">Enter flatDetails to Delete : ${access}</h1>
     <form action="delAccessDetails" align="center">
       <label> Enter ID </label> <input type="text" name="id" required> <br>
        <input type="submit"><br>
     </form>
     
     
     
</body>
</html>