<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="common.css">
<link rel="stylesheet" href="login.css">

<head>
<meta charset="ISO-8859-1">
<title>Seller Login</title>
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

function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };

</script> 

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
<div class="login">
<h1>Seller Login</h1>
	<form action="log" method="post" >
	
		<label>User Name </label>
		<input type="text" name="username" placeholder="Username" required><br>
		<label>Password</label>
		 <input type="password" name="password" placeholder="Password" id="password" required><br>
		 <input type="checkbox" onclick="psFunction()">Show/Hide Password 
		
		<input type="submit" name="loginsubmit" value="Login">
		<h3>If you don't have an account</h3>
		<a href="sellerregister.jsp">
		
		<input type="button" name="registerbutton" value="Register In here">
		</a>
		
	</form>
</div>
</body>
</html>