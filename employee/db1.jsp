<%@ page language="java" import="java.sql.*"     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME</title>
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
body{
 background-image: url('contact3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
    margin:0;
  
}
 .div1{
            border: 3px solid black;
            margin: 15% 30% 0% 30%;
            padding:5%;
            background-color:black;
        	   color:white;
			font-weight:200;        
			opacity:0.8;   
          border-radius:8px;
            text-align: center;
          box-shadow: 3px 5px 16px rgb(0, 5, 5);



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
</head>
<body>
<div class="header">
    <a href="loginregister.jsp">BACK</a>
</div>
<div class="div1">
   <%
   String user=request.getParameter("nusername");
   String pass=request.getParameter("npassword");

   try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycontact","root","");
    	PreparedStatement ps=conn.prepareStatement("select * from register where mail='"+user+"';");
        ResultSet result=ps.executeQuery();
        if(result.next())
        {
            if(result.getString(6).equals(pass))
            {
                out.println("WELCOME...!");
                %>
                <br><br>
                <div >
                <form action="display.jsp" method="post">
                <button type="submit">ADD+EMP</button>
                </form><br>
                 <form action="show.jsp" method="post">
                <button type="submit">SHOW-EMP</button>
                </form>
                </div>
                <%
            }
            else
            {
             %><script>window.alert("MISMATCH PASSWORD");</script><%

            }           

        }
        }
   catch(Exception e)
   {
    System.out.println(e);
   }
   %> 
   </div>
</body>
</html>