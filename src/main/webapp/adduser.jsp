<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>         
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Management</title>
<style type="text/css">
body {
  background-color: lightblue;
}
.button {
  background-color: #0000FF;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}

</style>

</head>
<body>
<h2 align=center>Adding users</h2>
<hr><hr>

<br>

<h3 align=center style="color:red"><c:out value="${message}"></c:out></h3>
<center>
<a href="home">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="adduser">Add Employee</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="viewallusers">View All Employees</a>&nbsp;&nbsp;&nbsp;&nbsp;
</center>&nbsp;

<h3 align=center><u>Add Employee</u></h3><br>

<form action="adduser" method="post">


<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>





<tr>
<td><label>Role</label></td>
<td>
<form:select path="role" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="MANAGER">Manager</form:option>
<form:option value="TEAM LEAD">Team Lead</form:option>
<form:option value="PROJECT TRAINEE">Project Trainee</form:option>
</form:select>
</td>
</tr>



<tr>
<td><label>Location</label></td>
<td><form:input path="location" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><form:input path="emailid" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Username</label></td>
<td><form:input path="username" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><form:input path="contactno" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>

</table>

</form>

</body>
</html>