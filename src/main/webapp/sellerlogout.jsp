<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="logout.css">
<head>
<meta charset="ISO-8859-1">

<title>User Logout</title>
</head>
<body>

<script>
function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };


</script>
<div>
<h1><font color="Red">Click here to logged out...</font></h1>

 <a href="sellerlogin.jsp"><input type ="button" name="logout" value="Logout" id="button1" ></a>

</div>
        

</body>
</html>