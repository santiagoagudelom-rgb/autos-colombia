<?php
include("../conexion.php");

$vehiculo_id = $_POST['vehiculo_id'];
$celda_id = $_POST['celda_id'];

$sql = "INSERT INTO registros (vehiculo_id, celda_id, hora_entrada)
VALUES ('$vehiculo_id', '$celda_id', NOW())";

if ($conn->query($sql) === TRUE) {
    echo "Entrada registrada";
} else {
    echo "Error: " . $conn->error;
}
?>