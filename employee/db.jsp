<%@ page language="java" import="java.sql.*"     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRATION</title>
<style>
body{
 background-image: url('contact3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
    margin:0;
  
}
.div1{
  padding:3%;
   border: 3px solid black;
   margin: 15% 30% 0% 30%;
     background-color:black;
     color:white;
			font-weight:200;        
			opacity:0.8;   
      border-radius:8px;
       text-align: center;


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
<%-- <div class="header">
    <a href="loginregister.jsp">BACK</a>
</div>
<div class="div1"> --%>
   <%
  String name=request.getParameter("nusername");
   String dob=request.getParameter("ndob");
   String phone=request.getParameter("nphone");
   String city=request.getParameter("ncity");
   String mail=request.getParameter("nmail");
   String pass=request.getParameter("npassword");
 String cpass=request.getParameter("ncpassword");
 try{
 if(pass.equals(cpass))
 {
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycontact","root","");
    	PreparedStatement ps=conn.prepareStatement("insert into register values(?,?,?,?,?,?,?);");
        ps.setString(1,name);
        ps.setString(2,dob);
        ps.setString(3,phone);
        ps.setString(4,city);
        ps.setString(5,mail);
        ps.setString(6,pass);
        ps.setString(7,cpass);
       int x= ps.executeUpdate();

         if(x>0)
       {
        out.println("REGISTERED SUCCESSFULL");
       }
       else{
        out.println("CREDIENTIALS FAILED");
       }
   }
 else
       {
        %><script>window.alert("MISMATCH PASSWORD");</script><%
/*        int i=0;
        out.println("MISMATCH PASSWORD");
        if(i==0)
       response.sendRedirect("register.jsp");*/

       }
 }
 catch(Exception e)
 {
    out.println(e);
 }

   %> 
   <%-- </div> --%>
</body>
</html>