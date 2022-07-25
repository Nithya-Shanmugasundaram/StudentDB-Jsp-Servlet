<%@ page language="java" contentType="text/html;"%>
<html>
<head>
<title>Delete Student Details and Marks</title>
<style>
#delform{
    width: 40%;
    height: 200px;
    border:solid #000000;
    margin: auto;
    margin-top: 50px;
    text-align: center;
    background-color: #ffebcd;
    font-size: 1.5em;    
}
h4
{
  margin-top: 50px;
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size: 40px; 
  color: #ac2d51;
}
#link
{
	bottom: 10px;
	text-align: center;
	font-size: 20px;
}
a
{
    color: #ac2d51;
}
</style>
</head>

<body>

<h4>Enter the Roll no. of the students data you want to be deleted</h4>
<div id="delform">
    <form method="get" action="deletedetails.jsp">
        <p>
        <label for="roll_no">Roll no: </label><br>
        <input type="number" id="roll_no" name="roll_no" placeholder="roll no" size = "30" maxlength="35">
        </p>
        <p>
            <input type="submit" value="Submit Details">
        </p>
    </form>
</div>
<p id="link"><a href="management.jsp" >Management Home Page</a></p>
</body>
</html>