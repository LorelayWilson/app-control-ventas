<?php

require_once '../includes/conexion.php';

define ('API_VERSION', 'v1.0');


/*************************
1.- Parsear la URL
 *********************************/

//1.1.- Obtenemos la parte del path que va después de la versión de la API
//var dump se usa para
//con el array que da el explode, nos quedamos con lo que queda en la posicion 1
$uri = explode(API_VERSION.'/', parse_url($_SERVER['REQUEST_URI'],
    PHP_URL_PATH))[1];

$uri_array = explode('/', $uri);

//extrae un elemento  del array
$recurso = array_shift($uri_array);

//convertirlo a minusculas porque nunca se sabe
$operacion = strtolower($_SERVER['REQUEST_METHOD']);

//array asociativo para la salida de datos
$salida = array();

$vistas = "json";
$http_code = 404;

include "modelos/$operacion-$recurso.php";
include "vistas/$vistas.php";


