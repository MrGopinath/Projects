<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
    <head>
    <title>
    </title>
        <style>
    button{
padding: 14px 28px;
color:white;
background-color:#000066;
border-radius:22px;
font-size:14px;
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
}
  .div1{
            border: 5px solid black;
            margin: 2% 25% 0% 30%;
            padding: 5% 5% 5% 5%;
			font-weight:bold;
                color:white;
                background-color: black;
            opacity:0.9;
            border-radius: 25px;
              text-align: center;
            box-shadow: 3px 5px 35px black;


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
    color:red;
    border:1px solid black;
    margin:1% 33% 0% 42%;
    padding:1% 1% 1% 4%
}
</style>
    </head>
    <body>
    <%String mail=request.getParameter("mail");%>
    <div class="header">
    <a href="assign.jsp?mail=<%=mail%>">BACK</a>
    </div>
    <% 
        String email=request.getParameter("email");
        String date=request.getParameter("ddate");
        String descp=request.getParameter("big");
        String tdate=request.getParameter("tdate");

     try{
    Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycontact","root","");
PreparedStatement ps=conn.prepareStatement("insert into task (mail,task,date,todays)values(?,?,?,now());");
ps.setString(1,email);
ps.setString(2,descp);
ps.setString(3,date);

int x=ps.executeUpdate();
if(x>0)
{
    %><script>window.alert("TASK ASSIGNED SUCCESSFULLY");</script><%
}
else
{
    out.println("FAILED");
}
     }
     catch(Exception e)
     {
        out.println(e);
     }
         %>
         <div class="div1">
         <form action="showassigned.jsp?mail=<%=mail%>" method="post">
         <button type="submit">SHOW-ASSIGNED-TASK</button>
        </form>
        </div>

    </body>
    </html>