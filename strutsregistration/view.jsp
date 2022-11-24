<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DISPLAY</title>
<style>
.header {
  overflow: auto;
  background-color:  rgb(106, 90, 205);
}

.header a {
  float: left;
  color: white;
  padding:15px;
  text-decoration:none; 
}


.header a:hover {
  background-color: #ddd;
  color: black;
}
.div1{
text-align: center;

margin:10% 40% 30% 30%;
padding:2% 2% 2% 2%;
border-radius:12px;
box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;


}
.btn{
margin-left:45%;
background-color: green;
color:white;
border:orange;
border-radius: 8px;
font-size: 30px;
text-align: center;
width:100%;
padding:2px 4px 1px 5px;
}
.btn:hover{
background-color:red;
}
</style>
</head>
<body>
<script >
alert("***SUCCESS***");
</script>
<div class="header">
<a href="index.jsp">HOME</a>

</div>
<div class="div1">
<h1>REGISTRATION SUCCESSFULL</h1>

<s:form action="viewact">
<s:submit value="Click-To-Manage" cssClass="btn"/>
</s:form>
</div>
</body>
</html>