<?php

$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "myDB";

/////////////////////////////////////// INIZIO CONNESSIONE AL DB ///////////////////////////////////////
// questa parte di connessione dovrebbe essere fatta in un file a parte chiamato ad esempio
// db.php e chiamato in ogni pagina con il require "db.php" cosi ho accesso all'oggetto $conn su cui
// ho la connessione al database



// mi connetto al database
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}



/////////////////////////////////////// FINE CONNESSIONE AL DB ///////////////////////////////////////

/////////////////////////////////////// INIZIO PREPARAZIONE QUERY ///////////////////////////////////////

$da = $_GET['da'];
$quante = 20;


// preparo la query senza inserire qui i valori ma inserisco dei '?' tanti quanti saranno i parametri
// da passare alla query
$stmt = $conn->prepare("SELECT * FROM clienti_offerte  ");
// inserisco nella query 3 stringhe identificate da 'sss'
$stmt->bind_param("s", $da);


// eseguo la query
$stmt->execute();

 $stmt->store_result();

 printf("Number of rows: %d.\n", $stmt->num_rows);


$stmt->close();
$conn->close();

?>
