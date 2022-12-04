<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<style>
body{
background-color: #F0DBFE ;
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
  background-color: #F7AB5B;
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
  background-color: #5BF7CF ;
  color: white;
}
</style>
</head>
<body>

<h1 align=center>We would like to hear feedback</h1>

<br>

<ul>
  <li><a href="/">Home</a></li>
  <li><a href="adminlogin">Admin</a></li>
  <li><a class="active" href="userlogin">Employee</a></li>
</ul>

<br><br>

<h3 align=center><u>Please provide your feedback</u></h3>
<p align="center">We would love to hear your thoughts, suggestions, concerns or problems with anything so we can improve!</p>
<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>


<form:form action="addfeedback" method="post" modelAttribute="feedback">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>
<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><form:input path="email" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr><td></td></tr>

<tr>
<td><label>Rate your experience?</label></td>
<td>
<form:radiobutton path="q1" value="1" required="required"/>1
<form:radiobutton path="q1" value="2" required="required"/>2
<form:radiobutton path="q1" value="3" required="required"/>3
<form:radiobutton path="q1" value="4" required="required"/>4
<form:radiobutton path="q1" value="5" required="required"/>5
</td>
</tr>

<tr>
<td><label>How would you rate the support you receive?</label></td>
<td>
<form:radiobutton path="q2" value="1" required="required"/>1
<form:radiobutton path="q2" value="2" required="required"/>2
<form:radiobutton path="q2" value="3" required="required"/>3
<form:radiobutton path="q2" value="4" required="required"/>4
<form:radiobutton path="q2" value="5" required="required"/>5
</td>
</tr>

<tr>
<td><label>Please Rate us the quality of application</label></td>
<td>
<form:radiobutton path="q3" value="1" required="required"/>1
<form:radiobutton path="q3" value="2" required="required"/>2
<form:radiobutton path="q3" value="3" required="required"/>3
<form:radiobutton path="q3" value="4" required="required"/>4
<form:radiobutton path="q3" value="5" required="required"/>5
</td>
</tr>




<tr>
<td><label>Comment</label></td>
<td><form:input path="comment" required="required"/></td>
</tr>




<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Send Feedback" class="button"></td>
</tr>

</table>

</form:form>



</body>
</html>