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

<form:form action="vote/admin/edit.do" modelAttribute="vote">

	<form:hidden path="id" />
	<form:hidden path="version" />

	
	<form:input path="encriptedVote" />
	<form:errors cssClass="error" path="encriptedVote" />
	<br />
	
	<form:label path="moment">
		<spring:message code="vote.moment" />:
	</form:label>
	<form:input path="moment" readonly="true" />
	<form:errors cssClass="error" path="moment" />
	<br />

	<input type="submit" name="save"
		value="<spring:message code="vote.save" />" />&nbsp; 
	<jstl:if test="${vote.id != 0}">
		<input type="submit" name="delete"
			value="<spring:message code="vote.delete" />"
			onclick="return confirm('<spring:message code="vote.confirm.delete" />')" />&nbsp;
	</jstl:if>
	<input type="button" name="cancel"
		value="<spring:message code="vote.cancel" />"
		onclick="javascript: relativeRedir('vote/admin/list.do');" />
	<br />

</form:form>
