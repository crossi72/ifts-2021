//lego le funzioni alla pressione dei pulsanti
//alla pressione del pulsante con ID "rosso" chiama la funzione aggiungiRosso
document.getElementById("rosso").addEventListener("click", aggiungi_rosso);
document.getElementById("verde").addEventListener("click", aggiungi_verde);
document.getElementById("blu").addEventListener("click", aggiungi_blu);
document.getElementById("btn_giallo").addEventListener("click", aggiungi_giallo);
document.getElementById("btn_alterna").addEventListener("click", alterna_colori);

//funzioni: ogni funzione aggiunge una classe a tutti i div che hanno classe "quadrato"

//cerco tutti gli elementi con classe "quadrato"
//rimuovo le classi eventualmente presenti
//ciclo sugli elementi, per quelli con posizione 1, 4, 7, ... aggiungo la classe "rosso"
//per quelli con posizione 2, 5, 8, ... aggiungo la classe "verde"
//per quelli con posizione 3, 6, 9, ... aggiungo la classe "blu"
function alterna_colori() {
	var mieiDiv = document.getElementsByClassName("quadrato");

	//rimuovo le classi già presenti
	rimuovi_classi(mieiDiv);

	for (i = 0; i < mieiDiv.length; i += 3) {
		mieiDiv[i].classList.add("rosso");
	}
	for (i = 1; i < mieiDiv.length; i += 3) {
		mieiDiv[i].classList.add("verde");
	}
	for (i = 2; i < mieiDiv.length; i += 3) {
		mieiDiv[i].classList.add("blu");
	}
}

//cerco tutti gli elementi con classe "quadrato"
//ad ogni elemento trovato aggiungo la classe "rosso"
function aggiungi_giallo() {
	var mieiDiv = document.getElementsByClassName("quadrato");

	//rimuovo le classi già presenti
	rimuovi_classi(mieiDiv);

	for (i = 0; i < mieiDiv.length; i++) {
		mieiDiv[i].classList.add("giallo");
	}
}
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

//rimuove tutte le classi previste dalla procedura da tutti i div passati come argomento
function rimuovi_classi(mieiDiv) {
	for (i = 0; i < mieiDiv.length; i++) {
		mieiDiv[i].classList.remove("bianco");
		mieiDiv[i].classList.remove("rosso");
		mieiDiv[i].classList.remove("verde");
		mieiDiv[i].classList.remove("blu");
		mieiDiv[i].classList.remove("giallo");
	}
}
