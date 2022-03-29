<?php // REGISTRO exanen
include_once('conexion.php');
// RECIBO DATOS DEL FORMULARIO LLAMADO: registroUsuario.html
$Documento=$_POST['documento'];
$Nombres=$_POST['nombres'];
$Apellidos=$_POST['apellidos'];
$Edad=$_POST['edad'];
$Genero=$_POST['examen'];
$Correo =$_POST['resultado'];
$Usuario=$_POST['registrar'];
// USAR CUANDO NO FUNCIONE EN EL NAVEGADOR
// Antes de usar $_POST['valor'] 
//if (isset(documento))
//{
 // echo "Documento:'.$documento,.'";
//}
echo "los datos son los siguientes: <br>";
echo "$documento, $nombres, $apellidos, $edad, $examen, $resultado , $resultado";
{
 // Instrucciones si $_POST['valor'] existe
}
// CONNECTA A LA BASE DE DATOS // AL HACER LA INSERCION PO CONSULTA
$conectar=conn(); //EJECUTA LA CONEXION A LA BASE DE DATOS
$sql="INSERT INTO registroExamen(documento, nombres, apellidos, edad, examen, resultado)
VALUES ('$documento', '$nombres', '$apellidos', '$edad', '$examen', '$resultado')";
/*HACE LA EJECUCION DE INSERTAR A LA BASE DE DATOS*/
$result= mysqli_query($conectar, $sql)or trigger_error("Query Failed! SQLError:".mysqli__error($conectar));
?>