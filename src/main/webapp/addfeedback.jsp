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

input[type=text],input[type=text],input[type=text],input[type=text],input[type=text],input[type=text],
select
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
<h2 align=center>Feedback</h2>
<hr><hr>

<br>

<h3 align=center style="color:red"><c:out value="${message}"></c:out></h3>
<center>
<a href="">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="addfeedback">Add Feedback</a>&nbsp;&nbsp;&nbsp;&nbsp;

</center>&nbsp;


</body>
</html>