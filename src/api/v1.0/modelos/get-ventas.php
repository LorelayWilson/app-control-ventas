<?php

$sql = 'SELECT vendedores.nombre as nombreVendedor,
        vendedores.apellidos as apellidosVendedor,
        clientes.nombre as nombreCliente,
        ventas.* 
        FROM ventas, vendedores, clientes
        WHERE ventas.vendedor = vendedores.id AND 
        ventas.cliente = clientes.id';

$res =mysqli_query($conexion, $sql);

while ($row = mysqli_fetch_assoc($res)) {
    $vendedor = array("id" => $row["vendedor"], "nombre" => $row["nombreVendedor"],
        "apellidos" => $row["apellidosVendedor"]);

    $cliente = array("id" => $row["cliente"], "nombre" => $row["nombreCliente"]);


    $row["vendedor"] = $vendedor;
    $row["cliente"] = $cliente;
    unset($row["nombreVendedor"]);
    unset($row["apellidosVendedor"]);
    unset($row["nombreCliente"]);
    array_push($salida, $row);
}

$http_code = 200;