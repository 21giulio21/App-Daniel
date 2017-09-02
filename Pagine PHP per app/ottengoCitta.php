<?php

require( "connessioneAlDatabase.php" );
$stmt = $conn->prepare("SELECT citta_id,citta_nome FROM clienti_citta ORDER BY citta_nome ") or die("errore nella prepare");



// eseguo la query
$result = $stmt->execute()or die("errore nella store_result");

$stmt->store_result() or die("errore nella execute");

$citta_id 	= "";
$citta_nome = "";
$stmt->bind_result($citta_id, $citta_nome)or die("errore nella bind_result");


while($stmt->fetch()){
	$array[] = json_encode(array('citta_id' => $citta_id, 'citta_nome' => $citta_nome));

  }

print(json_encode($array));

 $stmt->close() or die("errore nellla chiusura");


?>
