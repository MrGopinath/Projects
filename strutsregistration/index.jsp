<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.header {
  overflow: auto;
  background-color:  rgb(106, 90, 205);
}

.header h1 {
  float: none;
  color: white;
  padding:8px;
  text-decoration:none; 
  text-align:center;
}



.btn{
background-color: rgb(106, 90, 205);
color:white;
padding:5%;
border:orange;
border-radius: 15px;
font-size: 80%;
margin:5%;
text-align: center;
display: inline-block;
width:100%;
}
.btn:hover{
background-color:orange;
}
.div1{
border-radius:13px;
margin:12%;
background-color: white;
padding:2%;
box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;</style>

<title>HOME</title>
</head>
<body>
<div class="header">
<h1>REGISTRATION</h1>
</div>
<div class="div1">

<center>
<h1 style="color:rgb(106, 90, 205);">REGISTRATION---FORM</h1>
<s:form action="do" method="post">
<s:textfield name="name" label="NAME"/>
<s:textfield name="age" label="AGE"/>
<s:textfield name="degree" label="DEGREE"/>
<s:textfield name="phone" type="text" label="PHONE NO"/>
<s:radio label="GENDER" name="gender" list="#{'male':'MALE','female':'FEMALE','others':'OTHERS'}" />
<s:submit value="REGISTER" cssClass="btn"/><br>
</s:form>

</center>
</div>

</body>
</html>