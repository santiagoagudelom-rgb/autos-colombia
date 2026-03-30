<?php
if ($_SERVER["REQUEST_METHOD"] != "POST") {
    die("Acceso no permitido");
}
?>
<?php
include("../conexion.php");

$registro_id = $_POST['registro_id'];
$valor = $_POST['valor'];

$sql = "INSERT INTO pagos (registro_id, valor, fecha_pago, estado)
VALUES ('$registro_id', '$valor', NOW(), 'pagado')";

if ($conn->query($sql) === TRUE) {
    echo "Pago registrado correctamente";
} else {
    echo "Error: " . $conn->error;
}
?>