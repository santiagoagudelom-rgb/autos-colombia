<!DOCTYPE html>
<html>
<head>
    <title>Autos Colombia</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

<div class="container">
    <h2>Sistema Parqueadero</h2>

    <a href="formularios/usuario.html"><button>Registrar Usuario</button></a><br><br>
    <a href="formularios/vehiculo.html"><button>Registrar Vehículo</button></a><br><br>
    <a href="formularios/pago.html"><button>Registrar Pago</button></a>
</div>

</body>
</html>
<?php
if (isset($_GET['msg'])) {
    if ($_GET['msg'] == "usuario_ok") {
        echo "<p>Usuario registrado correctamente</p>";
    }
}
?>