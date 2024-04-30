<?php 

include "vendor/autoload.php";

use model\ClientesModel;
use model\LivroModel;

$request = $_SERVER["REQUEST_METHOD"];

$action = $_GET["action"];

$dados = "";

$routes = [
    "GetClientes" => ClientesModel::class
];

if(array_key_exists($action,$routes)){

    $class = $routes[$action];
    $metodo = $action;
    $dados = $class::$metodo(); 

}else{

}

echo json_encode($dados);