<h1>Almacenamiento de votos</h1>

<h1>Definición</h1>

Subsistema dedicado al almacenamiento de las votaciones y los votos cifrados en AGORA@US.
Enlace a la pagina de información del grupo: http://egcphp-alm1516.rhcloud.com

<h1>Miembros</h1>

<ul>
	<li>Manuel Juan Revilla Lobo: Coordinador</li>
	<li>Joaquín Vázquez Galbarro</li>
	<li>Francisco Valle Pinar</li>
	<li>Andrés López Albín</li>
</ul>

<h1>Subsistemas Relacionados</h1>

<ul>
	<li>Cabina de votación https://github.com/AgoraUS1516/G07</li>
	<li>Recuento de votos https://github.com/AgoraUS1516/G01</li>
</ul>

<h1>Funcionamiento de la API</h1>

<b>Inserción de Votos:</b>

<ul>
	<li>Descripcíon: Método que realizando un POST, inserta votos en una votación. Si la votación no existiese, la crearía primero, si no, inserta.</li>
	<li>URL: https://egcphp-alm1516.rhcloud.com/API/vote.php</li>
	<li>Variables a rellenar: votationName, vote, zipcode</li>
</ul>

<b>Devolución de Votos:</b>

<ul>
	<li>Descripcíon: Método que a partir de un ID de votación devuelve los votos</li>
	<li>URL: https://egcphp-alm1516.rhcloud.com/API/get_votes.php?votation_id=X (Donde X sera el ID de la votationName que hayamos introducido anteriormente)</li>
	<li>Ejemplo de resultado: ["SI","SI","NO","SI"] (Estos votos realmente estarán encriptados)</li>
</ul>

<h1>Herramientas utilizadas</h1>

<ul>
	<li>GitHub</li>
	<li>Spring</li>
	<li>Java</li>
	<li>PHP</li>
	<li>HTML/CSS</li>
	<li>MySQL</li>
</ul>
