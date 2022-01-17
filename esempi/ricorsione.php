<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equi
		$valore = 4;

		$valore = fattoriale($valore);

		echo $valore; 
	?>v="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title> 
</head> 
<body> 
	<?php 
	?>
</body> 
</html>

<?php 
	function fattoriale($valore){
		if ($valore == 1){
			return $valore;
		} else {
			return $valore * fattoriale($valore -1);
		}
	}
?>