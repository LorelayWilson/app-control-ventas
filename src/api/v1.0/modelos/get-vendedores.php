<?php

$sql = 'SELECT * FROM vendedores';

$res = mysqli_query($conexion, $sql);

while($row = mysqli_fetch_assoc($res)){
    array_push($salida, $row);
}

$http_code = 200;