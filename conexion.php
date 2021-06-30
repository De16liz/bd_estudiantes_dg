<!-- Autor: Deimi Gomez
Ficha: 2058969 ADSI -->

<?php

// clase de la conexion a la base de datos
class conexion
{
    static function conectar()
    {
        return mysqli_connect("localhost", "root", "", "bd_estudiantes_dg");
    }
}