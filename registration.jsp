<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

<title>User Registration</title>

<style>

body{
background-image:url(https://t3.ftcdn.net/jpg/09/40/91/36/360_F_940913657_gHOzPijPFsEwVnGlsDDbNo6g04ryoArk.jpg);
background-size:cover;
font-family:sans-serif;
text-align:center;
}

.box{
background:rgba(255,255,255,0.9);
width:420px;
margin:auto;
margin-top:100px;
padding:40px;
border-radius:12px;
}

input{
width:90%;
padding:10px;
margin:10px;
}

input[type=submit]{
background:#0066cc;
color:white;
border:none;
cursor:pointer;
}

</style>

</head>

<body>

<div class="box">

<h2>User Registration</h2>

<form action="RegistrationServlet" method="post">

Full Name<br>
<input type="text" name="fullname" required><br>

Email<br>
<input type="email" name="email" required><br>

Username<br>
<input type="text" name="username" required><br>

Password<br>
<input type="password" name="password" required><br>

<input type="submit" value="Register">

</form>

<br>

<a href="login.jsp">Back to Login</a>

</div>

</body>
</html>