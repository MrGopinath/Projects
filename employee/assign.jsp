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
    color:red;
    margin:1% 33% 0% 42%;
    padding:1% 1% 1% 4%;
    font-family: 'Aboreto', cursive;
font-family: 'Dosis', sans-serif;
font-family: 'Roboto', sans-serif;
}
</style>
    </head>
    <body style="background:color:black;">
<script
type="text/javascript"
src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"
></script>
<div class="header">
    <a href="task.jsp">BACK</a>
    </div>
<%
String mail=request.getParameter("mail");
%>
   <!-- Section: Design Block -->
<section class="text-center text-lg-start">
    <style>
      .cascading-right {
        margin-right: -50px;
      }
  
      @media (max-width: 991.98px) {
        .cascading-right {
          margin-right: 0;
        }
      }
    </style>
  
    <!-- Jumbotron -->
    <div class="container py-4">
      <div class="row g-0 align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <div class="card cascading-right" style="
              background: hsla(0, 0%, 100%, 0.55);
              backdrop-filter: blur(30px);
              ">
            <div class="card-body p-5 shadow-5 text-center">
              <h2 class="fw-bold mb-5">Assign Task</h2>
              <form action="assigndb.jsp?mail=<%= mail%>" method="post">
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <div class="form-label">E-Mail</div>
                      <input type="email"  class="form-label"  name="email" value=<%= mail%>  />

                    </div>
                  </div>

<%--   
                    <div class="form-outline">
                      <div class="form-label">Todays-Date</div>
                    <input type="date" name="tdate" id="form3Example2" class="form-label" /> --%>

 
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <div class="form-label" >Due-Date</div>
                    <input type="date" name="ddate" id="form3Example2" class="form-label" />

                    </div>
                  </div>
                </div>
  
                <div class="form-outline mb-4">
                                  <div class="form-label" >Description Of Assignment</div><br>

                    <textarea name="big" rows="4" cols="50"></textarea>
                </div>

  
                <button type="submit" class="btn btn-primary btn-block mb-4">
                  Assign-Task
                </button>
  
                
              </form>
            </div>
          </div>
        </div>
  
        <div class="col-lg-6 mb-5 mb-lg-0">
          <img src="assipng.png" class="w-100 rounded-4 shadow-4"
            alt="" />
        </div>
      </div>
    </div>
    <!-- Jumbotron -->
  </section>
    </body>
    </html>