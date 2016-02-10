<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

<div class="content-wrap">
	<!-- main -->
	<section id="main">
		<div class="intro-box">
			<h1>
				<spring:message code="index.welcome" />
			</h1>
			<p class="intro">
				<spring:message code="index.intro1" />
			</p>
			<p class="intro">
				<spring:message code="index.intro2" />
			</p>
		</div>

		<div class="row no-bottom-margin">
			<section class="col">
				<center>
					<h2>Wiki</h2>
					<a
						href="http://1984.lsi.us.es/wiki-egc/index.php/Almacenamiento_de_votos">
						<img src="images/logos/wiki.png" width="180" height="180" />
					</a>
				</center>
			</section>
			<section class="col mid">
				<center>
					<h2>
						<spring:message code="index.repository" />
					</h2>
					<a href="http://github.com/EGCAlmacenamiento/Almacenamiento"> <img
						src="images/logos/github.png" width="180" height="180" />
					</a>
				</center>
			</section>
			<section class="col">
				<center>
					<h2>Openshift by Red Hat</h2>
					<a href="http://www.openshift.com/"> <img
						src="images/logos/OpenShift.png" width="180" height="180" />
					</a>
				</center>
			</section>
		</div>
		<a class="back-to-top" href="#main">Back to Top</a>
	</section>
	<!-- services -->
	<section id="API">
		<h1>API</h1>
		<div class="row no-bottom-margin" align="center">
			<h2>GET_VOTES</h2>
			<table>
				<tr>
					<td><spring:message code="index.description" /></td>
					<td><spring:message code="index.desc" /></td>
				</tr>
				<tr>
					<td>URL</td>
					<td>https://egcphp-alm1516.rhcloud.com/API/get_votes.php?votation_id=X</td>
				</tr>
				<tr>
					<td><spring:message code="index.example" /></td>
					<td>["SI","SI","NO","SI"]</td>
				</tr>
				<tr>
					<td></td>
					<td><spring:message code="index.aclaracion" /></td>
				</tr>
			</table>
		</div>
		<div class="row" align="center">
			<h2>VOTES</h2>
			<table>
				<tr>
					<td><spring:message code="index.description" /></td>
					<td><spring:message code="index.votes.desc" /></td>
				</tr>
				<tr>
					<td>URL</td>
					<td>https://egcphp-alm1516.rhcloud.com/API/votes.php</td>
				</tr>
				<tr>
					<td>Variables</td>
					<td>votationName <br> vote <br> zipcode
					</td>
				</tr>
			</table>
		</div>
		<a class="back-to-top" href="#main">Back to Top</a>
	</section>
	<!-- about us -->
	<section id="about-us" class="clearfix">
		<h1>
			<spring:message code="index.aobutus" />
		</h1>
		<div class="primary">
			<p class="intro">
				<spring:message code="index.aboutus.intro" />

			</p>
			<h2>Agora Voting</h2>
			<p>
				<a href="https://agoravoting.com/">Agora Voting</a>
				<spring:message code="index.aboutus.agora" />
			</p>

			<h2>
				<spring:message code="index.aboutus.team" />
			</h2>
			<ul class="the-team">
				<li class="odd">
					<div class="thumbnail">
						<a href="#"><img alt="" src="images/fotos/revilla.jpg"
							width="83" height="78"></a>
					</div>
					<p class="mname">
						<a
							href="https://www.linkedin.com/in/manuel-revilla-64064169?authType=NAME_SEARCH&authToken=t5Uc&locale=es_ES&trk=tyah&trkInfo=clickedVertical%3Amynetwork%2CclickedEntityId%3A243443280%2CauthType%3ANAME_SEARCH%2Cidx%3A1-1-1%2CtarId%3A1455099743489%2Ctas%3Arevilla%20">Manuel
							Juan Revilla Lobo</a>
					</p>
					<p>Coordinador</p>
				</li>
				<li>
					<div class="thumbnail">
						<a href="#"><img alt="" src="images/fotos/dres.jpg" width="83"
							height="78"></a>
					</div>
					<p class="mname">
						<a
							href="https://es.linkedin.com/in/andr%C3%A9s-l%C3%B3pez-alb%C3%ADn-06404bb3">Andrés
							López Albín</a>
					</p>
					<p>Ingeniero del software</p>
				</li>
				<li class="odd">
					<div class="thumbnail">
						<a href="#"><img alt="" src="images/fotos/joaquin.png"
							width="83" height="78"></a>
					</div>
					<p class="mname">
						<a href="#">Joaquín Vázquez Galbarro</a>
					</p>
					<p>Ingeniero del software</p>
				</li>
				<li>
					<div class="thumbnail">
						<a href="#"><img alt="" src="images/fotos/paco.jpg" width="83"
							height="78"></a>
					</div>
					<p class="mname">
						<a
							href="https://es.linkedin.com/in/francisco-valle-pinar-54784584">Francisco
							Valle Pinar</a>
					</p>
					<p>Ingeniero del software</p>
				</li>
			</ul>
		</div>
		<aside>
			<h2><spring:message code="index.more" /></h2>
			<p><spring:message code="index.moreinfo" /></p>
			<a href="https://opera.eii.us.es/egc/public/default/grupo/ver/id/29"
				class="download-btn">Ir a Opera</a>
			<h2>Enlaces de interes</h2>
			<ul class="link-list">
				<li><a
					href="http://1984.lsi.us.es/wiki-egc/index.php/P%C3%A1gina_Principal">Wiki
						de EGC</a></li>
				<li><a
					href="https://www.lsi.us.es/docencia/pagina_asignatura.php?id=111">Web
						de EGC</a></li>
				<li><a href="www.us.es">Universidad de Sevilla</a></li>
				<li><a href="http://informatica.us.es/">ETSII</a></li>
			</ul>
		</aside>
		<a class="back-to-top" href="#main">Back to Top</a>
	</section>
</div>

<!-- footer -->
<footer>
	<div class="footer-content">
		<ul class="footer-menu">
			<li><a href="#main">Inicio</a></li>
			<li><a href="#services">API</a></li>
			<li><a href="#about-us">Sobre nosotros</a></li>
			<!-- <li class="rss-feed"><a href="#">RSS Feed</a></li> -->
		</ul>
		<p class="footer-text"></p>
	</div>
</footer>

</body>

</html>
<div align="center">
	<display:table name="votations" id="row" requestURI="welcome/index.do">

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
</div>

