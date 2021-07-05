
<?php 

function dado(){
	return rand(1,6)*100;

}

function volver(){
	header ("location: ../../index.php");
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
	if ($puesto==1) {
		vecescampeon($cod,$mysqli,$corredor);
	}else{
		actualizar($cod,$mysqli,$corredor);
	}

	
	$sql="UPDATE carrera SET puesto='$puesto' WHERE nombre_corredor='$corredor' AND codigo='$cod'";
	$resultado=$mysqli->query($sql);
	
}


function podio($cod,$mysqli){
	$sql="SELECT nombre_corredor, puesto, veces_ganadas FROM carrera WHERE codigo='$cod' ORDER BY puesto ASC";
	$resultado=$mysqli->query($sql);
	return $resultado;

}



function vecescampeon($cod,$mysqli,$corredor){
	$pista=aux_veces_campeon($cod,$mysqli);
	$sql=aux_dos_veces_campeon($pista,$mysqli,$corredor);
	$vg="UPDATE carrera SET veces_ganadas='$sql' WHERE nombre_corredor='$corredor' AND pista_id='$pista'";
	$resultado=$mysqli->query($vg);
}


function aux_veces_campeon($cod,$mysqli){
	$pista="SELECT pista_id from carrera WHERE codigo='$cod'";
	$pista=$mysqli->query($pista);
	$pista=$pista->fetch_array(MYSQLI_ASSOC);
	$pista=$pista['pista_id'];
	return $pista;
}


function aux_dos_veces_campeon($pista,$mysqli,$corredor){
	$sql="SELECT count(*) as contador from carrera WHERE pista_id='$pista' AND puesto=1 AND nombre_corredor=$corredor;";
	$sql=$mysqli->query($sql);
	$sql=$sql->fetch_array(MYSQLI_ASSOC);
	$sql=$sql['contador']+1;
	return $sql;
}

function actualizar($cod,$mysqli,$corredor){
	$pista=aux_veces_campeon($cod,$mysqli);
	$sql="SELECT count(*) as contador from carrera WHERE pista_id='$pista' AND puesto=1 AND nombre_corredor=$corredor;";
	$sql=$mysqli->query($sql);
	$sql=$sql->fetch_array(MYSQLI_ASSOC);
	$sql=$sql['contador'];
	$vg="UPDATE carrera SET veces_ganadas='$sql' WHERE nombre_corredor='$corredor' AND pista_id='$pista'";
	$resultado=$mysqli->query($vg);

}

function tiro($codigo,$mysqli){
	$cantco=canco($codigo,$mysqli);
$cantco=$cantco->fetch_array(MYSQLI_ASSOC);
for ($i=1; $i <=$cantco['cantco'] ; $i++) { 
  movimiento($codigo,$mysqli,$i);
}

}





?>