<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dates</title>
</head>
<body>
 
 
 
    
 <%@ page import="java.util.*" %>
    <%@ page import="com.zkteco.access.entity.*" %>
    <% @SuppressWarnings("unchecked") List<Access> accessList=(List<Access>)request.getAttribute("accessList"); %>
    
  <% if(accessList!=null){%>  
  
  
  <h1 align="center">Access Information  based on Date </h1>
  <table border="1" align="center">
        <th>ID</th>
        <th >AccessName</th>
        <th>FloorName</th>
        <th>Date</th>
        <th>Entry</th>
         
       
        
        
        
      <% for(Access access :accessList) {%>

    <tr>
        <td> <%=access.getId() %> </td>
        <td> <%=access.getAccessName() %> </td>
        <td> <%=access.getFloorName() %> </td>
        <td> <%=access.getDate() %> </td>
        <td> <%=access.getEntryAlias() %> </td>
        
        
        
      
   </tr> <%} %>

 </table> 
 <%}  else{%>
 
 <h1>User is not existed with this Date</h1>
 <%} %>
	 
 
	 <br>
	 <br>
	 <form  action="showAllAccessDetails" style="font-size: large;" align="center">
		Goto Index Page : <input type="submit" value="Home"  align="center">
	</form>
 
 
</body>
</html>