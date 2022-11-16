<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN</title>
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

    

        .div1{
            border: 5px solid black;
            margin: 1% 35% 0% 30%;
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
    text-align:center;
    margin:1% 15% 1% 9%;
    color:white;
}
.p{
  font-size:59px;
  margin:5% 0% 0% 45% ;
}
h1 {
    font-size: 36px;
    line-height: 40px;
}
.d{
  margin:5px 5px 0px 45%;
}
    </style>
</head>
<body>
<script
type="text/javascript"
src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"
></script>
    <div class="header">
        <a href="loginregister.jsp" style="color:white;">BACK</a></div>
        <div class="d"><h1>ADMIN</h1></div>
        <section class="vh-100" style="background-color: rgb(1, 2, 3);">
                <div class="container py-5 h-100">
                  <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                      <div class="card" style="border-radius: 1rem;">
                        <div class="row g-0">
                          <div class="col-md-6 col-lg-5 d-none d-md-block">
                            <img src="clientpng.png"
                              alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                          </div>
                          <div class="col-md-6 col-lg-7 d-flex align-items-center">
                            <div class="card-body p-4 p-lg-5 text-black">
              
                              <form>
              
        
              
                                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Login To Administrative Account</h5>
              
                                <div class="form-outline mb-4">
                                  <input type="email" name="ausername" class="form-control form-control-lg" />
                                  <label class="form-label" for="form2Example17">Email address</label>
                                </div>
              
                                <div class="form-outline mb-4">
                                  <input type="password" name="apassword" class="form-control form-control-lg" />
                                  <label class="form-label" for="form2Example27">Password</label>
                                </div>
              
                                <div class="pt-1 mb-4">
                                  <button class="btn btn-dark btn-lg btn-block" onclick="alog()">Login</button>
                                </div>
              
                
        
                                
                              </form>
              
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
              <script>
              function alog()
{
  </script>
  <%
   String user=request.getParameter("ausername");
   String pass=request.getParameter("apassword");

   try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","");
    	PreparedStatement ps=conn.prepareStatement("select * from admin where name='"+user+"';");
        ResultSet result=ps.executeQuery();
        if(result.next())
        {
            if(result.getString(2).equals(pass))
            {
              response.sendRedirect("task.jsp");                
              
            }
            else
            {
             %><script>window.alert("WRONG..PASSWORD");</script><%

            }           

        }
        }
   catch(Exception e)
   {
    System.out.println(e);
   }
   %>
   <script> 
}
</script>
</body>
</html>