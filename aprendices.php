<!-- Autor: Deimi Gomez
Ficha: 2058969 ADSI -->

<?php
class aprendices
{
    private $nombre, $genero, $fecha_nacimiento, $id;

    public function __construct($nombre, $genero, $fecha_nacimiento, $id = null)
    {
        $this->nombre = $nombre;
        $this->grupo = $genero;
        $this->fecha_nacimiento = $fecha_nacimiento;
        if ($id) {
            $this->id = $id;
        }
    }

    public function guardar()
    {
        global $mysqli;
        $sentencia = $mysqli->prepare("INSERT INTO aprendices_dg
            (nombre, genero, fecha_nacimiento)
                VALUES
                (?, ?, ?)");
        $sentencia->bind_param("ss", $this->nombre, $this->genero, $this->fecha_nacimiento);
        $sentencia->execute();
    }

    public static function obtener()
    {
        global $mysqli;
        $resultado = $mysqli->query("SELECT id, nombre, genero, fecha_nacimeinto FROM aprendices_dg");
        return $resultado->fetch_all(MYSQLI_ASSOC);
    }
    public static function obtenerUno($id)
    {
        global $mysqli;
        $sentencia = $mysqli->prepare("SELECT id, nombre, genero, fecha_nacimiento FROM aprendices_dg WHERE id = ?");
        $sentencia->bind_param("i", $id);
        $sentencia->execute();
        $resultado = $sentencia->get_result();
        return $resultado->fetch_object();
    }
    public function actualizar()
    {
        global $mysqli;
        $sentencia = $mysqli->prepare("update aprendices_dg set nombre = ?, genero = ?, fecha_nacimiento = ? where id = ?");
        $sentencia->bind_param("ssi", $this->nombre, $this->genero, $this->fecha_nacimiento, $this->id);
        $sentencia->execute();
    }

   
}