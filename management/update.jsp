<%@ page language="java" contentType="text/html; "%>
<!DOCTYPE html>
<html>
<head>
<title>Update Student Details</title>
<style>
#stu_det_form{
    width: 40%;
    height: 500px;
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
body
{
    background-color: #e6ff9bb5;
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

    <h4>Enter the details of the student's you want to update</h4>
    <div id="stu_det_form">
        <form method="get" action="updatedetails.jsp">
            <p id = "head"><b>Student Details Form</b></p>
            <p>
               <label for="name">Name: </label>
                <input type="text" id="name" name="name" placeholder="name" size = "30" maxlength="35">
            </p>
            <p>
                <label for="roll_no">Roll no: </label>
                 <input type="number" id="roll_no" name="roll_no" placeholder="roll no" size = "30" maxlength="35">
            </p>
            <p>
                <label for="year">YOP: </label>
                <input type="number" id="year" name="year" placeholder="year" size = "30" maxlength="35">
            </p>
            <p>
                <label for="dept">Department: </label>
                <input type="text" id="dept" name="dept" placeholder="department" size = "30" maxlength="35">
            </p>
            <p>
                <label for="mailid">Mail ID: </label>
                <input type="email" id="mailid" name="mailid" placeholder="mail id" size = "35" maxlength="40">
            </p>
            <p>
                <label for="attper">Attendance Percent: </label>
            <input type="number" step="any" id="attper" name="attper" placeholder="attendance" size = "30" maxlength="35"> 
            </p>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
<p id="link"><a href="management.jsp" >Management Home Page</a></p>
</body>
</html>