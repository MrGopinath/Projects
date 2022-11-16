<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<body>

<input type="date" id="d1"><br><br>
<input type="date" id="d2"><br><br>
<button onclick="fun()">submit</button>
<p id="output"></p>
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