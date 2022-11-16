<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
    <head>
    <title>
    </title>
        <link
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
rel="stylesheet"
/>
<!-- Google Fonts -->
<link
href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
rel="stylesheet"
/>
<!-- MDB -->
<link
href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.css"
rel="stylesheet"
/>
    <style>
    body { 	
  background-image: url('.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  margin:0;
  background-color:black;
}
table{
    background-color:white;
    color:white;
    font-size:19px;
}
        .div1{
            border: 3px solid black;
            margin: 5% 23% 0% 23%;
            padding:3% 3% 3% 3%;
            background-color:black;
        	   color:white;
			font-weight:200;        
			opacity:0.9;   
          border-radius:8px;
          box-shadow: 3px 5px 3px rgb(0, 5, 5);
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
.s{
    background-color:white;

}
h1 {
    font-size: 36px;
    line-height: 40px;
}
.d{
  margin:5px 5px 0px 38%;
}
    </style>
    </head>
    <body>
    <div class="header">
    <a href="task.jsp">BACK</a>
    </div>
    <div class="s">
    <div class="d">
<h1>CURRENT STATUS OF THE TASK <h1>
</div>
</div>
    <%

    String mail=request.getParameter("mail");
   
    try{
      Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycontact","root","");
PreparedStatement ps=conn.prepareStatement("select * from task where mail='"+mail+"';");
ResultSet result=ps.executeQuery();%>
<div class="div1">
        <table class="table table-hover">
<tr>
<th>mail</th>
<th>task</th>
<th>due_date</th>
<th>status</th>
</tr>
<%
while(result.next())
{%>
  <tr>
  <td><%=result.getString(1)%></td>
  <td><%=result.getString(2)%></td>
  <td><%=result.getString(3)%></td>
  <td><%=result.getString(4)%></td>
  </tr>
<%}%>
</table>
</div>
   <% }
    catch(Exception e)
    {
      out.println(e);
    }
    %>
    </body>
    </html>