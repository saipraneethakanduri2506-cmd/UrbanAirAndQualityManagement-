<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

<title>AQI Result</title>

<style>

body{
background-image:url(https://t3.ftcdn.net/jpg/09/40/91/36/360_F_940913657_gHOzPijPFsEwVnGlsDDbNo6g04ryoArk.jpg);
background-size:cover;
font-family:sans-serif;
text-align:center;
}

.box{
background:rgba(255,255,255,0.9);
width:500px;
margin:auto;
margin-top:120px;
padding:40px;
border-radius:12px;
}

a{
background:#0066cc;
color:white;
padding:10px 20px;
text-decoration:none;
margin-top:20px;
display:inline-block;
}

</style>

</head>

<body>

<div class="box">

<h2>AQI Result</h2>

<%
Integer aqi = (Integer)request.getAttribute("aqi");
String status = (String)request.getAttribute("status");
String advisory = (String)request.getAttribute("advisory");
%>

<h3>AQI Value: <%=aqi%></h3>

<h3>Status: <%=status%></h3>

<p><b>Health Advisory:</b></p>

<p><%=advisory%></p>

<br>

<a href="forms.jsp">Enter New Data</a>

<a href="dashboard.jsp">Back to Dashboard</a>

</div>

</body>
</html>