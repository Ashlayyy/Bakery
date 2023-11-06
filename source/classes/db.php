<?php
class Database {
    public $connection;
    public $serverName;
    public $databaseName;
    public $username;
    public $password;
    public $errorMessages;

    function __construct($serverName, $databaseName, $username, $password) {
        $this->serverName = $serverName;
        $this->databaseName = $databaseName;
        $this->username = $username;
        $this->password = $password;
        $this->errorMessages = array();
    }

    function connect() {
        try {
            $this->connection = new PDO("mysql:host=$this->serverName;dbname=$this->databaseName", $this->username, $this->password); 
        } catch (PDOException $error) {
            array_push($this->errorMessages, "<br/>" . $error->getMessage());   
            die();
        }
    }

    function fetchProducts() {
        $sql = "SELECT * FROM products";
        $products = array();
        foreach ($this->connection->query($sql) as $productRow) {
            array_push($products, $productRow); 
        }
        return $products;
    }

    function fetchProductBySlug($slug) {
        $sql = "SELECT * FROM products WHERE slug=? LIMIT 1";
        $statement = $this->connection->prepare($sql);
        $statement->execute([$slug]);
        $productRow = $statement->fetch();
        return $productRow;
    }
}
