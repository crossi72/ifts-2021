//lego le funzioni alla pressione dei pulsanti
//alla pressione del pulsante con ID "rosso" chiama la funzione aggiungiRosso
document.getElementById("rosso").addEventListener("click", aggiungi_rosso);

//funzioni: ogni funzione aggiunge una classe a tutti i div che hanno classe "quadrato"

//funzione aggiungiRosso
//cerco tutti gli elementi con classe "quadrato"
//ad ogni elemento trovato aggiungo la classe "rosso"
function aggiungi_rosso() {
	var mieiDiv = document.getElementsByClassName("quadrato");

	for (i = 0; i < mieiDiv.length; i++) {
		mieiDiv[i].classList.add("rosso");
	}
}