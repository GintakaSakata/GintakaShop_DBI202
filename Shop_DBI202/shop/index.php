<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GINTAKA SHOP - mua bán trực tuyến</title>
    <link rel="stylesheet" href="../view/style.css" style="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>


<?php 
    session_start();
    require_once("../model/database.php");

    if(isset($_POST['action'])){
        $action = $_POST['action'];
    }else if(isset($_GET['action'])){
        $action = $_GET['action'];
    }else {
        $action = "view_main";
    }
    
    if(isset($_GET['viewproduct'])){
        include_once('../view/productinfo.php');
    }else{
        switch($action){
            case 'view_register':{
                if(isset($_SESSION['login'])){
                    include_once('../view/main.php');
                }else{
                    include_once('../view/register.php');
                }
                break;
            }
            case 'view_signin':{
                if(isset($_SESSION['login'])){
                    $action = "view_main";
                    include_once('../view/main.php');
                }else{
                    include_once('../view/signIn.php');
                }
                break;
            }
            case 'view_main':{
                include_once("../view/main.php");
                break;
            }
            case 'logout':{
                include_once("../view/logout.php");
                include_once("../view/main.php");
                break;
            }
            case 'shop_seller':{
                include_once("../view/shop_seller.php");
                break;
            }
            case 'viewproduct' :{
                include_once("../view/productinfo.php");
                break;
            }
            case 'view_cart':{
                include_once("../view/view_cart.php");
                break;
            }
            case 'view_list':{
                include_once("../view/view_listordered.php");
                break;
            }
            case 'view_order':{
                include_once("../view/view_order.php");
                break;
            }
        }
    }
    

    

?>