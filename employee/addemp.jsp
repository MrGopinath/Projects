<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CHOOSE</title>

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
  background-image: url('.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  margin:0;
  background-color:black;
}

        .div1{
            border: 5px solid black;
            margin: 5% 36% 0% 30%;
            padding: 5% 5% 5% 5%;
			font-weight:bold;
                color:black;
                /* background-color: #FF6F61; */
                background-color:rgb(119, 12, 181);
            opacity:10;
                        border-radius: 25px;


            
        }
   .header {
  overflow: hidden;
  background-color: black;
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
</head>
<body>

    <div class="header">
    <a href="loginregister.jsp">LOG-OUT</a>
    </div>
    <%
    String mail=request.getParameter("mail");
    %>
<div class="div1">
<div class="col-md-6 col-lg-5 d-none d-md-block">
                            <img src="adminpng.png"
                              alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                          </div>
<form action="display.jsp?mail=<%=mail%>" method="post">
New Client:
<button type="submit">Add+Client</button><br><br>
</form>
<form action="show.jsp?mail=<%=mail%>"  method="post">
List Client:
<button type="submit">Show-Client</button><br><br>
</form>
<form action="viewtask.jsp?mail=<%=mail%>" method="post">
USER-MAIL:<br><br>
<input type="text" name="mail" value="<%= mail%>"><br><br>
Task-Assigned:
<button type="submit">Show-TASK</button>
</form>
</div>
</body>
</html>