<?

try{

header("Content-Type:application/json");

$servername = "127.5.206.130";
$username = "adminu53jgvt";
$password = "liLgGmnyn5c1";
$dbname = "egcphp";
$votation = intval($_GET["votation_id"]);

$conn = new mysqli($servername, $username, $password, $dbname);

if ($votation == 0 || $conn->connect_error) {
    throw new Exception;
} 

$sql = "SELECT vote FROM Votes WHERE votation_id = '".$votationName."'";
$result = $conn->query($sql);

$votes = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $votes[] = $row["vote"];
    }
}

echo json_encode(array("votes"=>$votes, "msg" => 1));
$conn->close();
}catch(Exception $e){echo json_encode(array("msg"=>0));}
die();

?>
