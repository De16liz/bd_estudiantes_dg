<!-- Autor: Deimi Gomez
Ficha: 2058969 ADSI -->

<?php
include_once "conexion.php";
include_once "aprendices.php";
include_once "encabezado.php";
$aprendices = aprendices::obtenerUno($_GET["id"]);
?>
<div class="row">
    <div class="col-12">
        <h1>Editar aprendices</h1>
        <form action="actualizar_aprendices.php" method="POST">
            <input type="hidden" name="id" value="<?php echo $_GET["id"] ?>">
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input value="<?php echo $aprendices->nombre ?>" name="nombre" required type="text" id="nombre" class="form-control" placeholder="Nombre">
            </div>
            <div class="form-group">
                <label for="grupo">Genero</label>
                <input value="<?php echo $aprendices->grupo ?>" name="genero" required type="text" id="genero" class="form-control" placeholder="Genero">
            </div>
            <div class="form-group">
                <label for="grupo">Fecha de nacimiento</label>
                <input value="<?php echo $aprendices->fecha_nacimiento ?>" name="fecha_nacimiento" required type="text" id="fecha_nacimiento" class="form-control" placeholder="fecha de nacimiento">
            </div>
            <div class="form-group">
                <button class="btn btn-success" type="submit">Guardar</button>
            </div>
        </form>
    </div>
</div>
