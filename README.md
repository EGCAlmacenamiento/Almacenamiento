Almacenamiento de votos

Definición

Subsistema dedicado al almacenamiento de las votaciones y los votos cifrados en AGORA@US.

Miembros

Manuel Juan Revilla Lobo: Coordinador
Joaquín Vázquez Galbarro
Francisco Valle Pinar
Andrés López Albín

Subsistemas Relacionados

*Cabina de votación https://github.com/AgoraUS1516/G07
*Recuento de votos https://github.com/AgoraUS1516/G01

Funcionamiento de la API

Inserción de Votos:

*Descripcíon: Método que realizando un POST, inserta votos en una votación. Si la votación no existiese, la crearía primero, si no, inserta.
*URL: https://egcphp-alm1516.rhcloud.com/API/vote.php
*Variables a rellenar: votationName, vote, zipcode

Devolución de Votos:

*Descripcíon: Método que a partir de un ID de votación devuelve los votos
*URL: https://egcphp-alm1516.rhcloud.com/API/get_votes.php?votation_id=X (Donde X sera el ID de la votationName que hayamos introducido anteriormente)
*Ejemplo de resultado: ["SI","SI","NO","SI"] (Estos votos realmente estarán encriptados)

Herramientas utilizadas

*GitHub
*Spring
*Java
*PHP
*HTML/CSS
*MySQL