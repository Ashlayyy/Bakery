<?php
$product = $connectionDB->fetchProductBySlug(PRODUCT_SLUG);
?>

<section class="detailPage">
    <article>
        <h1 class="detail-h1"><?php echo $product['title']; ?></h1>
        <p><?php echo $product['description']; ?></p>
        <ul>
            <li><?php echo $product['ingrediënts']; ?></li>
        </ul>
        <img src="./imgs/<?php echo $product['img'];?>" alt="">
    </article>
</section>