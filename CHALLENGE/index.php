



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">


	<?php 
	$auto=rand(0,9);
	$direccion="Assets/img/car_".$auto.".png";
	echo "<link rel='shortcut icon' href='$direccion'>"?>

	<title> Fast Car</title>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="Assets/css/estilos.css">

</head>
<body>

<div class="center">
	<form  method="post" action="Controllers/pista.php"  >
		<br>
		<div class="text-center col-md-8">
			<img src="Assets/img/bandera.png" width="50%">       
			<div >
				<label for="exampleFormControlSelect1">Seleccione la cantidad de corredores</label>
				<select class="form-control" id="cantcorre" name="cantcorre">
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
				</select>
			</div>
			<br>
			<div >
				<label for="exampleFormControlSelect1">Seleccione la pista</label>
				<select class="form-control" id="pista" name="pista">
					<option value="1">Silverstone - 2210 KM</option>
					<option value="2">Nürburgring - 3510 KM</option>
					<option value="3">Watkins Glen - 7400 km</option>
					<option value="4">Reims - 5090 KM</option>
					<option value="5">Zandvoort - 6340</option>
				</select>
			</div>
			<br>
			
			<div class="form-group">
				<button type="submit" class="btn btn-dark">Iniciar juego</button>
			</div>
		</div>
	</form>
</div>

</body>
</html>