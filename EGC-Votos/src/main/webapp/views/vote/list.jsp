<%--
 * list.jsp
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

<!-- Listing grid -->

<display:table name="votes" id="row" 
    requestURI="vote/admin/list.do" 
    pagesize="5" class="displaytag">
	
	<display:column>
		
		<jstl:out value="${row.encriptedVote}" />, <fmt:formatDate value="${row.moment}" pattern="dd/MM/yy HH:mm" /> <br /> 
						
		<a href="vote/admin/edit.do?voteId=${row.id}">
			<spring:message	code="vote.edit" />
		</a>		
	</display:column>

</display:table>

<!-- Action links -->

<div>
	<a href="vote/admin/create.do"> 
		<spring:message code="vote.create" />
	</a>
</div>
