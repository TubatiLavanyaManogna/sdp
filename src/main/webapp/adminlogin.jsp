<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<style>
body{
  background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLlvB16lzFqW7OiAd9JHzYj4MzrYa1sZQE_Q&usqp=CAU');
  background-repeat: no-repeat;
  background-size: cover;
}
.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  background-color: green;
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


ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: #B45F04;
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
  background-color: #088A68;
  color: white;
}
.rightdiv{
  box-sizing: content-box;
  width: 20%;
  border: solid black 5px;
  padding: 5px;
  position: absolute;
  top: 30%;
  left: 42%;
  margin: -25px 0 0 -25px;
  background-color: antiquewhite;
}
</style>
</head>
<body>

<ul>
  <li><a href="/">Home</a></li>
  <li><a class="active" href="adminlogin">Admin</a></li>
  <li><a href="userlogin">Employee</a></li>
</ul>

<br><br>

<h3 align=center><u>Admin Login</u></h3>

<div class="rightdiv">
<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>


<br>

<form method="post" action="checkadminlogin">

<table align=center>

<tr>
<td><label>Username</label></td>
<td><input type="text" name="auname" required></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="apwd" required></td>
</tr>

<tr><td></td></tr>

<tr align=center>

<td colspan="2"><input type="submit" value="Login" class="button"></td>

</tr>

</table>

</form>
</div>

</body>
</html>