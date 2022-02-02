<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/style.css">
	<title>IFTS</title>
</head>
<body>
	<?php
		//stampo la barra dei pulsanti
		print_button_bar();

		//stampo il contenitore e i div al suo interno
		print_container(15);
	?>
</body>
<script src="js/script.js"></script>
</html>

<?php

/**
 * Stampa la barra dei pulsanti
 *
 * @return void
 */
function print_button_bar(){
	//stampo i pulsanti indicando testo e ID
	print_button("Rosso", "rosso");
	print_button("Verde", "verde");
	print_button("Blu", "blu");
}

/**
 * Stampa un pulsante HTML
 *
 * @param [string] $testo
 * @param [string] $id
 * @return void
 */
function print_button($testo, $id){
	echo '<button type="button" id="' . $id . '" >'. $testo .'</button>';
}

/**
 * Stampa un div contenitore con classe "row" e $elementi div al suo interno con classe "quadrato"
 *
 * @param [integer] $elementi
 * @return void
 */
function print_container($elementi){
	//apro il div contenitore con classe "row"
	echo '<div class="row">';
	//stampo $elementi di tipo div con classe "quadrato"
	for ($i=0; $i < $elementi; $i++) { 
		echo '<div class="quadrato bianco"></div>';  
	}
	//chiudo il div contenitore
	echo '</div>';
}

?>