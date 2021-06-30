<!-- Autor: Deimi Gomez
Ficha: 2058969 ADSI -->

<?php
include_once "conexion.php";
include_once "Nota.php";
$nota = new Nota($_POST["nota"], $_POST["id_aprendices"], $_POST["id_competencias"]);
$nota->guardar();
header("Location: notas_aprendices.php?id=" . $_POST["id_aprendices"]);