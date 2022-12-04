<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<style>
body{
  background-image: url('https://media.istockphoto.com/id/1132439239/video/soft-white-background.jpg?s=640x640&k=20&c=aYJe5WV1JXnFveTzlOr44dJWnr7wTZx-yvoGCPzhQN8=');
  background-repeat: no-repeat;
  background-size: cover;
}
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: #D8D8D8;
}

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}
</style>
</head>
<body>

<h1 align=center>Stock Management User Operations</h1>

<br>

<ul>
  <li><a class="active" href="userhome">Home</a></li>
  <li><a href="stocks">Stock Operations</a></li>
  <li><a href="echangepwd">Change Password</a></li>
  <li><a href="userlogin">Logout</a></li>
</ul>

<br>

<h3 align=center>Welcome&nbsp;<c:out value="${euname}"></c:out></h3>

</body>
</html>

 
