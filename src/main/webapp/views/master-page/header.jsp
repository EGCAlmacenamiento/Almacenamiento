
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

<head>
<title>EGC - Almacenamiento 15/16 Gr.1</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<link rel="stylesheet" href="styles/style.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="styles/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="styles/jquery.fancybox-1.3.4.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/jquery-1.6.1.min.js"><\/script>')
</script>
<script src="scripts/jquery.smoothscroll.js"></script>
<script src="scripts/jquery.nivo.slider.pack.js"></script>
<script src="scripts/jquery.easing-1.3.pack.js"></script>
<script src="scripts/jquery.fancybox-1.3.4.pack.js"></script>
<script src="scripts/init.js"></script>
</head>

<body>
	<!-- header-wrap -->
	<div id="header-wrap">
		<header>
			<hgroup>
				<h1>EGC</h1>
				</br>
				<h3>
					<spring:message code="master.page.storage" />
				</h3>
			</hgroup>
			<nav>
				<ul>
					<li><a href="#main"><spring:message code="master.page.index" /></a></li>
					<security:authorize access="isAnonymous()">
						<li><a href="#API">API</a></li>
						<li><a href="#about-us"><spring:message code="master.page.us" /></a></li>

						<li><a href="security/login.do"><spring:message
									code="master.page.login" /></a></li>
					</security:authorize>

					<security:authorize access="hasRole('ADMIN')">
						<li><a href="admin/votationList.do"><spring:message
									code="master.page.admin.votation" /></a></li>
						<li><a href="j_spring_security_logout"><spring:message
									code="master.page.logout" /> </a></li>
					</security:authorize>

					<li><a href="?language=en"><img
							src="images/logos/Inglaterra.jpg" /></a> <a href="?language=es"><img
							src="images/logos/ESp.png" /></a></li>

				</ul>

			</nav>
		</header>
	</div>