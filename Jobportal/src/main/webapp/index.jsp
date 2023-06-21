<%@page import = "com.DB.DBConnect" %>

<%@page import = "java.sql.Connection" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<%@include file="allcomponent/all_css.jsp"%>

<style type="text/css">

.back-img
{
  background: url("allcomponent/img/pic1.jpg");
  width: 100%;
  height: 80vh;
  background-repeat: no-repeat;
  background-size: cover;
}

</style>

</head>

<body>

   <%@include file="allcomponent/navbar.jsp"%>
   
   <div class="container-fluid back-img">
   <div class="text-center">
   <h1 class="text-black p-4">
     <i class="fa fa-briefcase" aria-hidden="true"></i>Online Job Portal 
   </h1>
   
  </div>
   
 </div>
 
 <%@include file="allcomponent/footer.jsp"%>
     
</body>

</html>



