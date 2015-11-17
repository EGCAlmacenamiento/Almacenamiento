<%--
 * edit.jsp
 *
 * Copyright (C) 2014 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<form:form action="bulletin/customer/edit.do" modelAttribute="bulletin">

	<form:hidden path="id" />
	<form:hidden path="version" />

	<form:label path="title">
		<spring:message code="bulletin.title" />:
	</form:label>
	<form:input path="title" />
	<form:errors cssClass="error" path="title" />
	<br />
	
	<form:label path="author">
		<spring:message code="bulletin.author" />:
	</form:label>
	<form:input path="author" />
	<form:errors cssClass="error" path="author" />
	<br />
	
	<form:label path="moment">
		<spring:message code="bulletin.moment" />:
	</form:label>
	<form:input path="moment" readonly="true" />
	<form:errors cssClass="error" path="moment" />
	<br />

	<form:label path="text">
		<spring:message code="bulletin.text" />:
	</form:label>
	<form:textarea path="text" />
	<form:errors cssClass="error" path="text" />
	<br />

	<input type="submit" name="save"
		value="<spring:message code="bulletin.save" />" />&nbsp; 
	<jstl:if test="${bulletin.id != 0}">
		<input type="submit" name="delete"
			value="<spring:message code="bulletin.delete" />"
			onclick="return confirm('<spring:message code="bulletin.confirm.delete" />')" />&nbsp;
	</jstl:if>
	<input type="button" name="cancel"
		value="<spring:message code="bulletin.cancel" />"
		onclick="javascript: relativeRedir('bulletin/customer/list.do');" />
	<br />

</form:form>
