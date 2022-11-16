<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
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
<meta charset="ISO-8859-1">
<title>REGISTRATION</title>
<script src="https://kit.fontawesome.com/d9c3a6d706.js" crossorigin="anonymous"></script>

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

 

        .div1{
            border: 5px solid black;
            margin: 1% 36% 0% 30%;
            padding: 5% 5% 5% 5%;
			font-weight:bold;
                color:white;
                background-color: black;;
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
  color: white;
}
.s{
    text-align:center;
    margin:3% 10% 0% 5%;
    color:white;
}
.f{
  color:red;
  font-family:Courier New;
  text-align:center;
  font-size:27px;
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
<a href="loginregister.jsp">BACK</a>
</div >
<div class="d">
<h1>REGISTRATION</h1>

</div>
<section class="h-100 h-custom" style="background-color: black;">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-lg-8 col-xl-6">
              <div class="card rounded-3">
                <img src="regpng.png"
                  class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                  alt="Sample photo">
                <div class="card-body p-4 p-md-5">
                  <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Registration Info</h3>
      
                  <form class="px-md-2">
      
                    <div class="form-outline mb-4">
                      <input type="text" name="nusername" class="form-control" />
                      <label class="form-label" for="form3Example1q">Name</label>
                    </div>

                    <div class="form-outline mb-4">
                        <input type="number" name="nphone" class="form-control" />
                        <label class="form-label" for="form3Example1q">Phone No</label>
                      </div>

                      <div class="form-outline mb-4">
                        <input type="text" name="ncity" class="form-control" />
                        <label class="form-label" for="form3Example1q">City</label>
                      </div>

                      <div class="form-outline mb-4">
                        <input type="text" name="nmail" class="form-control" />
                        <label class="form-label" for="form3Example1q">Your Mail</label>
                      </div>

                      <div class="form-outline mb-4">
                        <input type="password" name="npassword" class="form-control" />
                        <label class="form-label" for="form3Example1q">Password</label>
                      </div>

                      <div class="form-outline mb-4">
                        <input type="password" name="ncpassword" class="form-control" />
                        <label class="form-label" for="form3Example1q">Confirm Password</label>
                      </div>

                      <div class="form-outline mb-4">
                        <label class="form-label" for="form3Example1q">:            :DOB</label>
                        <input type="date" name="ndob" class="form-control" />
                      </div>
                      </select>
                    </div>
                    <button onclick="reg()" class="btn btn-success btn-lg mb-1">Submit</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <script>
  function reg()
{
</script>
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
        %><script>window.alert("REGISTERED SUCCESSFULL");</script><%
       }
       else{
        %><script>window.alert("CREDIENTIALS FAILED");</script><%

       }
   }
 else
       {
        %><script>window.alert("MISMATCH PASSWORD");</script><%

       }
 }
 catch(Exception e)
 {
      out.println(e);
 }

   %> 
<script>
}
</script>
</body>
</html>