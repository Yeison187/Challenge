
<?php 

function dado(){
	return rand(1,6)*100;
}


//consultas


function carrera($cod,$mysqli){

	$sql="SELECT carrera.nombre_corredor, pista.nombre, carro.direccion, recorrido, codigo,pista.distancia FROM carrera INNER JOIN carro ON carrera.carro_id=carro.id INNER JOIN pista ON carrera.pista_id=pista.id WHERE codigo='$cod'";
	$resultado=$mysqli->query($sql); 
	return $resultado;
}

function datopista($cod,$mysqli) {
	$sql="SELECT pista.nombre, pista.distancia FROM carrera INNER JOIN pista ON carrera.pista_id=pista.id WHERE codigo='$cod'";
	$dp=$mysqli->query($sql);
	return $dp;

}

function movimiento($cod,$mysqli,$corredor){

	$avanza=dado();
	$dis="SELECT carrera.recorrido, pista.distancia, carrera.puesto FROM carrera INNER JOIN pista ON carrera.pista_id=pista.id WHERE codigo='$cod' AND nombre_corredor='$corredor'";
	$distan=$mysqli->query($dis);
	$distancia=$distan->fetch_array(MYSQLI_ASSOC);
	$avanza=dado()+$distancia['recorrido'];

	if ($distancia['puesto']==0) {
	$sql="UPDATE carrera SET recorrido='$avanza' WHERE nombre_corredor='$corredor' AND codigo='$cod'";
	$resultado=$mysqli->query($sql);
	
	}
	if ($avanza>=$distancia['distancia']&& $distancia['puesto']==0) {
		ordenllegada($cod,$mysqli,$corredor);

	}
}


function canco($codigo,$mysqli){
	$sql="SELECT COUNT(*) As cantco FROM carrera WHERE codigo ='$codigo'";
	$resultado=$mysqli->query($sql);
	return $resultado;

}



function ordenllegada($cod,$mysqli,$corredor){

	$a="SELECT max(puesto) AS maximo from carrera WHERE codigo='$cod'";
	$au=$mysqli->query($a);
	$aux=$au->fetch_array(MYSQLI_ASSOC);
	$puesto=$aux['maximo']+1;
	$sql="UPDATE carrera SET puesto='$puesto' WHERE nombre_corredor='$corredor' AND codigo='$cod'";
	$resultado=$mysqli->query($sql);
}


function podio($cod,$mysqli){
	$sql="SELECT nombre_corredor, puesto FROM carrera WHERE codigo='$cod' ORDER BY puesto ASC";
	$resultado=$mysqli->query($sql);
	return $resultado;

}

function vecescampeon($cod,$mysqli,$corredor){
	$sql="SELECT pista_id FROM carrera WHERE codigo='$cod'";
	$resultado=$mysqli->query($sql);
	$resultado=$resultado->fetch_array(MYSQLI_ASSOC);
	$sq="SELECT sum(puesto) FROM carrera WHERE $nombre_corredor='$corredor' AND pista='$resultado['pista_id']'";
	$s=$mysqli->query($sq);
	
}







?>