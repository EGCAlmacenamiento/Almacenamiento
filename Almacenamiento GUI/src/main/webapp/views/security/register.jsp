 <%--
 * login.jsp
 *
 * Copyright (C) 2014 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<%-- Recibe:
		showError: boolean
		pwError: boolean (si las contraseñas no coinciden)
		usrError: boolean (si el usuario está registrado)
--%>

<form:form method="post" modelAttribute="credentialsRegister">

	<form:label path="username">
		<spring:message code="security.username" />
	</form:label>
	<form:input path="username" />	
	<form:errors class="error" path="username" />
	<br />

	<form:label path="password">
		<spring:message code="security.password" />
	</form:label>
	<form:password path="password" />	
	<form:errors class="error" path="password" />
	<br />
	
	<form:label path="repeatedPassword">
	<spring:message code="security.repeatpassword" />
	</form:label>
	<form:password path="repeatedPassword" />	
	<form:errors class="error" path="repeatedPassword" />
	<br />
	
	
	<jstl:if test="${showError == true}">
		<div class="error">
			<jstl:if test="${pwError == true}">
				<spring:message code="security.register.passwordsDontMatch" /><br/>
			</jstl:if>
			
			<jstl:if test="${usrError == true}">
				<spring:message code="security.register.alreadyRegisteredName" /><br/>
			</jstl:if>
		</div>
	</jstl:if>
	
	<input type="submit" value="<spring:message code="security.register" />" />
	
</form:form>