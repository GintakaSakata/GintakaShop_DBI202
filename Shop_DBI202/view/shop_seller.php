<?php
    require_once("../model/database.php");
    
    $messThongBao = "";
    $valid = true;
    $existShop = false;
    $queryGetShop = "SELECT * FROM shop ";
    $arrayGetShop = excuteQueryReturnArray($queryGetShop);

    foreach($arrayGetShop as $key => $value){
        if($value['cusID'] == $_SESSION['login']['cusID']){
            $shopName = $value['shopName'];
            $shopId = $value['shopId'];
            $existShop = true;
        }
    }
    
    if(isset($_POST['shopName']) && isset($_POST['shopAddress'])){
        if($_POST['shopName']== "" || $_POST['shopAddress']==""){
            $messThongBao = "PLEASE FILL OUT ALL FIELD !";
        }else{
            $shopName = $_POST['shopName'];
            $shopAddress = $_POST['shopAddress'];
            foreach($arrayGetShop as $key => $value){
                if($value['shopName'] == $shopName ){
                    $messThongBao = "YOUR SHOP NAME IS EXIST, INPUT AGAIN !";
                    $valid = false;
                }
            }
            if($valid == true){
                $queryAddShop = 'INSERT INTO shop(cusID,shopName,shopRating,shopAddress) 
                values("'.$_SESSION['login']['cusID'].'","'.$shopName.'",5, "'.$shopAddress.'")';
                excuteQueryWithoutReturn($queryAddShop);
                $messThongBao = "SUCCESS !!! REFESH PAGE !!! ";
            }
        }
    }
    if(isset($_POST['delete'])){
        $deleteElement = $_POST['delete'];
        $queryDeleteProduct = 'DELETE FROM productinfo WHERE productID = "'.$deleteElement.'" ';
        excuteQueryWithoutReturn($queryDeleteProduct);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kênh người bán</title>
    <style>
        .body-seller{
            margin: 0px;
            background-color: #eee;
        }

        .header-navbar{
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
            padding-bottom: 40px;

        }
        .header-body-seller{
            background-color: #eee;
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
            padding: 40px 40px;
            margin: 30px 200px;
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

        .main-add_shop{
            padding: 30px;  
            background-color: rgb(252 190 64);
        }

        .input-nameshop-place{
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .add-shop-title{
            padding-top: 60px;
            text-align: center;
            color: rgb(212, 52, 23);
        }

        .shopName-btn{
            text-align: center;
            width: 40%;
            height: 30px;
            justify-items: center;
            border: none;
            border-radius: 40px;
            margin-bottom: 40px;
        }

        .shopName-btn:focus-visible{
            outline: none;
        }

        .submit-add-shop{
            display: flex;
            justify-content: center;
            align-content: center;
            margin: auto;
            width: 40%;
            height: 30px;
            font-weight: 500;
            font-size: 16px;
            color: red;
            background-color: white;
            border: none;
            cursor: pointer;
        }

        .messThongBao{
            font-size: 20px;
            font-weight: 600;
            text-align: center;
            color: red;
        }

        .product-td-image{
            width: 100px;
        }

        .product_inshop_table{
            width: 100%;
            text-align: center;
            padding: 40px 40px;
        }


        .product_inshop_td, .product_inshop_table{
            border: 1px solid black;
        }

        .product_inshop_td a{
            text-decoration: none;
            color: #0e811d;
        }

        .product_inshop_td a:hover{
            color: white;
        }

        .btn-add_more_product_fromshop{
            text-decoration: none;
            color: white;
            text-align: center;
            display: block;
            margin: auto;
            padding: 50px;
            border: 50px;
            background-color: red;
        }


        .btn-add_more_product_fromshop:hover{
            background-color: rgb(161 157 177);
            color: rgb(71, 25, 25);
        }
        .form-delete-product-shop-seller{
            display: flex;
            align-items: center;
            align-self: center;
            background-color: transparent;
            color: #0e811d;
            padding: 4px;
            margin: 0px;
        }
        .form-delete-product-shop-seller input{
            font-size: 14px;
            font-weight: 500;
            background-color: transparent;
            color: #0e811d;
            border: none;
            cursor: pointer;
        }

        .form-delete-product-shop-seller input:hover{
            color: white;
        }

    </style>
</head>
<body class="body-seller">
    <header class="header-body-seller">
        <div class="header-navbar">
            <div class="return-to-menu">
                <a href=".?action=view_main" class="return_menu-link">RETURN TO GINTAKA SHOP</a>
            </div>
            <div class="welcome-header">
                <img src="../view/logo/avatarchung.png" alt="">
                <h3 class="welcome-right-header">WELCOME 
                    <?php 
                        if($existShop == true){
                            echo $shopName;
                        }else{
                            echo $_SESSION['login']['cusName']; 
                        }
                    ?>
                </h3>
            </div>
        </div>

        <div class="main-add_shop">
            <?php
                if($existShop == true){
                    $queryGetProduct = 'SELECT * FROM productinfo inner join product on productinfo.productCode = product.procode where productinfo.shopID = "'.$shopId.'"';
                    $arrayGetProduct = excuteQueryReturnArray($queryGetProduct);
                    
            ?>
                <table class="product_inshop_table">
                    
                        <tr class="product_inshop_tr">
                            <th class="product_inshop_th">Loại Sản Phẩm</th>
                            <th class="product_inshop_th">Tên Sản Phẩm</th>
                            <th class="product_inshop_th">Tên Shop</th>
                            <th class="product_inshop_th">Giá bán</th>
                            <th class="product_inshop_th">Đã bán</th>
                            <th class="product_inshop_th">Đánh giá(số sao)</th>
                            <th class="product_inshop_th">Ảnh minh hoạ</th>
                            <th class="product_inshop_th">Sửa</th>
                            <th class="product_inshop_th">Xoá</th>
                        </tr>    
                    
                        <?php
                            foreach($arrayGetProduct as $key => $value){
                        ?>
                    
                        <tr class="product_inshop_tr">
                            <td class="product_inshop_td"><?php echo $value['proName']; ?></td>
                            <td class="product_inshop_td"><?php echo $value['describlePro']; ?></td>
                            <td class="product_inshop_td"><?php echo $shopName; ?></td>
                            <td class="product_inshop_td"><?php echo $value['price']; ?></td>
                            <td class="product_inshop_td"><?php echo $value['sold']; ?></td>
                            <td class="product_inshop_td"><?php echo $value['productRating']; ?></td>
                            <td class="product_inshop_td"><img class="product-td-image" src="<?php echo $value['productImage']; ?>" alt=""></td>  
                            <td class="product_inshop_td"><a href="#" onclick="chualam()">EDIT</a></td>
                            <td class="product_inshop_td">
                                <form action="#" method="POST" class="form-delete-product-shop-seller">
                                    <input type="hidden" name="delete" value="<?php echo $value['productID']; ?>">
                                    <input type="submit" value="DELETE" onclick="deleteByID()">
                                </form>
                            </td>
                        </tr>
                                
                        <?php 
                            }
                        ?>  
                </table>
                <a class="btn-add_more_product_fromshop" href="../view/add_product_by_seller.php">ADD MORE PRODUCT RIGHT HERE</a>
                
            <?php        
                }
                else{
            ?>
            <form action="#" method="POST" class="form-add-shop">
                <div class="input-nameshop-place">
                    <h1 class="add-shop-title">INPUT YOUR SHOP NAME HERE</h1>
                    <input class="shopName-btn" type="text" name="shopName" placeholder="Input name shop" value="">
                </div>

                <div class="input-nameshop-place">
                    <h1 class="add-shop-title">INPUT YOUR SHOP ADDRESS HERE</h1>
                    <input class="shopName-btn" type="text" name="shopAddress" placeholder="Input address shop" value="">
                </div>

                <input type="submit" class="submit-add-shop" value="ADD SHOP">
                <p class="messThongBao"><?php echo $messThongBao; ?></p>
            </form>
            
            <?php
                } 
            ?>
            
        </div>
    </header>



    <script>
        function chualam(){
            alert("Thằng dev nhác nên chưa làm chức năng này, thử lại khi nó làm xong :((");
        }

        function deleteByID(){
            alert("Tuyệt vời ! Xoá xong rồi hjhjhj");
        }
    </script>
</body>
</html>