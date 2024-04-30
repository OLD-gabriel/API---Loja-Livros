<?php 

namespace model;

use config\Database;
use PDO;

class ClientesModel{

    public static function GetClientes(){
        $sql = "SELECT * FROM clientes";
        $clientes = Database::GetInstance()->query($sql);
        return $clientes->fetchAll(PDO::FETCH_ASSOC);
    }

}