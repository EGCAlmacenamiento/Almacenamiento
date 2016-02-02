<?

try{

	header("Content-Type:application/json");

	$votation = intval($_GET["votation_id"]);
	include ('ocultos/config.inc');

	$conn = new mysqli($servername, $username, $password, $dbname);

	if ($votation == 0 || $conn->connect_error) {
		throw new Exception;
	} 

	// Desencriptado con AES_ENCRYPT
	$sql = "SELECT CAST(AES_DECRYPT(vote, '".$key_AES."') AS CHAR(50)) AS vote FROM Votes WHERE votation_id = '".$votation."'";
	$result = $conn->query($sql);

	$votes = array();
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$votes[] = $row["vote"];
		}
	}

	//print_r( array_values($votes));
	echo json_encode($votes);

	$conn->close();
}catch(Exception $e){
	echo "error -> " + $e ;
}
die();

?>

