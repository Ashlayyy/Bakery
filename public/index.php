<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/style.css">
    <title>Bakkerij</title>
</head>
<body>
    <?php
    require_once('../source/classes/db.php');
    $connectionDB = new Database("mariadb", "bakkery", "ashlay", "bakker");
    $connectionDB->connect();
    //print_r($connectionDB->fetchProductBySlug('aardbeijenslof'));
    require('./../source/views/layouts/header.php');
    $url = explode('/', trim($_SERVER['REQUEST_URI']));
    $url = array_values(array_filter($url));
    if (empty($url[1])) {
        require('./../source/views/layouts/product.php');
    }
    if (!empty($url[1])) {
        define('PRODUCT_SLUG', htmlspecialchars($url[1]));
        require('./../source/views/layouts/detail.php');
    }
    require('./../source/views/layouts/footer.php');
    ?>
</body>
</html>