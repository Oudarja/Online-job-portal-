<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored="false" %>
 
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Add Job</title>
<%@include file="allcomponent/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <c:if test="${userobj.role ne 'admin'}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
    
	<%@include file="allcomponent/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						
						  <c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg" />
						  </c:if>
		
						<h5>Add jobs</h5>
					</div>
					
					<form action="add_job" method="post">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select " id="inlineFormCustomSelectpref">
									<option Selected>Choose..</option>
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
							<div class="form-group col md-4">
								<label> Category</label> <select class="custome-select "
									id="inlineFormCustomSelectpref" name="category">
									<option Selected>Choose..</option>
									<option value="IT">IT</option>
									<option value="Devloper">Devloper</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>
							</div>

							<div class="form-group col md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="Form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<button class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>

	</div>
	
</body>
</html>