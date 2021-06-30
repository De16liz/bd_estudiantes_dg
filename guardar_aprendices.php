<!-- Autor: Deimi Gomez
Ficha: 2058969 ADSI -->

<?php
include_once "conexion.php";
include_once "aprendices.php";
$aprendices = new aprendices($_POST["nombre"], $_POST["genero"], $_POST["fecha_nacimiento"]);
$aprendices->guardar();
header("Location: mostrar_aprendices.php");