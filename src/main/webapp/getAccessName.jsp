<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Access Details By Name</title>
</head>
<body>

<h1 align="center">Access  Information By Name</h1><br><hr>
     
     ${accessList} 

     <br><br><br>
     <form action="showAllAccessDetails" style="font-size: large;">
		Goto Index Page : <input type="submit" value="Home">
	</form>

</body>
</html>