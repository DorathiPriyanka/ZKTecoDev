
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Access</title>
</head>
<body>
    

     <h1 align="center">To Be Updated : <br> ${access}
    
      </h1> <br>
     <form action="addAccess" align="center">
       <label> Enter ID</label> <input type="text" name="id" required autocomplete="off"> <br> <br>
       <label> Enter AccessName</label> <input type="text" name="accessName"  autocomplete="off"> <br><br>
        <label>Enter FloorName</label> <input type="text" name="floorName" autocomplete="off" pattern=".*floor" placeholder="should end with floor">><br><br>
        <label>Enter Date </label> <input type="date" name="date" autocomplete="off" min="2020-01-08" max="2022-01-08"> <br><br>
       <label> Enter Entry</label> <input type="radio" name="entry" value="true" >Enable
                     <input type="radio" name="entry" value="false" > Disable <br>

        <input type="submit"><br>
     </form>
     
    
</body>
</html>
 