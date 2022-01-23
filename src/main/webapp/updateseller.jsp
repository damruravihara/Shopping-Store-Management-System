<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="update.css">
<head>
<meta charset="ISO-8859-1">

<title>Update My Account</title>
</head>
<body>

<script type="text/javascript">

function psFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}

</script>

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
	%>
	
<div>
	<form action = "update" method = "post">
	
		<h2>Update Profile</h2>
	<hr>
		
		
			<label>Seller ID</label>
			<input type="text" name="sellerID" value="<%= sellerID %>" readonly>
		
			<label>Full name</label>
			<input type="text" name="fullname" value="<%= fullname %>">
		
			<label>Address</label>
			<input type="text" name="address" value="<%= address %>">
		
			<label>NIC</label>
			<input type="text" name="nic" value="<%= nic %>">
		
			<label>Phone</label>
			<input type="text" name="phone" value="<%= phone %>">
		
			<label>Email</label>
			<input type="text" name="email" value="<%= email %>">
		
			<label>User Name</label>
			<input type="text" name="username" value="<%= username %>">
		
		
			<label>Password</label>
			<input type="password" name="password" id="password" value="<%= password %>">
			<input type="checkbox" onclick="psFunction()">Show/Hide Password<br><br>
		
			<label>Product types</label>
			<input type="text" name="producttypes" value="<%= producttypes %>">
				
		
		<hr>
		<br>
		<input type="submit" name="submit" value="Update"><br>



	
	</form>
</div>	

</body>
</html>