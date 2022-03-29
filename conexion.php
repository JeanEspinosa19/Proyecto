<?php
/*CONFIGURACION PARA LOGRAR LA CONEXION A LA BASE DE DATOS */
function conn()
    {
    $hostname= "localhost";
    $usuariobd= "root";
    $passworddb= "";
    $dbname= "proy";
    /*PARA LOGRAR LA CONEXION CON EL SERVIDOR (BASE DE DATOS)*/
    $conectar= mysqli_connect($hostname, $usuariobd, $passworddb, $dbname);
    return $conectar;
    }
?>
