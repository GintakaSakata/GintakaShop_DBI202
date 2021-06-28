<?php
    include_once('../model/database.php');
    session_start();
    $queryGetShop = 'SELECT * FROM shop inner join customer on shop.cusID = customer.cusID where shop.cusID = '.$_SESSION['login']['cusID'].'';
    $arrayGetShop = excuteQueryReturnArray($queryGetShop);
    // echo "<pre>";
    // print_r($_POST);
    // print_r($_GET);
    // echo "</pre>";
    $shopID = $_SESSION['login'];

    $describlePro = 'Describle product';
    if(isset($_POST['describlePro'])){
        $describlePro = $_POST['describlePro'];
    }
    //lay bang producttype
    $queryGetProTypeName = "SELECT * FROM producttype";
    $arrayGetProTypeName = excuteQueryReturnArray($queryGetProTypeName);
    //lay bang product(loai)
    if(isset($_GET['type'])){
        $queryGetProduct = 'SELECT * FROM product where proTypeName = "'.$_GET['type'].'"';
        $arrayGetProduct = excuteQueryReturnArray($queryGetProduct);
    }else{
        $queryGetProduct = 'SELECT * FROM product where proTypeName = "'.$arrayGetProTypeName[0]['productTypeCodeName'].'"';
        $arrayGetProduct = excuteQueryReturnArray($queryGetProduct);
    }

    $productCodeMess = $priceMess = $imageProMess = $proNameMess = $messSuccess= "";
    $proName = $proImage = $proPrice = $proSold = $proRating = $proDes = $proDis = "";

    if(isset($_POST['describlePro'])){
        if($_POST['describlePro']==""){
            $proNameMess = "Required !!! ";
        }else{
            $proDes = $_POST['describlePro'];
        }
    }

    if(isset($_POST['imageProduct'])){
        if($_POST['imageProduct']==""){
            $imageProMess = "Required !!! ";
        }else{
            $proImage = $_POST['imageProduct'];
        }
    }

    if(isset($_POST['proName'])){
        if($_POST['proName']==""){
            $productCodeMess = "Required !!! ";
        }else{
            $proName = $_POST['proName'];
        }
    }

    if(isset($_POST['price'])){
        if($_POST['price']==""){
            $priceMess = "Required !!! ";
        }else{
            $proPrice = $_POST['price'];
        }
    }
    if(isset($_POST['sold'])){
        $proSold = $_POST['sold'];
    }
    if(isset($_POST['productRating'])){
        $proRating = $_POST['productRating'];
    }   
    if(isset($_POST['productDiscount'])){
        $proDis = $_POST['productDiscount'];
    }
    $proShop = $arrayGetShop[0]['shopId'];
    if($proDes!="" && $proImage!="" && $proName!="" && $proPrice != ""){
        $queryInsertIntoProductinfo = 'INSERT INTO productinfo(productCode, shopID, price, sold, productRating, describlePro, productImage, productDiscount)
        values ("'.$proName.'","'.$proShop.'","'.$proPrice.'","'.$proSold.'","'.$proRating.'","'.$proDes.'","'.$proImage.'","'.$proDis.'")';
        excuteQueryWithoutReturn($queryInsertIntoProductinfo);
        $messSuccess = "Success";
        // unset($_POST);
    }
    // echo "<pre>";
    // print_r($arrayGetProduct);
    // echo "</pre>";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sản phẩm vào shop</title>
    <style>
        .body-add-product{
            margin: 0px;
            background-color: #ddd;
        }

        .header-add-product{
            background-color: white;
            margin: 0px;
            padding: 0px 30px;
            height: 60px;
        }

        .main-add-product{
            width: 100%;
        }

        .header-navbar{
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .return-to-menu{
            position: relative;
        }

        .return_menu-link{
            text-decoration: none;
            color: #333;
            margin: 30px;
        }

        .return_menu-link:hover{
            color: red;
        }

        .return_menu-link::before{
            content: "";
            position: absolute;
            border: 15px;
            border-style:solid;
            border-color: transparent red transparent transparent;
            top: -4px;
            left: -8px;
        }
        .welcome-header{
            display: flex;
            align-items: center;
        }

        .welcome-header img{
            width: 40px;
            height: 40px;
        }

        .wrapper-add-product{
            padding: 30px 40px;
            margin: 25px 200px;
            background-color: white;
        }

        .header-wrapper{    
            border-bottom: 1px solid #bbb;
        }

        .header-h3, .header-p{
            margin: 0px;
            color: #333;
        }

        .header-p{
            margin-bottom: 40px;
        }

        .add-product-title{
            margin-top: 20px;
            display: flex;
            height: 40px;
            align-items: center;
        }
        .add-product-title h3{
            width: 20%;
            font-weight: 400;
            margin-right: 10px;
        }

        .add-product-title-input{
            padding-left: 10px;
            width: 70%;
            font-size: 16px;
            height: 30px;
        }

        .add-product-title-input:focus-visible{
            outline: none;
        }

        .proTypename{
            width: 30%;
            height: 30px;
        }

        .proTypename:focus-visible{ 
            outline: none;
        }

        .proName{
            width: 30%;
            height: 30px;

        }

        .proName:focus-visible{ 
            outline: none;
        }

        .add-product{
            display: flex;
            justify-content: center;
            align-items: center;
            margin: auto;
            margin-top: 30px;
            width: 30%;
            height: 30px;
            background-color: rgb(241, 28, 28);
            color: white;
            border: none;
        }

        .uhsaduhnxnjsa{
            text-decoration: underline;
            color: white;
            padding: 4px;
        }
        .mess-field{
            margin-left: 20%;
            color: red;
        }
    </style>
</head>
<body class="body-add-product">
    <header class="header-add-product">
        <div class="header-navbar">
            <div class="return-to-menu">
                <a href="../shop/index.php" class="return_menu-link">RETURN TO GINTAKA SHOP</a>
            </div>
            <div class="welcome-header">
                <img src="../view/logo/avatarchung.png" alt="">
                <h3 class="welcome-right-header">WELCOME 
                    <?php
                        if(isset($arrayGetShop[0]['shopName'])){
                            echo $arrayGetShop[0]['shopName']; 
                        } else{
                            echo $_SESSION['login']['cusName'];
                        }
                    ?>
                </h3>
            </div>
        </div>
    </header>
    <main class="main-add-product">
        <div class="wrapper-add-product">
            <div class="header-wrapper">
                <h3 class="header-h3">Add product here</h3>
                <p class="header-p">Please input all infomation about product</p>
            </div>
            <div class="form-input">
            <form action="#" method="POST" class="form-input-product">

                <div class="add-product-title">
                    <h3>Select product type: </h3>
                    <select name="proTypename" class="proTypename" onchange="location = this.value" value=<?php echo $_GET['type']; ?>">
                        <?php 
                            if(isset($_GET['type'])){
                                $select = $_GET['type'];
                            }else{
                                $select = $arrayGetProTypeName[0]['productTypeCodeName'];
                            }
                            foreach($arrayGetProTypeName as $key => $value){
                                if($select == $value['productTypeCodeName']){
                                    echo '<option value="?type='.$value['productTypeCodeName'].'" selected>'.$value['productTypeName'].'</option>';
                                }else{
                                    echo '<option value="?type='.$value['productTypeCodeName'].'">'.$value['productTypeName'].'</option>';
                                }
                            }
                        ?> 
                    </select>
                </div>

                <div class="add-product-title">
                    <h3>Select product : </h3>
                    <select name="proName" class="proName">
                        <?php 
                            if(isset($_POST['proName'])){
                                $typepross = $_POST['proName'];   
                            }else{
                                $typepross = $arrayGetProduct[0]['proCode'];
                            }
                            foreach($arrayGetProduct as $key => $value){
                                if($typepross == $value['proCode']){
                                    echo '<option value="'.$value['proCode'].'" selected>'.$value['proName'].'</option>';
                                }else{
                                    echo '<option value="'.$value['proCode'].'">'.$value['proName'].'</option>';
                                }
                            }     
                        ?> 
                    </select>
                </div>
                <p class="mess-field"><?php echo $productCodeMess; ?></p>

                <div class="add-product-title">
                    <h3>Add describle product: </h3>
                    <input class="add-product-title-input" type="text" name="describlePro" placeholder="<?php echo $describlePro; ?>">
                </div>
                <p class="mess-field"><?php echo $proNameMess; ?></p>

                <div class="add-product-title">
                    <h3>Product rating: </h3>
                    <input class="add-product-title-input" type="text" name="productRating" value="5">
                </div>

                <div class="add-product-title">
                    <h3>Sold: </h3>
                    <input class="add-product-title-input" type="text" name="sold" value="0">
                </div>

                
                <div class="add-product-title">
                    <h3>Price(vnđ):  </h3>
                    <input class="add-product-title-input" type="text" name="price" value="">
                </div>
                <p class="mess-field"><?php echo $priceMess; ?></p>

                <div class="add-product-title">
                    <h3>Product discount(%):  </h3>
                    <input class="add-product-title-input" type="text" name="productDiscount" value="0">
                </div>

                <div class="add-product-title">
                    <h3>Input image link:  </h3>
                    <input class="add-product-title-input" type="text" name="imageProduct" placeholder="Link product">
                </div>
                <p class="mess-field"><?php echo $imageProMess; ?></p>
                <?php
                    if(isset($arrayGetShop[0]['shopName'])){
                        echo '<p class="mess-field">'.$messSuccess.'</p>';
                        echo '<input type="submit" class="add-product" value="ADD PRODUCT">';
                    }
                    else{
                        echo '<p class="add-product">PLEASE CREATE SHOP FIRST <a class="uhsaduhnxnjsa" href="../shop/index.php?action=shop_seller"> HERE</a></p>';
                    } 
                ?>
                
            </form>
        </div>
        </div>
        
    </main>
    <footer>
    </footer>
</body>
</html>