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

$sql = "SELECT vote FROM Votes WHERE votation_id = '".$votation."'";
$result = $conn->query($sql);

$row = $result->fetch_assoc();
echo $row;





$conn->close();
}catch(Exception $e){echo "error -> " + $e ;}
die();

?>
