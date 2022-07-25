<%@ page language="java" contentType="text/html; "%>

<html>
<head>
<title>
Management Main Page
</title>
<style>
p
{
    width: 30%;
    height: 50px;
    border: hsl(0, 0%, 0%);
    text-align: center;
    background-color: #ac2d51;
    border-style: revert;
    border-radius: 425px;
    margin: auto;
    padding-top: 20px;
}
a{
     color:#ffebcd;
     font-size: 20px;
     text-align: center;
}
h1
{
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size:80px; 
  color: #79272e;
}   
h4
{
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size: 25px; 
  color: #ac2d51;
}
body
{
    background-color: #ffebcd;
}
a
{
	font-size:20; 
  text-align: center;
}
#slogout
{
    width: 20%;
    height: 35px;
    text-align: center;
    margin-top: 50px;
    margin-left: auto;
    margin-right: auto;
}
#setting
{
    border-style: revert;
	color: #ac2d51;
    font-size: 1.5em;
    border-radius: 425px;
    
}
</style>
</head>
<body>

<h1>Welcome to Management Page</h1>
<h4><u>You can start by clicking on any of the options you need</u></h4><br><br>
<p>
    <a href="insert.jsp" >Insert Student Details and Marks</a>
</p><br><br>
<p>
    <a href="update.jsp" >Update Student Details</a>
</p><br><br>
<p>
    <a href="delete.jsp" >Delete Student Details and Marks</a>
</p><br><br>
<p>
    <a href="read.jsp" >Read Student Information and View Information</a>
</p><br><br>
<p>
    <a href="reevaluate.jsp">Reevaluate Marks</a>
</p><br><br>
<p>
<a href="/test_auth/index.jsp" >Login Page&nbsp;</a></p>
<form method="get" action="/test_auth/logout" id="slogout">
    <input id="setting" type="submit" value="Management Logout" ></input>
</form>
</body>
</html>