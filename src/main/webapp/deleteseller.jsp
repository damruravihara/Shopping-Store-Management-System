<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="common.css">
<link rel="stylesheet" href="delete.css">

<head>
<meta charset="ISO-8859-1">

<title>Delete My Account</title>
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

<br><br><br>


	<%
		String sellerID = request.getParameter("sellerID");
		String fullname = request.getParameter("fullname");
		String address = request.getParameter("address");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String producttypes = request.getParameter("producttypes");
		String frontimg = request.getParameter("frontimg");
		String backimg = request.getParameter("backimg");
	%>
	
	
<div class="delete">

<h1>Delete Account</h1>
<hr>
<form action = "delete" method = "post">
	
	<table>
		<tr>
			<td>Seller ID</td>
			<td><input type="text" name="sellerID" value="<%= sellerID %>" readonly></td>
		</tr>
		<tr>
			<td>Full name</td>
			<td><input type="text" name="fullname" value="<%= fullname %>" readonly></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><input type="text" name="address" value="<%= address %>" readonly></td>
		</tr>
		<tr>
			<td>NIC</td>
			<td><input type="text" name="nic" value="<%= nic %>" readonly></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" value="<%= email %>" readonly></td>
		</tr>
		<tr>
			<td>User Name</td>
			<td><input type="text" name="uname" value="<%= username %>" readonly></td>
		</tr>
		
		<tr>
			<td>Product types</td>
			<td><input type="text" name="producttypes" value="<%= producttypes %>" readonly></td>
		</tr>
		
		<tr>
		<td>Add Front Picture of NIC</td>
		<td><input type="text" name="frontimg" value="<%= frontimg %>" readonly></td>
		</tr>
		
		<tr>
		<td>Add back Picture of NIC</td>
		<td><input type="text" name="backimg" value="<%= backimg %>" readonly></td>
		</tr>
</table>
<hr>
<table>
<tr>

	    <td><p>Are You Sure To delete account</p><br>
		<input type="submit" name="submit" value="Delete Account"><br></td>
		<td><p>Logout from your account</p><br>
		<a href="sellerlogout.jsp"><input type="button" name="user" value="Logout"></a><br></td>	
		
	</tr>

</table>
	</form>

</div>	



</body>
</html>