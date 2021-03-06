<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper">
	<div class="container">
		<h2>Product Detail</h2>
		<p>Here is the detail information of the product!</p>

		<div class="row">
			<div class="col-md-6">
				<c:set var="imageFilename" value="/resources/images/${product.id}.jpg" />
				<img src="<c:url value="${imageFilename}" />" alt="image" style="width: 80%" />
				<br><br>
				<div class="col-md-6">
					<h3><b>${product.name}</b></h3>
					<p>${product.description}</p>
					<p><b>Manufacturer :</b> ${product.manufacturer}</p>
					<p><b>Category : </b> ${product.category}</p>
					<p>${product.price} 원</p>
				</div>	
			</div>		
		</div>
	</div>
</div>