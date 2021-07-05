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
    

    <title>Carrera</title>
    <link rel="stylesheet" type="text/css" href="../../Assets/css/estilos.css">
</head>
<body >



    <h2>Pista <?php echo $datopista['nombre']?>  - Distancia: <?php echo $datopista['distancia'] ?> kilometros</h2>



           <table class="table table-striped" style="border: 2px solid #6f8197;">

            <h1>Podio</h1>
                <thead >


                    <tr>
                        
                     <th></th>
                       
                        <th>Puesto</th>
                        
                        
                    </tr>
                </thead>

                <tbody>
                    <?php while($row = $podio->fetch_array(MYSQLI_ASSOC)) {     
                        if ($row['puesto']!=0) {
                           
                       ?>


                        <tr>
                            
                            <td>Corredor <?php echo $row['nombre_corredor']; ?>..........</td>
                            
                            <td ><?php echo $row['puesto']; ?></td>
                            
                        </tr>

                        
                    <?php  }} ?>
                </tbody>
            </table>

    <hr class="hr">


    <?php while($row = $resul->fetch_array(MYSQLI_ASSOC)) { 

      $img= $row['direccion'];
      $dist=$row['distancia'];
      $recorrido="margin-left:".$row['recorrido']."px;";
      $corredor=$row['nombre_corredor'];


      echo "<hr width='$dist'><img style='$recorrido' class='car' src='$img'> <h3>Corredor $corredor </h3>";
      ?>

      <?php                          

  }    echo "<hr width='$dist'>"; 


    $cantco=canco($codigo,$mysqli);
    $cantco=$cantco->fetch_array(MYSQLI_ASSOC);
   for ($i=1; $i <=$cantco['cantco'] ; $i++) { 
      $mov=movimiento($codigo,$mysqli,$i);
   }
      
 
  




   ?>




</body>
</html> 