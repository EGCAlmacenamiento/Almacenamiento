<?

try{

	//header("Content-Type:application/json");

	$votationName = htmlspecialchars($_POST['votationName']);
	$vote = htmlspecialchars($_POST["vote"]);
	$zipcode = htmlspecialchars($_POST["zipcode"]);
	include ('config.inc');

	$conn = new mysqli($servername, $username, $password, $dbname);

	if ($conn->connect_error) {
		throw new Exception;
	}
	
	$sql = "SELECT votation_id FROM Votation WHERE name like '".$votationName."'";
	$result = $conn->query($sql);
	if ($result->num_rows == 0){
		$result1 = $conn->query("call InsertVotation('".$votationName."')");
	}
	
	$result = $conn->query("call InsertVote('".$votationName."', '".$vote."', '".$zipcode."')");
	//echo json_encode(array("msg"=>"1"));ç
	

	echo "voto insertado correctamente";	

	$conn->close();
}catch(Exception $e){
	//echo json_encode(array("msg"=>0));
	echo "error al insertar el voto";
}
die();

?>

