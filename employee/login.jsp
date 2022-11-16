<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
button{
color:white;
background-color:#000066;
}
button:hover{
  background-color:green;
}
    body { 	
  background-image: url('log.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  margin:0;
}
    

        .div1{
            border: 5px solid black;
            margin: 5% 36% 0% 30%;
            padding: 5% 5% 5% 5%;
			font-weight:bold;
                color:white;
                background-color: black;;
            opacity:0.9;
            border-radius: 25px;
              text-align: center;

        }
        .header {
  overflow: hidden;
  background-color:#1a0000;
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
.s{
    text-align:center;
    margin:1% 15% 0% 0%;
    color:white;
}


    </style>
</head>
<body>

    <div class="header">
        <a href="register.jsp">BACK</a>
        <div class="s">
LOGIN
</div>
    </div>
<div class="div1">
<form action="db1.jsp" method="post">
E-MAIL:<br>
<input type="text"  name="nusername"><br><br>
PASSWORD:
<input type="password"  name="npassword"><br><br>
<button type="submit">LOGIN</button>
</form>
</div>
</body>
</html>