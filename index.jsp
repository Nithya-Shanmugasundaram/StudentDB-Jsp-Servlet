<%@ page language="java" contentType="text/html; "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style>
#form2{
    width: 35%;
    height: 300px;
    border:solid #000000;
    margin-top: 100px;
    text-align: center;
    margin-right: 40px;
    background-color: #ffebcd;
    margin-left: auto;
    margin-right: auto;
}
#head{
    font-size: 2em;
    font-style: times normal;
    font-weight: bold;
    text-transform: uppercase;
    color: #0000ff;
}
#lab{
    font-size: 1.5em;
}
h1
{
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size:60px; 
  color: #79272e;
}   
h4
{
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size: 20px; 
  color: #ac2d51;
}
body
{
    background-color: #b0ccffba;
} 

</style>
</head>
<body>
</head>
<body>
    <h1>Welcome to Student Database Management System</h1>
    <h4>Please Login into your respective roles</h4>
<div id="form2">
<form method="post"  action="j_security_check">
    <p id ="head"> type 1 Login:</p>
    <p>
        <label id="lab" for ="id"> Student ID: </label><br><br>
        <input type="text" id="id" name="j_username" placeholder="id." size = "20" maxlength="25">
    </p>
    <p>
        <label id="lab" for  ="pwd"> Password: </label><br><br>
        <input type="password" id="pwd" name="j_password" placeholder="Password:" size ="20" maxlength="20">
    </p>
    <p>
        <input type="submit" value="login">
    </p>
</form>
</div>
<br>
</body>
</html>