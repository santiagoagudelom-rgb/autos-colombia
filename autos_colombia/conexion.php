<?php
$host = "localhost";
$usuario = "root";
$contrasena = "";
$base_datos = "autos_colombia";

$conn = new mysqli($host, $usuario, $contrasena, $base_datos);

// Verificar conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Opcional (mensaje de prueba)
// echo "Conexión exitosa";
?>