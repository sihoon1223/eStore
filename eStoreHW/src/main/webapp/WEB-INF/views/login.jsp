<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 
	#csrf 공격# - 로그인 세션으로 인한 문제
	
	1. 예를 들어 은행에 사용자가 로그인을 했다. 로그인 된 세션이 만들어짐.
	2. 로그아웃하지 않은 상태에서 특정 사이트에 방문했다고 하자.
	3. 근데 이 사이트가 문제가 있는 사이트. 아무튼 이 페이지가 사용자에게 넘어오면 
	4. 브라우저는 이 페이지를 가져와서 parsing 후 rendering 하는데, 이미지가 있다고 하면 이미지를 가져오려고 할 것이다.
	5. 그런데 이러한 것을 이용해서 은행 잔고 자동이체를 하게끔 한다면 ???   ----> csrf 공격이 일어난다.
	
	따라서 이러한 csrf (Cross-site request forgery) 를 막기위해 token을 사용한다.	
	ex) <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	
--%>


<div class="container-wrapper">
	<div class="container">
		<h2>Login with user name and password</h2>
		
		<c:if test="${not empty errorMsg}">
			<div style="color:#ff0000"><h3>${errorMsg}</h3>
			</div>
		</c:if>
		
		<c:if test="${not empty logoutMsg}">
			<div style="color:#0000ff"><h3>${logoutMsg}</h3>
			</div>
		</c:if>
		<form action="<c:url value="/login"/>" method ="post">

			<div class="form-group">
				<label for="username">User name:</label> 
				<input type="text" style="width:50%" class="form-control" id="username" placeholder="Enter username" name="username">
			</div>
			
			<div class="form-group">
				<label for="pwd">Password:</label> 
				<input type="password" style="width:50%" class="form-control" id="pwd" placeholder="Enter password" name="password">
			</div>
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			
			<button type="submit" class="btn btn-primary">Submit</button>	
			
		</form>
	</div>
</div>