<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>

       body {
  background-image:url('contact3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  margin:0;
}
        .div1{
            border: 3px solid black;
            margin: 5% 30% 0% 30%;
            padding: 5% 5% 5% 5%;
            color: white;
            font-weight: bold;
			 background-color: black;
			opacity:0.7;
			            border-radius: 25px;

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
<div class="header"><a href="addemp.jsp">Back To Home</a>
</div>
<div class="div1">
<%
String uid=request.getParameter("uid");
String uname=request.getParameter("uname");
String uphone=request.getParameter("uphone");
String udob=request.getParameter("udob");
String uaddress=request.getParameter("uaddress");
String ugender=request.getParameter("ugender");
String uemail=request.getParameter("uemail");
String ustatus=request.getParameter("ustatus");
String upan=request.getParameter("upan");
String udepartment=request.getParameter("udepartment");
String ulpa=request.getParameter("ulpa");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","");
	PreparedStatement ps=conn.prepareStatement("update addemp set  Emp_id=?,Name=?,Phone=?,DOB=?,Address=?,Gender=?,Email=?,Status=?,PAN=?,Department=?,LPA=? where Emp_id=?;");
	ps.setString(1,uid);
	ps.setString(2,uname);
	ps.setString(3,uphone);
	ps.setString(4,udob);
	ps.setString(5,uaddress);
	ps.setString(6,ugender);
	ps.setString(7,uemail);
	ps.setString(8,ustatus);
	ps.setString(9,upan);
	ps.setString(10,udepartment);
	ps.setString(11,ulpa);
	ps.setString(12,uid);
	int y=ps.executeUpdate();
	%>
	
		<div style="text-align:center">
		<%
	if(y>0)
	{

		out.println("Updated..Successfully");

	}
	else
	{
		out.println("Updated....Not...Successfully");
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