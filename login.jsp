<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Urban Air Quality System - Login</title>

<style>

body{
background-image:url(https://t3.ftcdn.net/jpg/09/40/91/36/360_F_940913657_gHOzPijPFsEwVnGlsDDbNo6g04ryoArk.jpg);
background-size:cover;
font-family:sans-serif;
text-align:center;
}

.box{
background:rgba(255,255,255,0.9);
width:400px;
margin:auto;
margin-top:120px;
padding:40px;
border-radius:12px;
}

input{
width:90%;
padding:10px;
margin:10px;
}

input[type=submit]{
background:#4CAF50;
color:white;
border:none;
cursor:pointer;
}

a{
color:blue;
text-decoration:none;
font-weight:bold;
}

</style>
</head>

<body>

<div class="box">

<h2>Urban Air Quality System</h2>

<form action="LoginServlet" method="post">

Username<br>
<input type="text" name="username" required><br>

Password<br>
<input type="password" name="password" required><br>

<input type="submit" value="Login">

</form>

<p>
<%
if("1".equals(request.getParameter("error")))
out.print("<span style='color:red'>Invalid Login</span>");

if("1".equals(request.getParameter("success")))
out.print("<span style='color:green'>Registration Successful</span>");
%>
</p>

<p>
Don't have an account?  
<a href="registration.jsp">Register Here</a>
</p>

</div>

</body>
</html>