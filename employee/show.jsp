<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display-All-Contacts</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* table{
  font-size:19px;
} */
body{
 background-image: url('.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
    margin:0;
  
}
        .div1{
            border: 3px solid black;
            margin: 5% 7% 0% 4%;
            background-color:black;
        	   color:white;
			font-weight:200;        
			opacity:0.7;   
          border-radius:8px;
          box-shadow: 3px 5px 3px rgb(0, 5, 5);
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

.header a.right {
  float: right;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}
.s{
background-color:rgb(12, 96, 181);
}
h1 {
    font-size: 36px;
    line-height: 40px;
    color:red;
}
.d{
  margin:5px 5px 0px 40%;
}
</style>

</head>
<body>

<%
String mail=request.getParameter("mail");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","");
PreparedStatement ps=conn.prepareStatement("select * from addemp");
ResultSet result=ps.executeQuery();

%>
<div class="header">
        <div class="header"> <a href="addemp.jsp?mail=<%=mail%>">BACK</a></div>

</div >
<div class="s">
<div class="d">
<h1>Showing-Client-Details<h1>
</div>
</div>
        <table class="table table-dark table-striped" >
   <tr >
                 <th>Id</th>
                 <th>Name</th>
                 <th>Phone</th>
                 <th>DOB</th>
                 <th>Address</th>
                <th>Gender</th>
                <th>E-Mail</th>                                
                <th>Status</th>
                <th>PAN</th>
                <th>Department</th>
                <th>LPA</th>
                <th>EDIT</th>
                <th>DELETE</th>


                 
          </tr>
           <% while(result.next()){ %>
           <tr >
                <td > <%= result.getString(1) %></td>
               <td> <%= result.getString(2) %></td>
               <td> <%= result.getString(3) %></td>
               <td> <%= result.getString(4) %></td>
               <td> <%= result.getString(5) %></td>
				<td> <%= result.getString(6) %></td>
				<td> <%= result.getString(7) %></td>
				<td> <%= result.getString(8) %></td>
				<td> <%= result.getString(9) %></td>
				<td> <%= result.getString(10) %></td>
				<td> <%= result.getString(11) %></td>
				<td><a href="edit.jsp?id=<%= result.getString(1)%>"style="color:pink"><i class="material-icons">&#xE254;</i></a></td>
				<td><a href="bdelete.jsp?id=<%= result.getString(1)%>"style="color:red"><i class="material-icons">&#xE872;</i></a></td>
				 </tr>
           <%  }
           }
catch(Exception e)
{
	out.println(e);
}

%>
          </table>
</body>
</html>