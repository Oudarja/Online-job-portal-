<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.List"%>
<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>

<%@page import="com.dao.JobDAO"%>

<%@page import="java.sql.Connection"%>
<%@ page import="com.*, java.util.*"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcomponent/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">

	
   <c:if test="${empty userobj}">
   <c:redirect url="login.jsp"/>
   </c:if>
    

	<%@include file="allcomponent/navbar.jsp"%>


	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All jobs</h5>


				<c:if test="${not empty succMsg}">
                 <h4 class="text-center text-danger">${succMsg}</h4>
                 <c:remove var="succMsg"/>
                  </c:if>
                  

				<div class="card">

					<div class="card-body">

						<form class="form-inline" action="more_view.jsp" method="get">

							<div class="form-group col-md-5 mt-1">
								<h5>Location</h5>
							</div>

							<div class="form-group col-md-4 mt-1">
								<h5>Category</h5>
							</div>


							<div class="form-group col-md-5">
								<select name="loc" class="custom-select "
									id="inlineFormCustomSelectpref">

									<option selected value="lo">Choose..</option>
									<option value="Chittagong">Chittagong</option>
									<option value="khulna">khulna</option>
									<option value="Dhaka">Dhaka</option>
									<option value="Odisha">Odisha</option>
									<option value="Jarkhand">Jarkhand</option>
									<option value="Gujrat">Gujrat</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Delhi">Delhi</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Chennai">Chennai</option>
									<option value="Hydrabad">Hydrabad</option>
								</select>
							</div>


							<div class="form-group col-md-5">
								<select class="custom-select" id="inlineFormCustomSelectpref"
									name="cat">
									<option value="ca" selected>Choose...</option>
									<option value="IT">IT</option>
									<option value="Devloper">Devloper</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>
								
								</div>
								
								<button class="btn btn-success">Submit</button>
								</form>
							</div>
							</div>

							<%
							JobDAO dao = new JobDAO(DBConnect.getconn());
							List<Jobs> list = dao.getAlljobsJobsForUser();
							for (Jobs j : list)
							{
							%>
							<div class="card-mt-2">
								<div class="card-body">

									<div class="text-center text-primary">
										<i class="far fa -clipboard fa-2x"></i>
									</div>

									<h6><%=j.getTitle()%></h6>

									<%
									if(j.getDescription().length()>0 && j.getDescription().length()<120)
									{
									%>
									<p><%=j.getDescription()%></p>
									<%
									}
									else
									{
									 %>
									<p><%=j.getDescription().substring(0,120)%>...
									</p>
									<%
									}
                                    %>

									<br>
									<div class="form-row">

										<div class="form-group col-md-3">
											<input type="text" class="form-control form-control-sm"
												value="Location:<%=j.getLocation()%>" readonly>
										</div>

										<div class="form-group col-md-3">
											<input type="text" class="form-control form-control-sm"
												value="Category:<%=j.getCategory()%>" readonly>
										</div>
									</div>

									<h6>
										Publish Date:
										<%=j.getPdate().toString()
									%>
									</h6>

									<div class="text-center">
										<a href="one_view.jsp?id=<%=j.getId()%>"
											class="btn btn-sm bg-success text-white">View More</a>
									</div>
								</div>
							</div>
							
							<%
							}
							%>
					</div>
				</div>
			</div>
</body>
</html>

