<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%
HttpSession session1 = request.getSession(false);

if(session1 == null || session1.getAttribute("username") == null){
response.sendRedirect("login.jsp");
return;
}
%>

<!DOCTYPE html>
<html>
<head>

<title>Dashboard</title>

<style>

body{
background-image:url(https://t3.ftcdn.net/jpg/09/40/91/36/360_F_940913657_gHOzPijPFsEwVnGlsDDbNo6g04ryoArk.jpg);
background-size:cover;
font-family:sans-serif;
text-align:center;
}

.box{
background:rgba(255,255,255,0.9);
width:600px;
margin:auto;
margin-top:100px;
padding:40px;
border-radius:12px;
}

a{
background:#0066cc;
color:white;
padding:10px 20px;
text-decoration:none;
margin:10px;
display:inline-block;
}

a:hover{
background:#004999;
}

</style>

</head>

<body>

<div class="box">

<h2>System Dashboard</h2>

Welcome <b><%=session1.getAttribute("username")%></b>

<h3>Urban Air Quality Monitoring</h3>

<ul style="text-align:left;">
<li>Location Management</li>
<li>Pollutant Monitoring</li>
<li>AQI Calculation</li>
<li>Citizen Alerts</li>
</ul>

<br>

<a href="forms.jsp">Go to Data Entry</a>

<a href="LogoutServlet">Logout</a>

</div>

</body>
</html>