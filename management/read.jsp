<%@ page language="java" contentType="text/html; "%>
<html>
<head>
<title>Display data</title>
<style>
#namepart
{
    float: left;
    width: 30%;
    height: 200px;
    border:solid #000000;
    margin-top: 50px;
    text-align: center;
    background-color: #ffebcd;
    margin: auto;
}
#deptpart
{
    float: left;
    width: 30%;
    height: 200px;
    border:solid #000000;
    text-align: center;
    background-color: #ffebcd;
    margin-left: 60px;
}
#mailidpart
{
    float: right;
    width: 30%;
    height: 200px;
    border:solid #000000;
    text-align: center;
    background-color: #ffebcd;
    margin: auto;
}
#rollnopart
{
    float: left;
    width: 30%;
    height: 200px;
    border:solid #000000;
    text-align: center;
    background-color: #ffebcd;
    margin-top: 50px;
}
#yearpart
{
    float: left;
    width: 30%;
    height: 200px;
    border:solid #000000;
    text-align: center;
    background-color: #ffebcd;
    margin-left: 60px;
    margin-top: 50px;
}
#attperpart
{
    float: right;
    width: 30%;
    height: 200px;
    border:solid #000000;
    text-align: center;
    background-color: #ffebcd;
    margin-top: 50px;
}
#cgpapart
{
    float: left;
    width: 30%;
    height: 200px;
    border:solid #000000;
    text-align: center;
    background-color: #ffebcd;
    margin-top: 50px;
}
#sgpapart
{
    float: left;
    width: 30%;
    height: 200px;
    border:solid #000000;
    text-align: center;
    background-color: #ffebcd;
    margin-left: 60px;
    margin-top: 50px;
}
#ascdescpart
{
    float: right;
    width: 30%;
    height: 200px;
    border:solid #000000;
    text-align: center;
    background-color: #ffebcd;
    margin-top: 50px;
}
h4
{
  margin-top: 50px;
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size: 40px; 
  color: #ffebcd;
}
label
{
    font-size: 1em;
}
option
{
    font-size: 1em;
}
body
{
    background-color: #ac2d51;
}
a
{
    color: #ffebcd;
}
#link
{
	text-align:center;
	font-size: 20px;
}
</style>
</head>
<body>

    <h4>Read data based on the options</h4>
    <p id="link"><a href="management.jsp" >Management Home Page</a></p>
    <div id="namepart">
        <form method = "get" action="display_name.jsp">
            <p>
                <label for="name">Name: </label>
                 <input type="text" id="name" name="name" placeholder="name" size = "30" maxlength="35">
             </p>
             <label for="name_choice">Choice of search: </label>
             <select name = "name_choice" multiple size="3">
                <option value="equal">Equal</option>
                <option value="notequal">Not Equal</option>
                <option value="endscontains">Ends or contains With</option>
                <option value="starts">Starts with</option>
            </select>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
    <div id="deptpart">
        <form method = "get" action="display_dept.jsp">
            <p>
                <label for="dept">Department: </label>
                 <input type="text" id="dept" name="dept" placeholder="dept" size = "30" maxlength="35">
             </p>
             <label for="dept_choice">Choice of search: </label>
             <select name = "dept_choice" multiple size="3">
                <option value="equal">Equal</option>
                <option value="notequal">Not Equal</option>
                <option value="endscontains">Ends or contains With</option>
                <option value="starts">Starts with</option>
            </select>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
    <div id="mailidpart">
        <form method = "get" action="display_mailid.jsp">
            <p>
                <label for="mailid">Mail id: </label>
                 <input type="text" id="mailid" name="mailid" placeholder="mailid" size = "35" maxlength="40">
             </p>
             <label for="mailid_choice">Choice of search: </label>
             <select name = "mailid_choice" multiple size="3">
                <option value="equal">Equal</option>
                <option value="notequal">Not Equal</option>
                <option value="endscontains">Ends or contains With</option>
                <option value="starts">Starts with</option>
            </select>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
    <div id="rollnopart">
        <form method = "get" action="display_rollno.jsp">
            <p>
                <label for="roll_no">Roll no: </label>
                 <input type="number" id="roll_no" name="roll_no" placeholder="roll_no" size = "30" maxlength="35">
             </p>
             <label for="rollno_choice">Choice of search: </label>
             <select name = "rollno_choice" multiple size="3">
                <option value="equal">Equal</option>
                <option value="notequal">Not Equal</option>
                <option value="greater">Greater than</option>
                <option value="lesser">Lesser than</option>
            </select>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
    <div id="yearpart">
        <form method = "get" action="display_year.jsp">
            <p>
                <label for="year">Year: </label>
                 <input type="number" id="year" name="year" placeholder="year" size = "30" maxlength="35">
             </p>
             <label for="year_choice">Choice of search: </label>
             <select name = "year_choice" multiple size="3">
                <option value="equal">Equal</option>
                <option value="notequal">Not Equal</option>
                <option value="greater">Greater than</option>
                <option value="lesser">Lesser than</option>
            </select>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
    <div id="attperpart">
        <form method = "get" action="display_attper.jsp">
            <p>
                <label for="attper">Attendance Percent: </label>
                 <input type="number" step="any" id="attper" name="attper" placeholder="attper" size = "30" maxlength="35">
             </p>
             <label for="attper_choice">Choice of search: </label>
             <select name = "attper_choice" multiple size="3">
                <option value="equal">Equal</option>
                <option value="notequal">Not Equal</option>
                <option value="greater">Greater than</option>
                <option value="lesser">Lesser than</option>
            </select>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
    <div id="cgpapart">
        <form method = "get" action="display_cgpa.jsp">
            <p>
                <label for="cgpa">Cgpa: </label>
                 <input type="number" step="any" id="cgpa" name="cgpa" placeholder="cgpa" size = "30" maxlength="35">
             </p>
             <label for="cgpa_choice">Choice of search: </label>
             <select name = "cgpa_choice" multiple size="3">
                <option value="equal">Equal</option>
                <option value="notequal">Not Equal</option>
                <option value="greater">Greater than</option>
                <option value="lesser">Lesser than</option>
            </select>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
    <div id="sgpapart">
        <form method = "get" action="display_sgpa.jsp">
            <p>
                <b>To search with Sgpa of a semester.</b><br>
                <label for="sem_no">Semester no.: </label>
                 <input type="number" step="any" id="sem_no" name="sem_no" placeholder="sem_no" size = "30" maxlength="35">
             </p>
             <label for="sgpa_choice">Choice of search: </label>
             <select name = "sgpa_choice">
                <option value="asc">Display in Ascending order</option>
                <option value="desc">Display in Descending order</option>
            </select>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
	<div id="ascdescpart">
        <form method = "get" action="display_all.jsp">
            <p>
                <b>To display all the details in acsending or descending order</b><br>
             </p>
             <label for="disp_order">Order: </label>
             <select name = "disp_order" >
                <option value="asc">Display in Acsending order</option>
                <option value="desc">Display in Descending order</option>
            </select><br><br>
            <label for="disp_choice">Choice of search: </label>
            <select name = "disp_choice" multiple size="3">
                <option value="name">Name</option>
                <option value="rollno">Roll no.</option>
                <option value="dept">Department</option>
                <option value="year">Year</option>
                <option value="mailid">Mail Id.</option>
                <option value="cgpa">Cgpa</option>
                <option value="attper">Attendance Percentage.</option>
            </select>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
</body>
</html>