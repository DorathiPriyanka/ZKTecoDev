<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
th {
  border-style:solid;
  border-color: blue;
  color: rgb(255, 0, 149);
}
td{

border-style:solid;
  border-color: blue;

}
</style>
<meta charset="ISO-8859-1">
<title>Show All Access </title>
</head>
<body>

    <h1 align="center">All the Access details </h1>
    <form action="addAccess.jsp" align="center">
    <input type="submit" value="Add New Access"><br><br>
</form>

<%@ page import="java.util.*" %>
    <%@ page import="com.zkteco.access.entity.*" %>
    <% @SuppressWarnings("unchecked") List<Access> flatsList=(List<Access>)request.getAttribute("flatsList"); %>
    <table border="1" align="center">
        <th>ID</th>
        <th >AccessName</th>
        <th>FloorName</th>
        <th>Date</th>
        <th>Entry</th>
         <th>Update</th>
          <th>Delete</th>
       
        
        
        
    <% for(Access access :flatsList) {%>

    <tr>
        <td> <%=access.getId() %> </td>
        <td> <%=access.getAccessName() %> </td>
        <td> <%=access.getFloorName() %> </td>
        <td> <%=access.getDate() %> </td>
        <td> <%=access.getEntryAlias() %> </td>
        
        
        
        
        <td><form action="updateAccess.jsp" align="center" ><input type="submit" value="Update" formtarget="_blank"></form></td>
        <td><form action="deleteAccess.jsp" align="center" ><input type="submit" value="Delete" formtarget="_blank"></form></td>
        
        
    </tr>

    <%} %>

    </table> <br><br>

    <form action="access" align="center">
        Goto Index Page : <input type="submit">
    </form>

</body>
</html>