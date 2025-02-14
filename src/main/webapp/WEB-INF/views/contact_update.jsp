<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./fragments/head.jsp"%>
</head>
<body style="background-color: #E9ECEB;">
<%@include file="./fragments/menu.jsp"%>
<div class="container m-2">
	<div class="container-sm">
		<div class="row" style="background-color: #FCFCFC;">
			<div class="col-md-6 offset-md-3">
				<h4 class="text-center mb-3 mt-3 text-warning">Update Contact</h4>
				<form action="${pageContext.request.contextPath}/change-contact" method="post">
				    <div>
                        <input type="hidden" value="${contact.id}" name="id" class="form-control">
                    </div>
					<div>
						<label for="firstName"><span style="font-size:12px;">First name</span></label>
						<input type="text"	class="form-control" id="firstName" name="firstName"
							placeholder="Contact first name..." value="${contact.firstName}">
					</div>
					<div>
                        <label for="lastName"><span style="font-size:12px;">Last name</span></label>
                        <input type="text"	class="form-control" id="lastName" name="lastName"
                            placeholder="Contact last name..." value="${contact.lastName}">
                    </div>
					<div>
						<label for="phone"><span style="font-size:12px;">Contact phone</span></label>
						<textarea class="form-control" name="phone" id="phone"
							rows="3" placeholder="Contact phone number..." >${contact.phone}</textarea>
					</div>

					<div class="container text-center mb-4"><br>
						<a href="${pageContext.request.contextPath}/contacts" class="btn btn-outline-primary btn-sm">Back</a>
						&nbsp;&nbsp;
						<button type="submit" class="btn btn-primary btn-sm">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="./fragments/js_inc.jsp"%>
</body>
</html>