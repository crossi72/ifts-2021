<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
	<?php
	$valore = 1;
	$valore = funzione_a($valore);
	$valore = funzione_b($valore);
	echo $valore;
	?>
</body>
</html>

<?php

function funzione_a($dato){
	$dato += 1;

	return $dato;
}

function funzione_b($dato){
	$dato *= 2;

	return $dato;
}

?>