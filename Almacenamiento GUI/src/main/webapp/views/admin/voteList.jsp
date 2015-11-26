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

<!-- Listing votes -->

<security:authorize access="hasRole('ADMIN')">
<display:table name="votes" id="row" 
    requestURI="admin/voteList.do" >
	
		
	<spring:message	code="vote.title"  var="title"/>
	<display:column property="vote" title="${title}" sortable="true"> </display:column>
	
	<spring:message	code="vote.location"  var="location"/>
	<display:column property="location" title="${location}" sortable="true"> </display:column>
	
	<spring:message	code="vote.moment"  var="moment"/>
	<display:column property="moment" title="${moment}" sortable="true"> </display:column>
					

</display:table>
</security:authorize>

<!-- Action links -->


