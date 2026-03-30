<?php
if ($_SERVER["REQUEST_METHOD"] != "POST") {
    die("Acceso no permitido");
}
?>
<?php
include("../conexion.php");

$nombre = $_POST['nombre'];
$documento = $_POST['documento'];
$telefono = $_POST['telefono'];

$sql = "INSERT INTO usuarios (nombre, documento, telefono)
VALUES ('$nombre', '$documento', '$telefono')";

if ($conn->query($sql) === TRUE) {
    echo "Usuario registrado correctamente";
} else {
    echo "Error: " . $conn->error;
}
?>