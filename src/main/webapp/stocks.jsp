<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<style>
body{
  background-image: url('data:image/jpeg;base64,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');
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

input[type=text],input[type=text],input[type=number],input[type=number],
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
  background-color: whitesmoke;
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
  <li><a href="adminlogin">Admin</a></li>
  <li><a class="active" href="stocks">Stock</a></li>
  <li><a href="viewallstock">Stock Available</a></li>
</ul>

<br><br>

<h3 align=center><u>Stock Entry</u></h3>

<div class="rightdiv">
<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>


<form:form action="addstock" method="post" modelAttribute="stock">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>







<tr>
<td><label>Category</label></td>
<td>
<form:select path="catg" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="Fragile">Fragile</form:option>
<form:option value="Soft toys">Soft toys</form:option>
<form:option value="Hard toys">Hard toys</form:option>
<form:option value="Phone">Phone</form:option>
<form:option value="Clothes">Clothes</form:option>
<form:option value="Accessories">Accessories</form:option>
<form:option value="Beauty Grooming">Beauty Grooming</form:option>
<form:option value="Kitchen Appliances">Kitchen Appliances</form:option>

</form:select>
</td>
</tr>



<tr>
<td><label>Price</label></td>
<td><form:input path="price" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Quantity</label></td>
<td><form:input path="qty" required="required"/></td>
</tr>

<tr><td></td></tr>


<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>

</table>

</form:form>
</div>



</body>
</html>