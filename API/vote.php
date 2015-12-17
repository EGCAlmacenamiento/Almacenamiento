<?

try{

	header("Content-Type:application/json");

	$votationName = $_POST["votationName"]);
	$vote = $_POST["vote"];
	$codpos = $_POST["codpos"];
	$servername = "127.5.206.130";
	$username = "adminu53jgvt";
	$password = "liLgGmnyn5c1";
	$dbname = "egcphp";

	$conn = new mysqli($servername, $username, $password, $dbname);

	if ($votation_id == 0 || $conn->connect_error) {
		throw new Exception;
	}
	
	$sql = "SELECT votation_id FROM Votacion WHERE name like '".$votationName."'";
	$result = $conn->query($sql);
	if ($result = null){
		$result1 = $conn->exec("call InsertarVotacion ('".$votationName."')");
	}
	
	$result = $conn->exec("call InsertarVoto ('".$votationName."', '".$vote."', '".$latitud."', '".$longitud."')");
	echo json_encode(array("msg"=>"1"));
	$conn->close();
}catch(Exception $e){
	echo json_encode(array("msg"=>0));
}
die();

?>

