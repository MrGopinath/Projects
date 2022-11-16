<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
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
font-size:90%;
border-radius: 22px;

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
            margin: 25% 30% 0% 30%;
            padding: 5% 5% 5% 5%;
			font-weight:bold;
                color:white;
				  border-radius: 25px;
				 background-color: black;;
            opacity:0.8;
            text-align:center;
          box-shadow: 3px 5px 35px rgb(0, 5, 5);

            
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
.f{
  color:red;
  font-family:Courier New;
  text-align:center;
  font-size:25px;

}
    </style>
    <title>
       ADD EMPLOYEE
    </title>
    <body >
    <%String mail=request.getParameter("mail");%>
        <div class="header">    <a href="addemp.jsp?mail=<%=mail%>">BACK</a>
</div>

      <!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"
></script>


<section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Add Client Details</p>

                <form class="mx-1 mx-md-4" action="index.jsp" method="post">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example1c" class="form-control" name="nname"/>
                      <label class="form-label" for="form3Example1c">Your Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="email" id="form3Example3c" class="form-control" name="nemail"/>
                      <label class="form-label" for="form3Example3c">Your Email</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example4c" class="form-control" name="nphone"/>
                      <label class="form-label" for="form3Example4c">Phone No</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <input type="date" id="form3Example4c" class="form-control" name="ndob"/>
                      <label class="form-label" for="form3Example4c"></label>
                    </div>
                  </div>
                                    <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example4c" class="form-control"name="ngender" />
                      <label class="form-label" for="form3Example4c">Gender</label>
                    </div>
                  </div>
                                    <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example4c" class="form-control"name="naddress" />
                      <label class="form-label" for="form3Example4c">Address</label>
                    </div>
                  </div>
                                    <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example4c" class="form-control"name="nmartial" />
                      <label class="form-label" for="form3Example4c">Martial-Status</label>
                    </div>
                  </div>
                                    <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example4c" class="form-control"name="npan" />
                      <label class="form-label" for="form3Example4c">PAN</label>
                    </div>
                  </div>
                                    <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example4c" class="form-control" name="ndepartment"/>
                      <label class="form-label" for="form3Example4c">Department</label>
                    </div>
                  </div>
                                    <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <input type="number" id="form3Example4c" class="form-control" name="nlpa"/>
                      <label class="form-label" for="form3Example4c">LPA</label>
                    </div>
                  </div>





                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <button type="submit" class="btn btn-primary btn-lg">Register</button>
                  </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>