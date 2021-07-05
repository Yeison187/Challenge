<?php 

require ('../../Controllers/funciones.php');
require ('../../Controllers/conexion.php');
?>
<?php 

$codigo=$_GET["codigo"];


$dpista=datopista($codigo,$mysqli);
$datopista= $dpista->fetch_array(MYSQLI_ASSOC);
$resul=carrera($codigo,$mysqli);
$podio=podio($codigo,$mysqli);



?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    
    <meta http-equiv="Refresh" content="1">
    <title>Carrera</title>
    <link rel="stylesheet" type="text/css" href="../../Assets/css/estilos.css">



</head>
<body >


    <h2 style=" position: fixed;" >Pista <?php echo $datopista['nombre']?>  - Distancia: <?php echo $datopista['distancia'] ?> kilometros</h2>

    <br><br>

    <table class="table table-striped" style="border: 2px solid #6f8197; position: fixed; margin-top: -46px;margin-left:500px ;">

         <caption>Podio</caption>
        <thead >


            <tr>

               <th></th>

               <th>Puesto</th>
               <th> </th><th></th>
               <th>Veces ganador en esta pista</th>


           </tr>
       </thead>

       <tbody>
        <?php while($row = $podio->fetch_array(MYSQLI_ASSOC)) {     
            if ($row['puesto']!=0) {

             ?>


             <tr style="text-align: center;">

                <td>Corredor <?php echo $row['nombre_corredor']; ?></td>

                <td ><?php echo $row['puesto']; ?></td>
                <td></td><td></td>

                 <td><?php echo $row['veces_ganadas']; ?></td>

            </tr>


        <?php  }} ?>
    </tbody>
</table>
<br>
<br>

<hr class="hr">


<?php while($row = $resul->fetch_array(MYSQLI_ASSOC)) { 

  $img= $row['direccion'];
  $dist=$row['distancia'];
  $recorrido="margin-left:".$row['recorrido']."px;";
  $corredor=$row['nombre_corredor'];


  echo "<hr width='$dist'><img style='$recorrido' class='car' src='$img'> Corredor $corredor";
                      

}    echo "<hr width='$dist'>"; 


tiro($codigo,$mysqli);


//$finjuego=volver();



?>


</body>
</html> 