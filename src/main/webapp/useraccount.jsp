<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="common.css">
<link rel="stylesheet" href="account.css">

<meta charset="ISO-8859-1">

<title>Seller Profile</title>


		
				
</head>
<body>

<div class="layout">
		
		
		<a class="logo"><img src="logo.png" width="180" height="180"></a>
			<div class="head">
			<a href="#">HOME</a>
			<a href="#">VEHICLE CATEGORIES</a>
			<a href="#">NOTICES</a>
			<a href="#">OFFERS</a>
			<a href="#">ABOUT US</a>
			<a href="#">CONTACT US</a>
			<div class="search">
				
				<div id="user"><i class="fa fa-user"></i></div>
				<input type="text" placeholder="Search">
				<label class="fa fa-search input-icon"></label>
				
				
				</div>
			</div>
</div>


<br><br>

<div class="login">	
<table id="all">
<tr>
	<td><table id="profile">
 
	

	<c:forEach var="sel" items="${selDetails}">
	
	<c:set var="sellerID" value="${sel.sellerID}" />
	<c:set var="fullname" value="${sel.fullname}" />
	<c:set var="address" value="${sel.address}" />
	<c:set var="nic" value="${sel.nic}" />
	<c:set var="phone" value="${sel.phone}" />
	<c:set var="email" value="${sel.email}" />
	<c:set var="username" value="${sel.username}" />
	<c:set var="password" value="${sel.password}" />
	<c:set var="producttypes" value="${sel.producttypes}" />
	<c:set var="frontimg" value="${sel.frontimg }" />
	<c:set var="backimg" value="${sel.backimg }"  />
	
	
	<tr>
	<th><h1>My Profile</h1></th>
	</tr>
  <tr>
    <td>My ID </td>
    <td> ${sel.sellerID} </td>
  </tr>
  <tr>
    <td>Full Name </td>
    <td>${sel.fullname}</td>
  </tr>
  
  <tr>
    <td>Address </td>
    <td>${sel.address}</td>
  </tr>
  <tr>
    <td>NIC Number </td>
    <td>${sel.nic}</td>
  </tr>
  <tr>
    <td>Phone Number </td>
    <td>${sel.phone}</td>
  </tr>
  <tr>
    <td>Email </td>
    <td>${sel.email}</td>
  </tr>
  <tr>
    <td>User Name </td>
    <td>${sel.username}</td>
  </tr>
  <tr>
    <td>Password </td>
    <td>${sel.password}</td>
  </tr>
  <tr>
    <td>Product Types </td>
    <td>${sel.producttypes}</td>
   
  </tr>
  	<tr>
    <td>Front NIC </td>
    <td><img src="data:image/gif;base64,${sel.frontimg }" alt="" /></td>
   
  </tr>
	<tr>
    <td>Back NIC </td>
    <td><img src="data:image/gif;base64,${sel.backimg }" alt="" /></td>
   
  </tr>
	</c:forEach>
</table></td>

<c:url value="updateseller.jsp" var="selupdate">

	<c:param name="sellerID" value="${sellerID}"/>
	<c:param name="fullname" value="${fullname}"/>
	<c:param name="address" value="${address}"/>
	<c:param name="nic" value="${nic}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="username" value="${username}"/>
	<c:param name="password" value="${password}"/>
	<c:param name="producttypes" value="${producttypes}"/>
	<c:param name="frontimg" value="${frontimg}"/>
	<c:param name="backimg" value="${backimg}"/>
	

</c:url>

<td ><a href ="${selupdate}">

<input type ="button" name="update" value="Update Profile" id="button1" >
</a>

<c:url value="deleteseller.jsp" var="seldelete">
	<c:param name="sellerID" value="${sellerID}"/>
	<c:param name="fullname" value="${fullname}"/>
	<c:param name="address" value="${address}"/>
	<c:param name="nic" value="${nic}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="username" value="${username}"/>
	<c:param name="password" value="${password}"/>
	<c:param name="producttypes" value="${producttypes}"/>
	<c:param name="frontimg" value="${frontimg}"/>
	<c:param name="backimg" value="${backimg}"/>
	
	
</c:url>
<input type ="button" name="Add Item" value="Add Item" id="button1" >
<input type ="button" name="My Items" value="My Items" id="button1" >
<a href ="logout">

<input type ="button" name="logout" value="Logout" id="button1" >
</a>

<a href ="${seldelete}">

<input type ="button" name="delete" value="Delete Profile" id="button2" >
</a></td>

</tr>
</table>
</div>
</body>
</html>