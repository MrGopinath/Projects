
<%@ page language="java"  import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>

                   body {
  background-image:url('e3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  margin:0;
}
        .div1{
            border: 3px solid black;
            margin: 5% 30% 0% 30%;
            padding: 5% 5% 5% 5%;
            color:white;
            font-weight: bold;
          background-color: black;
             opacity:0.7;
             border-radius:25px;
        }
         .header {
  overflow: hidden;
  background-color: #1a0000;
}

.header a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 15px 20px;
  text-decoration: none;
  
}

.header a:hover {
  background-color: #ddd;
  color: black;
}
</style>
<title>REGISTRED</title>
</head>
<body style="background-color: black">
<div class="header"><a href="addemp.jsp">Back To Home</a><br>
</div>
<div class="div1">
<%
String did=request.getParameter("uid");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","");
	PreparedStatement ps=conn.prepareStatement("DELETE from addemp where id=?");
	ps.setString(1, did);
	int x=ps.executeUpdate();
    %>
    <div style="text-align:center">
    <%
	if(x>0)
	{
		%><script>alert("Deleted Successfull..!");</script>
    <div class="head">
    <a href="addemp.jsp">BACK</a>
    </div>
    <%
	}
	else
	{
		%><script>alert("Failed..!");</script><%
	}	
    %>
    </div>
    <%
}
catch(Exception e)
{
	out.println(e);
}

%>
</div>
</body>
</html>