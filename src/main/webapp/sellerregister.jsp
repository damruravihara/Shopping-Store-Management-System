<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="common.css">
<link rel="stylesheet" href="register.css">

<head>


<meta charset="ISO-8859-1">
<title>Seller Registration</title>
</head>
<body>

<script type="text/javascript">
function pswFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}

function repswFunction() {
	  var x = document.getElementById("repassword");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
	
function cheakpassword(){
	if(document.getElementById("password").value != document.getElementById("repassword").value){
		alert("Passwords Are mismatched");
		return false;
	}
	
}	


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



<div class="register">
	<h3>Already registered:</h3>
		<a href="sellerlogin.jsp">
		<input type="button" name="registerbutton" value="login In here">
		</a>
	<h2>Register forum</h2>
	<hr>
	
	
	<form action="register" method="post" onsubmit="return cheakpassword()">
		
		<label>Full Name</label> 
		<input type="text" name="fullname" required><br>
		
		<label>Address</label> 
		<input type="text" name="address" required><br>
		
		<label>NIC</label> 
		<input type="text" name="nic" required><br>
		
		<label>Phone Number</label> 
		<input type="text" name="phone" required><br>
		
		<label>Email</label> 
		<input type="text" name="email" required><br>
		
		<label>User Name</label> 
		<input type="text" name="username" required><br>
		
		<label>Password </label>
		<input type="password" name="password" id="password" required><br>		
		<input type="checkbox" onclick="pswFunction()">Show/Hide Password <br><br>
		
		<label>Repeat Password</label> 
		<input type="password" name="repassword" id="repassword"  required>
		<input type="checkbox" onclick="repswFunction()">Show/Hide Password <br><br>
		
		<label>Product Types  </label
		><input type="text" name="producttypes" required><br>
		
		<label>Add Front Picture of NIC</label>
		<input type="file" name="frontimg" required><br><br>
		
		<label>Add back Picture of NIC</label>
		<input type="file" name="backimg" required><br><br>
		
		
		<hr>
		
		<input type="submit" name = "submit" value="Register">
		<button type="reset" class="resetbtn">Reset</button>
		
	</form>
</div>
</body>
</html>