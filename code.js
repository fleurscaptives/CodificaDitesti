function selezione_riga(riga, scelta){

	var idRigaSelezionata = "#" + riga.id;

	if(scelta ==  "on"){
		document.getElementById(idRigaSelezionata).classList.add("sel_riga");
	}
	else{
		document.getElementById(idRigaSelezionata).classList.remove("sel_riga");
	}
}
