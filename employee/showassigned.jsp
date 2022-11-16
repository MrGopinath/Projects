<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
    <head>
    <title>
    SHOW
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
    </head>
        <style>
    body { 	
  background-image: url('.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  margin:0;

}
/* table{
    background-color:black;
    color:white;
    
} */
        .div1{
            border: 3px solid black;
            margin: 5% 23% 0% 29%;
            background-color:black;
        	   color:white;
			font-weight:200;        
			opacity:0.9;   
          border-radius:8px;
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
background-color:rgb(119, 12, 181);
}
h1 {
    font-size: 36px;
    line-height: 40px;
    color:rgb(181, 12, 12);
}
.d{
  margin:5px 5px 0px 43%;
}
    </style>
    <body>
        <div class="header">
    <a href="task.jsp">BACK</a>
    </div>
    <div class="s">
    <div class="d">
    <h1>Show-Assigned-Task</h1>
    </div>
    </div>
    
    <%

     try{
    Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycontact","root","");
PreparedStatement ps=conn.prepareStatement("select * from task;");
    ResultSet result=ps.executeQuery();
  %>
        <table class="table table-hover">
        <tr>
                 <th>Mail</th>
                <th>TASK-ASSIGNED</th>
                <th>DUE-DATE</th>
                <th>VIEW</th>
 
        </tr>
          <%while(result.next()){%>
          <tr>
           <td > <%= result.getString(1) %></td>
               <td> <%= result.getString(2) %></td>
               <td> <%= result.getString(3) %></td>
                <td><a href="ctask.jsp?task=<%=result.getString(2)%>">VIEW</a></td>
          </tr>
    <%
    }
    %>
        </table><%
    } 
    catch(Exception e)
    {
        out.println(e);
    }
    %>
    </body>
    </html>