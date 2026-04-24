<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%
HttpSession s = request.getSession(false);
if(s == null || s.getAttribute("username") == null){
response.sendRedirect("login.jsp");
return;
}
%>

<!DOCTYPE html>
<html>
<head>

<title>AQI Data Entry</title>

<style>

body{
background-image:url(https://t3.ftcdn.net/jpg/09/40/91/36/360_F_940913657_gHOzPijPFsEwVnGlsDDbNo6g04ryoArk.jpg);
background-size:cover;
font-family:sans-serif;
}

h1{
text-align:center;
color:white;
}

.container{
display:flex;
justify-content:center;
gap:30px;
margin-top:30px;
flex-wrap:wrap;
}

.card{
background:rgba(255,255,255,0.9);
padding:20px;
border-radius:10px;
width:300px;
}

input{
width:100%;
padding:8px;
margin:6px 0;
}

input[type=submit]{
background:#0066cc;
color:white;
border:none;
}

.back{
display:block;
text-align:center;
margin-top:20px;
color:white;
font-weight:bold;
}

</style>

</head>

<body>

<h1>AQI Data Entry Dashboard</h1>

<div class="container">

<!-- AQI FORM -->

<div class="card">

<h3>Daily AQI Submission</h3>

<form action="AQISubmitServlet" method="post">

Location ID
<input type="number" name="location_id" required>

Date
<input type="date" name="date_recorded" required>

PM2.5
<input type="number" step="any" name="pm25" required>

PM10
<input type="number" step="any" name="pm10" required>

NO2
<input type="number" step="any" name="no2" required>

SO2
<input type="number" step="any" name="so2" required>

CO
<input type="number" step="any" name="co" required>

<input type="submit" value="Calculate AQI">

</form>

</div>

</div>

<a class="back" href="dashboard.jsp">Back to Dashboard</a>

</body>
</html>