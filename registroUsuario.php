<?php
include_once('conexion.php');
/*RECIBO DATOS DEL FORMULARIO LLAMANDO: registroUsuario.html*/
$Documento=$_POST['documento'];
$Nombres=$_POST['nombres'];
$Apellidos=$_POST['apellidos'];

$Edad=$_POST['edad'];
$Genero=$_POST['genero'];
$Correo =$_POST['correo'];
$Usuario=$_POST['usuario'];
$Contraseña=$_POST['contraseña'];
/* USAR CUANDO NO FUNCIONE EN EL NAVEGADOR
Antes de usar $_POST['valor']
if (isset(documento))
{
 echo "Documento:'.$documento,.'";
}
*/
echo "los datos son los siguientes: <br>";
echo "$documento, $nombres, $apellidos, $edad, $genero, $correo , $usuario, $contraseña";
/*CONNECTA A LA BASE DE DATOS // AL HACER LA INSERCION PO CONSULTA*/
$conectar=conn(); //EJECUTA LA CONEXION A LA BASE DE DATOS
$sql="INSERT INTO registroUsuario(documento, nombres, apellidos, edad, genero, correo,
usuario, contraseña)
VALUES ('$documento', '$nombres', '$apellidos', '$edad', '$genero', '$correo', '$usuario',
'$contraseña')";

/*HACE LA EJECUCION DE INSERTAR A LA BASE DE DATOS*/
$result= mysqli_query($conectar, $sql)or trigger_error("Query Failed! SQLError:".mysqli__error($conectar));
?>
