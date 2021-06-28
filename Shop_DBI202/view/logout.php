<?php
    if(isset($_SESSION['login'])){
        unset($_SESSION['login']);
        unset($_SESSION['cart']);
    }
?>