<?php
header('Access-Control-Allow-Origin: *');
include 'conexion.php';

$resultado = $mysqli->query("select * from tbl_rifa_enero");

$resultado->data_seek(0);
$techarray = array();

while ($fila = $resultado->fetch_assoc()) {
    //echo " id = " . $fila['numero_rifa'] . " \n ";
	//echo "\n";
	$techarray[] = $fila;
}

echo json_encode($techarray);

?>