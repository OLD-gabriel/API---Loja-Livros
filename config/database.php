<?php 

namespace config;

use PDO;

class Database {

    private static $conn;

    public static function GetInstance(){
        if(self::$conn === NULL){
            self::$conn = new PDO("mysql:host=localhost;dbname=loja_livros","root","");
        }

        return self::$conn;
    }

}