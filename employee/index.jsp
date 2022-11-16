<%@ page language="java" import="java.sql.*"     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>

        .div1{
            border: 3px solid black;
            margin: 10% 30% 0% 30%;
            padding: 5% 5% 5% 5%;
            color:green;
            font-weight: bold;
			background-color: black;
			opacity:0.7;
			border-radius:25px;
            }
       body {
  background-image:url('e3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  margin:0;
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
String name=request.getParameter("nname");
String phone=request.getParameter("nphone");
String dob=request.getParameter("ndob");
String address=request.getParameter("naddress");
String gender=request.getParameter("ngender");
String email=request.getParameter("nemail");
String martial=request.getParameter("nmartial");
String pan=request.getParameter("npan");
String department=request.getParameter("ndepartment");
String lpa=request.getParameter("nlpa");



try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","");
	PreparedStatement ps=conn.prepareStatement("insert into addemp values(null,?,?,?,?,?,?,?,?,?,?);");
	ps.setString(1, name);
	ps.setString(2, phone);
	ps.setString(3, dob);
	ps.setString(4, address);
	ps.setString(5, gender);
	ps.setString(6, email);
	ps.setString(7, martial);
	ps.setString(8, pan);
	ps.setString(9, department);
	ps.setString(10, lpa);

	int x=ps.executeUpdate();
	%>
	<div style="text-align:center">
	<%
	if(x>0)
	{
		%><script>alert("Successfull..!");</script><%
		response.sendRedirect("addemp.jsp");
	}
	else
	{
		%><script>alert("FAILED..!");</script><%
	}
	%>
	</div>
	<%
	
	
}
catch(Exception e){
	out.println(e);
	
}

%>
</div>

</body>
</html>
