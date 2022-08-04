
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Access details</title>
</head>
<body>
    <h1 align="center">Insert Data in the Data Base:</h1>
     <form action="addAccess" align="center" >
        Enter ID : <input type="text" name="id" autocomplete="off"> <br>
        Enter AccessName : <input type="text" name="accessName" autocomplete="off"> <br>
        Enter FloorName : <input type="text" name="floorName" autocomplete="off"><br>
        Enter Date : <input type="date" name="date" autocomplete="off"> <br>
        Enter Entry : <input type="radio" name="entry" value="true" >Enable
                     <input type="radio" name="entry" value="false" > Disable <br>

        <input type="submit"><br>
     </form>
     
     
      <h1 align="center">Display All Access Information</h1>
     <form action="showAllAccessDetails" align="center">
        
        Get All flats Details :<input type="submit"><br>
     </form>
     
     
     
      <h1 align="center">Display Access Information</h1>
     <form action="getAccessDetails" align="center">
        Enter ID : <input type="text" name="id" autocomplete="off"> <br>
        <input type="submit"><br>
     </form>
     
      <h1 align="center">Display Access Information By Name : </h1>
     <form action="getAccessName" align="center">
        Enter Name : <input type="text" name="accessName" required placeholder="Enter Name"> <br><br>
        <input type="submit"><br>
     </form><hr>
     
     
      <h1 align="center">Enter Access Details to Update</h1> <br>
      
     <form action="updateAccessDetails" align="center">
        Enter ID : <input type="text" name="id" autocomplete="off"> <br>
        <input type="submit"><br>
     </form>
     
      <h1 align="center">Enter flatDetails to Delete</h1>
     <form action="delAccessDetails" align="center">
        Enter ID : <input type="text" name="id" autocomplete="off"> <br>
        <input type="submit"><br>
     </form>

  
</body>
</html>
