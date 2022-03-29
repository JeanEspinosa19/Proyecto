<?php // REGISTRO FAMILIAR
include_once('conexion.php');
$Documento=$_POST['documento'];
$Nombres=$_POST['nombres'];
$Apellidos=$_POST['apellidos'];
$Edad=$_POST['edad'];
$parentezco=$_POST['genero'];
echo "los datos son los siguientes: <br>";
echo "$documento, $nombres, $apellidos, $edad, $parentezco";
$conectar=conn(); //EJECUTA LA CONEXION A LA BASE DE DATOS
$sql="INSERT INTO registroFamiliar(documento, nombres, apellidos, edad, parentezco)
VALUES ('$documento', '$nombres', '$apellidos', '$edad', '$parentezco')";
/*HACE LA EJECUCION DE INSERTAR A LA BASE DE DATOS*/
$result= mysqli_query($conectar, $sql)or trigger_error("Query Failed! SQLError:".mysqli__error($conectar));
?>