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
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<!-- Listing votations -->
<div align="center">

	<security:authorize access="hasRole('ADMIN')">
		</br>
		</br>
		</br>
		<display:table name="votations" id="row"
			requestURI="admin/votationList.do">

			<spring:message code="votation.name" var="name" />
			<display:column property="name" title="${name}" sortable="true">
			</display:column>

			<spring:message code="votation.votes" var="votes" />
			<display:column title="${votes}">

				<a href="admin/voteList.do?votationId=${row.id}"> <spring:message
						code="votation.votes" />
				</a>

			</display:column>

		</display:table>
	</security:authorize>

</div>


