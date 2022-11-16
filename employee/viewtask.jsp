<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
    <head>
    <title>YOUR TASK
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
    /* table{
    background-color:black;
    color:white;
    font-size:23px;
    border-radius:20px;

} */

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
            margin: 2% 15% 0% 20%;
            padding: 5% 5% 5% 5%;
			font-weight:bold;
                color:white;
                background-color: black;
            opacity:0.9;
            border-radius: 25px;
              text-align: center;
            box-shadow: 3px 5px 35px rgb(7, 174, 181);


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
background-color:rgb(119, 12, 181);
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
    <div class="header">
        <%String mail=request.getParameter("mail");%>
    <a href="addemp.jsp?mail=<%= mail%>">BACK</a>
    </div>
    <div class="s">
    <div class="d">
    <h1>
    YOUR TASK!</h1>
    </div>
    </div>
    <%
    try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycontact","root","");
PreparedStatement ps=conn.prepareStatement("select * from task where mail='"+mail+"';");
    ResultSet result=ps.executeQuery();
        %>

        <table class="table table-hover">
        <tr>
                 <th>MAIL</th>
                <th>TASK</th>
                <th>DUE-DATE</th>
                <th>PROGRESS</th>
                <th>ASSIGNED-DATE</th>
                <th>DAYS-LEFT</th>
                <th>STATUS</th>



        </tr>
          <%while(result.next())
          {

          %>
          <tr>
           <td > <%= result.getString(1) %></td>
               <td> <%= result.getString(2) %></td>
               <td><input type="date" value="<%= result.getString(3) %>" name="d2"></td>
               <td><%= result.getString(4)%></td>
               <form action="days.jsp?a=<%= result.getString(6)%>&b=<%=result.getString(3)%>&mail=<%=result.getString(1)%>" method="post">
               <td><input type="date" value="<%= result.getString(6)%>" name="d1"></td>
               <td><button type="submit">CALCULATE</button></td>
               </form> 
               <td><a href="etask.jsp?task=<%=result.getString(2)%>&mail=<%=result.getString(1)%>">FINISHED</a></td>
          </tr>
    <%
    }

    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>

    </body>
    </html>