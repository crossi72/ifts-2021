//lego le funzioni alla pressione dei pulsanti
//alla pressione del pulsante con ID "rosso" chiama la funzione aggiungiRosso
document.getElementById("rosso").addEventListener("click", aggiungi_rosso);
document.getElementById("verde").addEventListener("click", aggiungi_verde);
document.getElementById("blu").addEventListener("click", aggiungi_blu);

//funzioni: ogni funzione aggiunge una classe a tutti i div che hanno classe "quadrato"

//cerco tutti gli elementi con classe "quadrato"
//ad ogni elemento trovato aggiungo la classe "rosso"
function aggiungi_rosso() {
	var mieiDiv = document.getElementsByClassName("quadrato");

	//rimuovo le classi già presenti
	rimuovi_classi(mieiDiv);

	for (i = 0; i < mieiDiv.length; i++) {
		mieiDiv[i].classList.add("rosso");
	}
}

function rimuovi_classi(mieiDiv) {
	for (i = 0; i < mieiDiv.length; i++) {
		mieiDiv[i].classList.remove("bianco");
		mieiDiv[i].classList.remove("rosso");
		mieiDiv[i].classList.remove("verde");
		mieiDiv[i].classList.remove("blu");
	}
}

//cerco tutti gli elementi con classe "quadrato"
//ad ogni elemento trovato aggiungo la classe "verde"
function aggiungi_verde() {
	var mieiDiv = document.getElementsByClassName("quadrato");

	//rimuovo le classi già presenti
	rimuovi_classi(mieiDiv);

	for (i = 0; i < mieiDiv.length; i++) {
		mieiDiv[i].classList.add("verde");
	}
}

//cerco tutti gli elementi con classe "quadrato"
//ad ogni elemento trovato aggiungo la classe "blu"
function aggiungi_blu() {
	var mieiDiv = document.getElementsByClassName("quadrato");

	//rimuovo le classi già presenti
	rimuovi_classi(mieiDiv);

	for (i = 0; i < mieiDiv.length; i++) {
		mieiDiv[i].classList.add("blu");
	}
}
