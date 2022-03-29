<?php
include_once('conexion.php');
$Documento=$_POST['documento'];
$Nombres=$_POST['nombres'];
$Apellidos=$_POST['apellidos'];
$Edad=$_POST['edad'];
$lugar=$_POST['lugar'];
$direccion =$_POST['direccion'];
$especialidad=$_POST['especialidad'];
$dia=$_POST['dia'];
 $hora=$_POST['hora'];

 $requisitos=$_POST['requisitos'];
echo "los datos son los siguientes: <br>";
echo "$documento, $nombres, $apellidos, $edad, , $lugar, $direccion, $especialidad, $dia, $hora,
$requisitos";
$conectar=conn(); //EJECUTA LA CONEXION A LA BASE DE DATOS
$sql="INSERT INTO citasPendientes(documento, nombres, apellidos, edad, lugar, direccion,
especialidad, dia, hora, requisitos)
VALUES ('$documento', '$nombres', '$apellidos', '$edad', '$lugar', '$direccion', '$especialidad',
'$dia', '$hora', '$requisitos')";
/*HACE LA EJECUCION DE INSERTAR A LA BASE DE DATOS*/
$result= mysqli_query($conectar, $sql)or trigger_error("Query Failed! SQLError:".mysqli__error($conectar));
?>