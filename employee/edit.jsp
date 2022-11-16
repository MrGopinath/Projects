<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
button{
padding: 14px 28px;
color:white;
background-color:#000066;
font-size:90%;
border-radius: 22px;

}
button:hover{
  background-color:green;
}

                 body {
                  background-color:black;
  background-image:url('.jpg');
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
            border-radius: 25px;
             background-color:black;
                		opacity:0.8;	
                    text-align:center;
        }
        .header {
  overflow: hidden;
  background-color:black;
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
.f{
  color:red;
  font-family:Courier New;
  text-align:center;
  font-size:27px;

}
 body {
		font-family: 'Varela Round', sans-serif;
	}
	.modal-login {		
		color: #636363;
		width: 350px;
		margin: 80px auto 0;
	}
	.modal-login .modal-content {
		padding: 20px;
		border-radius: 5px;
		border: none;
	}
	.modal-login .modal-header {
		border-bottom: none;   
        position: relative;
        justify-content: center;
	}
	.modal-login h4 {
		text-align: center;
		font-size: 26px;
		margin: 30px 0 -15px;
	}
	.modal-login .form-control:focus {
		border-color: #70c5c0;
	}
	.modal-login .form-control, .modal-login .btn {
		min-height: 40px;
		border-radius: 3px; 
	}
	.modal-login .close {
        position: absolute;
		top: -5px;
		right: -5px;
	}	
	.modal-login .modal-footer {
		background: #ecf0f1;
		border-color: #dee4e7;
		text-align: center;
        justify-content: center;
		margin: 0 -20px -20px;
		border-radius: 5px;
		font-size: 13px;
	}
	.modal-login .modal-footer a {
		color: #999;
	}		
	.modal-login .avatar {
		position: absolute;
		margin: 0 auto;
		left: 0;
		right: 0;
		top: -70px;
		width: 95px;
		height: 95px;
		border-radius: 50%;
		z-index: 9;
		background: #60c7c1;
		padding: 15px;
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
	}
	.modal-login .avatar img {
		width: 100%;
	}
    .modal-login .btn {
        color: #fff;
        border-radius: 4px;
		background: #60c7c1;
		text-decoration: none;
		transition: all 0.4s;
        line-height: normal;
        border: none;
    }
	.modal-login .btn:hover, .modal-login .btn:focus {
		background: #45aba6;
		outline: none;
	}
	.trigger-btn {
		display: inline-block;
		margin: 100px auto;
	}
</style>
<meta charset="ISO-8859-1">
<title>Editing Contact</title>
</head>
<body>
<%
try{
	String id1=request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver");
Connection	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","");
PreparedStatement ps=conn.prepareStatement("select * from addemp where id='"+id1+"' ");
ResultSet result=ps.executeQuery();
while(result.next())
{%>
<div class="header"><a href="addemp.jsp">CANCEL</a>
</div>
<div class="text-center">
	<!-- Button HTML (to Trigger Modal) -->
	<a href="#myModal" class="trigger-btn" data-toggle="modal">Click to Update a Client Info</a>
</div>

<!-- Modal HTML -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">
				<div class="avatar">
					<img src="avatar1.png" alt="Avatar">
				</div>				
				<h4 class="modal-title">UPDATE DETAILS</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form  onsubmit="update()">
					<div class="form-group">
						<input type="hidden" name="uid" value="<%= result.getString(1)%>">

						Employee ID: 	<br><br><%out.println(id1);%></div>

					<div class="form-group">
						<input type="text" class="form-control" name="uname" placeholder="Name" required="required" value="<%= result.getString(2)%>">		
					</div>
					<div class="form-group">
						<input type="number" class="form-control" name="uphone" placeholder="Phone No" required="required" value="<%= result.getString(3)%>">		
					</div>
					<div class="form-group">
						<input type="date" class="form-control" name="udob" placeholder="DOB" required="required" value="<%= result.getString(4)%>">		
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="uaddress" placeholder="Address" required="required" value="<%= result.getString(5)%>">		
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="ugender" placeholder="Gender" required="required" value="<%= result.getString(6)%>">		
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="uemail" placeholder="E-Mail" required="required" value="<%= result.getString(7)%>">		
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="ustatus" placeholder="Martial-Status" required="required" value="<%= result.getString(8)%>">		
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="upan" placeholder="PAN" required="required" value="<%= result.getString(9)%>">		
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="udepartment" placeholder="Department" required="required" value="<%= result.getString(10)%>">		
					</div> 
					<div class="form-group">
						<input type="text" class="form-control" name="ulpa" placeholder="LPA" required="required" value="<%= result.getString(11)%>">		
					</div>            
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block login-btn">UPDATE</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</div> 
<%}
}
catch(Exception e)
{
	out.println(e);
} %>
<script>
	function update()
	{
	</script>
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
		PreparedStatement ps=conn.prepareStatement("Update addemp set  id=?,name=?,phone=?,dob=?,address=?,gender=?,email=?,martial=?,pan=?,department=?,lpa=? where id=?;");
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
	
		if(y>0)
		{
		%>
	  <script>
	  alert("Updated successfully");
	  </script>
	  <%
    response.sendRedirect("addemp.jsp");
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
	<script>
	}
	</script>   
</body>
</html>