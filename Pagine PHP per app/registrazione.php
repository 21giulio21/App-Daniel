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

$nome = $_GET['nome'];
$cognome = $_GET['cognome'];
$email = $_GET['email'];
$password = $_GET['password'];
$annoDiNascita = $_GET['annoDiNascita'];

// preparo la query senza inserire qui i valori ma inserisco dei '?' tanti quanti saranno i parametri
// da passare alla query
$stmt = $conn->prepare("INSERT INTO clienti_clienti  VALUES(NULL,?,?,?,?,?,'','','','','','','','','','','','','','','','','','') ");
// inserisco nella query 3 stringhe identificate da 'sss'
$stmt->bind_param("sssss", $nome, $cognome, $email, $password, $annoDiNascita);


// eseguo la query
$stmt->execute();

 $stmt->store_result();

 //printf("Number of rows: %d.\n", $stmt->num_rows);


$stmt->close();
$conn->close();

?>
