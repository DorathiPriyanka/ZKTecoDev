<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Add Access</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous">
    </head>

    <body>
        <h1 align="center">Insert Access Data in the Data Base:</h1> <br>
        <form action="addAccess" align="center">
        
            <label >Enter ID</label> <input type="text" name="id" autocomplete="off" required> <br><br>
      
       
           <label >Enter AccessName</label> <input type="text" name="accessName" autocomplete="off">  <br><br>
        
           <label> Enter FloorName</label> <input type="text" name="floorName" autocomplete="off" pattern=".*floor" placeholder="should end with floor"><br> <br>
            <label>Enter Date</label> <input type="date" name="date" min="2020-01-08" max="2022-01-08" autocomplete="off"> <br><br>
             <label>Enter Entry</label>
            <input type="radio" name="entry" value="true">Enable 
            <input type="radio" name="entry" value="false"> Disable<br> <br>
            <input type="submit"><br>
           
           
            
        </form>

        
    </body>

    </html>