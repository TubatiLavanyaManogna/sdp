<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
    border: 1px solid white;
    border-collapse: collapse;
    text-align: center;
  }
  th, td {
    background-color: #96D4D4;
    border-style: solid;
    border-color: black;
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

<h1 align=center>Spring Boot MVC CRUD Operations Project</h1>

<br>

<ul>
  <li><a href="userhome">Home</a></li>
  <li><a class="active"  href="viewallstock">View All Stock</a></li>
  <li><a href="userlogin">Logout</a></li>
</ul>

<br><br>

<h3 align=center><u>View All Stock</u></h3>

<table align=center border=2 style="width:70%">

<tr>

<th>ID</th>
<th>Name</th>
<th>Category</th>
<th>Price</th>
<th>Quantity</th>

<th>Action</th>

</tr>

<c:forEach items="${stocklist}" var="stock">

<tr>

<td> <c:out value="${stock.id}"></c:out>   </td>
<td> <c:out value="${stock.name}"></c:out>   </td>
<td> <c:out value="${stock.catg}"></c:out>   </td>
<td> <c:out value="${stock.price}"></c:out>   </td>
<td> <c:out value="${stock.qty}"></c:out>   </td>

<td> 

<a href='<c:url value='deletestock?id=${stock.id}'></c:url>'><img src="https://img.favpng.com/15/18/2/button-delete-key-icon-png-favpng-QyKEi5YZShJs1T6X5mdfkLUSW_t.jpg" alt="HTML tutorial" style="width:30px;height:30px;"></a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>

</body>
</html>