<?php
if ($_SERVER["REQUEST_METHOD"] != "POST") {
    die("Acceso no permitido");
}
?>
<?php
include("../conexion.php");

$placa = $_POST['placa'];
$tipo = $_POST['tipo'];
$usuario_id = $_POST['usuario_id'];

$sql = "INSERT INTO vehiculos (placa, tipo, usuario_id)
VALUES ('$placa', '$tipo', '$usuario_id')";

if ($conn->query($sql) === TRUE) {
    echo "Vehículo registrado";
} else {
    echo "Error: " . $conn->error;
}
?>