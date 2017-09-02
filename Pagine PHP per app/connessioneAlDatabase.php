<?php

$servername     = "localhost";
$username       = "lk2bpj4t_today";
$password       = "o4)6u#.8f!u4";
$dbname         = "lk2bpj4t_2017" ;

/////////////////////////////////////// INIZIO CONNESSIONE AL DB ///////////////////////////////////////
// questa parte di connessione dovrebbe essere fatta in un file a parte chiamato ad esempio
// db.php e chiamato in ogni pagina con il require "db.php" cosi ho accesso all'oggetto $conn su cui
// ho la connessione al database



// mi connetto al database
$conn = new mysqli($servername, $username, $password, $dbname) or die ("NON RIESCO A CONNETTERMI AL DATABASE");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


?>
