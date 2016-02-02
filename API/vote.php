<?

try{

  //header("Content-Type:application/json");

  $votationName = strtoupper(htmlspecialchars($_POST['votationName']));
  $vote = strtoupper(htmlspecialchars($_POST["vote"]));
  $zipcode = htmlspecialchars($_POST["zipcode"]);
  include ('ocultos/config.inc');

  $conn = new mysqli($servername, $username, $password, $dbname);

  if ($conn->connect_error) {
    throw new Exception;
  }
  
  $sql = "SELECT votation_id FROM Votation WHERE name like '".$votationName."'";
  $result = $conn->query($sql);
  if ($result->num_rows == 0){
    $result1 = $conn->query("call InsertVotation('".$votationName."')");
  }
  
  $result = $conn->query("call InsertVote('".$votationName."', '".$vote."', '".$zipcode."', '".$key_AES."')");
  //echo json_encode(array("msg"=>"1"));?
  

  echo "voto insertado correctamente";  

  $conn->close();
}catch(Exception $e){
  //echo json_encode(array("msg"=>0));
  echo "error al insertar el voto";
}
die();

?>

