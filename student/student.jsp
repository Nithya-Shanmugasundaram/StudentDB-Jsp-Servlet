<%@ page language="java" contentType="text/html; "%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Reevaluation page</title>
</head>
<style>
#re_form
{
    float: center;
    width: 40%;
    height: 550px;
    border:solid #000000;
    text-align: center;
    background-color: #ffebcd;
    font-size: 1.5em;
    margin: auto;
}
h1
{
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size:45; 
  color: #79272e;                             
}
h4{
    text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size: 20px;
}
ul
{ 
  list-style-type: square;
  font-size:20; 
  text-align: center;
}
li{
    display: inline;
}
#slogout
{
    width: 20%;
    height: 35px;
    text-align: center;
    margin-top: 10px;
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
<body>

<h1>You have entered the Reevaluation Page</h1>
 <form method="get" action="/test_auth/logout" id="slogout">
    <input id="setting" type="submit" value="Student Logout" ></input>
</form>
<p>
<h4>Please enter the details for reevaluation</h4> <p>
</p>
<div id="re_form">
    <form method="get" action="reeval_insert.jsp">
        <p>Reevaluation form</p>
        <p>
        <label for="roll_no">Roll no: </label><br><br>
        <input type="number" id="roll_no" name="roll_no" placeholder="roll no" size = "20" maxlength="25">
        </p>
        <p>
            <label for="sem_no">Semester no: </label><br><br>
            <input type="number" id="sem_no" name="sem_no" placeholder="sem no" size = "20" maxlength="25">
        </p>
        <p>
            <label for="sub">Subject Id(between s1 to s6): </label><br><br>
            <input type="text" id="sub" name="sub" placeholder="subject id" size = "20" maxlength="25">
        </p>
        <p>
            <label for="mailid">Mail ID: </label><br><br>
            <input type="email" id="mailid" name="mailid" placeholder="mail id" size = "35" maxlength="40">
        </p>
        <p>
            <input type="submit" value="Submit Details">
        </p>
    </form>
</div>   
<ul>
    <li ><a href="/test_auth/index.jsp" >Login Page&nbsp;&nbsp;</a></li>
   </ul>
  

</body>
</html>