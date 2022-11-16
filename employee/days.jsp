<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DAYS-LEFT</title>
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
h1 {
    font-size: 36px;
    line-height: 40px;
}

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
            margin: 1% 35% 0% 30%;
            padding: 5% 5% 5% 5%;
			font-weight:bold;
                color:white;
                background-color: black;
            opacity:10;
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
  padding: 15px 75px;
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
.d{
  margin:5px 5px 0px 45%;
}
.gradient-custom {
/* fallback for old browsers */
background: #6a11cb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
}

    </style>
    <script
type="text/javascript"
src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"
></script>
</head>
<body>

    <div class="header">
        <%String mail=request.getParameter("mail");%>
    <a href="viewtask.jsp?mail=<%= mail%>">BACK</a>
    </div>
<div class="d">
<h1>TIME-LEFT</h1>
</div >
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

    <%String d1=request.getParameter("a"); %>
    <%String d2=request.getParameter("b"); %>
              <div class="form-outline form-white mb-4">
              <h2 style="color:green">ASSIGNED_DATE:</h2>
                <input type="date" value="<%=d1%>" id="d1" class="form-control form-control-lg" />
                <label class="form-label" for="typeEmailX"></label>
              </div>

              <div class="form-outline form-white mb-4">
              <h2 style="color:orange">DUE_DATE:</h2>
                <input type="date" id="d2"  value="<%=d2%>" class="form-control form-control-lg" />
                <label class="form-label" for="typePasswordX"></label>
              </div>


              <button onclick="fun()" class="btn btn-outline-light btn-lg px-5" >CALCULATE</button>
<br><br><br><h1 style="color:red">DAYS-LEFT:</h1><h1 id="output"></h1>


            </div>



          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script>
function fun()
{

    var d1=document.getElementById("d1").value;
    var d2=document.getElementById("d2").value;
    const dateone=new Date(d1);
    const datetwo=new Date(d2);
    const time=Math.abs(datetwo-dateone);
    const days=Math.ceil(time/(1000*60*60*24));
    document.getElementById("output").innerHTML=days;
}
</script>


</body>
</html>