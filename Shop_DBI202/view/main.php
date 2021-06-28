<?php   
    require_once('../model/database.php');
    if(isset($_POST['refresh_pro'])){
        if($_POST['refresh_pro'] == "yes"){
            unset($_SESSION['product']);
            $_POST['refresh_pro'] == "no";
        }
    } 
    $sortby = $orderby = $orderByCode = " ";
    
    if(isset($_GET['orderbycode'])){
        $orderByCode = $_GET['orderbycode'];
        $querySelectProduct = 'SELECT * FROM productinfo where productCode = "'.$orderByCode.'" ';
    }else if(isset($_GET['orderbytype'])){
        $orderByType =  $_GET['orderbytype'];
        $querySelectProduct = 'SELECT * FROM productinfo INNER JOIN product ON productinfo.productCode = product.proCode 
        where product.proTypeName = "'.$orderByType.'" ';
    }else{
        $querySelectProduct = "SELECT * FROM productinfo";
        
    }


    if(isset($_POST['sortby'])){
        $sortby = $_POST['sortby'];
    }else{
        $sortby = "random";
    }

    if(!isset($_GET['orderbycode']) && !isset($_GET['orderbytype'])){
        if($sortby == "desc"){
            $querySelectProduct = $querySelectProduct.' ORDER BY price desc ';
        }else if($sortby == "asc"){
            $querySelectProduct = $querySelectProduct.' ORDER BY price asc ';
        }else{
            $querySelectProduct = $querySelectProduct.' ORDER BY RAND() '; 
        }
    }

    // $arraySelectProduct = excuteQueryReturnArray($querySelectProduct);
    
    if(isset($_SESSION['product'])){
        $arraySelectProduct = $_SESSION['product'];
        
    }else{
        $arraySelectProduct = excuteQueryReturnArray($querySelectProduct);
        $_SESSION['product'] = $arraySelectProduct;
    }

    if(isset($_GET['orderbytype']) || isset($_GET['orderbycode'])){
        $arraySelectProduct = excuteQueryReturnArray($querySelectProduct);
    }
    $numberOfPage = ceil(count($arraySelectProduct)/30);
    
    if(isset($_POST['page'])){
        $pageCurrent = $_POST['page'];
    }else{
        $pageCurrent = 1;
    }

    if($numberOfPage > 10){
        $numberOfPage = 10;
    }

    // echo "<pre>";
    // print_r($_POST);
    // echo "</pre>";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gintaka shop - mua bán trực tuyến</title>
    <link rel="stylesheet" href="style.css" style="text/css">
</head>
<body>
    <header class="header">
        <div class="contact-header">
            <div class="contact-left">
                <?php 
                    if(isset($_SESSION['login'])){
                        echo '<a href="../view/add_product_by_seller.php" class="btn-contact-left">Add Product</a>';
                        echo '<a href=".?action=shop_seller" class="btn-contact-left">Shoppe seller</a>';
                    }
                    else{
                        echo '<a href=".?action=view_main" class="btn-contact-left">GINTAKA</a>';
                        echo '<a href="#" class="btn-contact-left">Shoppe seller</a>';
                    }
                ?>
                
                
                <p class="btn-contact-left clicktodisplayqrcode">Install app</p>

                <div class="qrcode">
                    <img src="../view/logo/anhqr.png" alt="">
                </div>

                <p class="btn-contact-left">
                    Connect
                    <a href="https://www.facebook.com/lovemyself205/">
                        <div class="icon-contact-left"><img src="../view/logo/facebook-logo.png" alt=""></div>
                    </a>
                    <a href="https://www.instagram.com/the_soona/">
                        <div class="icon-contact-left"><img src="../view/logo/insta.png" alt=""></div>
                    </a>
                </p>
            </div>
            <div class="contact-right">
                <a class=" bell-icon" href="facebook.com">
                    <img src="../view/logo/bell.png" alt="">
                </a>
                <div class="btn-contact-right annoucement-title-contact__right btn-contact-nonegach">
                    <p class="btn-contact-right btn-contact-right-thep annoucement-title-contact__right">
                        Annoucement
                    </p>
                    <div class="annoucement-hidden-contact">
                        <p class="annoucement-title-hidden">New annoucement</p>
                        <a href="" class="annoucement-contact-element">
                            <img src="https://img.kam.vn/images/414x0/0b88045f2d8743b4b163a203e708b882/lazada-sam-tet-tha-ga-deal-chop-nhoang-8k-mien-phi-van-chuyen.jpg" alt="" class="annoucement-element-image">
                            <div class="annoucement-element-info">
                                <h3>Ngỡ ngàng trước Voucher lên đến 100k</h3>
                                <p>Duy nhất hôm nay, Điện tử, Tiêu dùng, tìm gì cũng có</p>
                            </div>
                        </a>             
                        <a href="" class="annoucement-contact-element">
                            <img src="https://cdn.chanhtuoi.com/uploads/2021/05/w400/anh.jpg.webp" alt="" class="annoucement-element-image">
                            <div class="annoucement-element-info">
                                <h3>Tiết kiệm hơn với hàng ngìn voucher từ shoppe</h3>
                                <p>Nhiều mã đang chờ bạn, đừng bỏ qua nó nhé</p>
                            </div>
                        </a>
                        <a href="" class="annoucement-contact-element">
                            <img src="https://ss-images.saostar.vn/w700/pc/1618391580640/saostar-5xe4hhnwm23barbs.jpg" alt="" class="annoucement-element-image">
                            <div class="annoucement-element-info">
                                <h3>3 tiếng phút cuối chốt deal chỉ từ 1k</h3>
                                <p>Siêu cơ hội săn deal 1k, 9k, vào đớp ngay thôi</p>
                            </div>
                        </a>
                        <a href=""   class="annoucement-contact-element">
                            <img src="https://afamilycdn.com/150157425591193600/2021/6/3/photo-1-16227333291301764168069-1622733437080-16227334373151105859744.jpg" alt="" class="annoucement-element-image">
                            <div class="annoucement-element-info">
                                <h3>Chốt đơn 6/6 với 3 voucher</h3>
                                <p>3 mã freeship trong ví, cùng hàng ngàn deal, chốt ngay thôi nào!</p>
                            </div>
                        </a>
                    </div>
                </div>
                
                <a class=" bell-icon" href="facebook.com">
                    <img src="../view/logo/right-icon-help.png" alt="">
                </a>
                <p class="btn-contact-right">Support</p>
                <?php
                    if(isset($_SESSION['login'])){
                ?>
                <p class="btn-contact-right">WELCOME <?php echo $_SESSION['login']['cusName']; ?> </p>
                <p class="btn-contact-right">
                    <a href=".?action=logout" class="e23dascc">Log out</a> 
                </p>
                <?php
                    }else{
                ?>
                <p class="btn-contact-right">
                    <a href=".?action=view_register" class="e23dascc">Register</a> 
                </p>
                <p class="btn-contact-right">
                    <a href=".?action=view_signin" class="e23dascc">Sign in</a>
                </p>
                <?php 
                    }
                ?>
            </div>

        </div>

        <div class="content-header">
            <div class="contact-header-left">
                <a href="?action=view_main" class="">
                    <img class="contact-header-img" src="../view/logo/logogintaka.png" alt="">
                </a>
                <h4 class="nameshop-header">GINTAKA</h4>
            </div>
            <div class="search-headear">
                <div class="wrapper-button">
                    <form action="" method="POST" class="form-for-search">
                        <input class="find-button-shoppe" placeholder="Search here" type="text">
                        <button class="find-button-submit"><img class="find-icon-header" src="../view/logo/find.pgn" alt="">FIND</button>
                    </form>
                </div>
                <div class="search-header-danhmucsanpham">
                
                <?php
                    $queryDanhMuc = "SELECT * FROM product ORDER BY RAND() limit 1,8";
                    $ArrayDanhMuc = excuteQueryReturnArray($queryDanhMuc);
                    foreach($ArrayDanhMuc as $key => $value ){
                        echo '<a href=?orderbycode='.$value['proCode'].' class="search-header-element">'.$value['proName'].'</a>';
                    }
                ?>
                
                    
                </div>
            </div>
            <div class="cart-header-right">
                <?php
                    if(isset($_SESSION['login'])){
                        echo '<a href="?action=view_cart" class="cart-link-header">
                                <img class="cart-image-header" src="../view/logo/cart.png" alt="#">
                            </a>';
                    }else{
                        echo '<a href="#" class="cart-link-header">
                            <img class="cart-image-header" src="../view/logo/cart.png" alt="#">
                        </a>';
                    }
                ?>

                <div class="cart-items-header">
                    <?php 
                        if(isset($_SESSION['cart'])){
                    ?>
                        <div class="wrapper-cart">
                            <h4 class="wrapper-cart-title">Sản phẩm trong giỏ hàng</h4>
                            <?php 
                                foreach($_SESSION['cart'] as $key => $value){
                            ?>
                            <a href="?viewproduct=<?php echo $value['productID']; ?>" class="cart-element">
                                <img src="<?php echo $value['productImage']; ?>" alt="" class="cart-element-image">
                                <p class="cart-element-title"><?php echo $value['describlePro']; ?></p>
                                <p class="cart-element-price">
                                <?php echo $value['price'];
                                ?>
                                <span class="number_order">x<?php echo $value['number_order']; ?></span>
                                </p>
                            </a>
                            <?php 
                                }
                            ?>
                            <div class="wrapper_cart_link">
                                <a href="?action=view_cart" class="cart_link_element">Đến Giỏ Hàng</a>
                            </div>
                        </div>
                    <?php
                        }
                        else{
                    ?>
                        <div class="cart-items-empty">
                            <img src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/cart/9bdd8040b334d31946f49e36beaf32db.png" alt="#">
                            <p>Nothing here</p>
                        </div>
                    <?php
                        }
                    ?>
                    
                </div>

            </div>
        </div>
    </header>
    <main id="main_of_main">
        <div class="wrapper">
            <div class="navbar-left">
                <h3 class="navbar-left-title">Danh mục sản phẩm</h3>  
                <?php 
                    $queryNavBarDanhMuc = "SELECT * FROM producttype";
                    $arrayNavBarDanhMuc = excuteQueryReturnArray($queryNavBarDanhMuc);
                    foreach($arrayNavBarDanhMuc as $key => $value){
                ?>
                <div class="navbar-left-element">
                    <a href="?orderbytype=<?php echo $value['productTypeCodeName']; ?>" class="navbar-left-element-link"><?php echo $value['productTypeName']; ?></a>
                    
                    <div class="navbar-left-subelement">
                    <?php
                        $queryNavBarSubDanhMuc = 'SELECT * FROM product WHERE proTypeName = "'.$value['productTypeCodeName'].'" ';
                        $arrayNavBarSubDanhMuc = excuteQueryReturnArray($queryNavBarSubDanhMuc);
                        foreach($arrayNavBarSubDanhMuc as $key => $value){
                            echo '<a href="?orderbycode='.$value['proCode'].'" class="navbar-left-subelement-link">'.$value['proName'].'</a>';
                        }
                    ?>  
                    </div>
                </div>
                <?php
                    } 
                ?>
            </div>
            <div class="wrapper-product">
                <div class="wrapper-product-header">
                    <div class="wrapper-product-search">
                        <p class="wrapper-title">Sắp xếp theo: </p>
                        <a href="#" class="wrapper-search-element-selected wrapper-search-element">Liên Quan</a>
                        <a href="#" class="wrapper-search-element" onclick=chualam()>Mới nhất</a>
                        <a href="#" class="wrapper-search-element" onclick=chualam()>Bán Chạy</a>
                        <form action="" method="POST" class="wrapper-select-sortby">
                            <select name="sortby" class="">
                                <option value="none">Random</option>
                                <?php
                                    if(isset($_POST['sortby'])){
                                        if($_POST['sortby'] == "desc"){
                                            echo '<option value="desc" selected>Cao đến thấp</option>
                                            <option value="asc">Thấp đến cao</option>';
                                        }else if($_POST['sortby'] == "asc"){
                                            echo '<option value="desc">Cao đến thấp</option>
                                            <option value="asc" selected>Thấp đến cao</option>';
                                        }else{
                                            echo '<option value="desc">Cao đến thấp</option>
                                            <option value="asc">Thấp đến cao</option>';
                                        }
                                    }else{
                                        echo '<option value="desc">Cao đến thấp</option>
                                            <option value="asc">Thấp đến cao</option>';
                                    } 
                                ?>
                            </select>
                            <?php 
                                if(isset($_GET['orderbytype']) || isset($_GET['orderbycode'])){
                                    echo '<input type="submit" value="SORT">';
                                }
                            ?> 
                        </form>
                        <form action="" method="POST" class="refresh_pro_form">
                            <input type="hidden" name="refresh_pro" value="yes">
                            <input type="submit" class="refresh_pro" value="REFRESH PRODUCT">
                        </form>
                    </div>
                </div>
                <div class="wrapper-product-content">
                    <?php 
                        $choosenProduct = array_slice($arraySelectProduct, ($pageCurrent-1)*30+1,30);
                        foreach($choosenProduct as $key => $value){
                    ?>
                    <a href="?viewproduct=<?php echo $value['productID']; ?>" class="product-infomation-wrapper">
                        <div class="product-infomation-content">
                            <div class="product-info-image">
                                <img src="<?php echo $value['productImage']; ?>" alt="#">
                            </div>
                            <div class="product-info-favourite">
                                <img src="../view/logo/favourite.png" alt="">
                                <p class="product-info-favouritetitle">Yêu thích</p>
                            </div>
                            <?php 
                                if($value['productDiscount'] != 0){
                                    echo '<div class="product-info-discount-header">
                                            <p class="discount-amount">'.$value['productDiscount'].'%</p>
                                            <p class="giam-text">GIẢM</p>
                                        </div>';
                                }
                            ?>
                            <div class="product-info-database">
                                <p class="product-info-title"><?php echo $value['describlePro']; ?></p>
                                <div class="product-info-price">
                                    <div class="product-info-price-wrapper">
                                        <?php
                                            if($value['productDiscount'] != 0){
                                                $originPrice = $value['price'] * 100 / (100-$value['productDiscount']);
                                                echo '<p class="product-info-discount"> <del>₫ '.number_format($originPrice,0,"",".").'</del> &nbsp; </p>';
                                            } 
                                        ?>
                                        <p class="product-info-price-originprice">₫<?php echo number_format($value['price'],0,"","."); ?></p>
                                    </div>
                                    <img src="../view/logo/freeship.png" alt="">
                                </div>
                                <div class="product-info-sold">
                                    <img src="../view/logo/traitimchoem.png" class="product-like" alt="">
                                    <div class="uhsss">  
                                        <div class="product-info-start">
                                            <p class="product-info-start-rating"><?php echo number_format($value['productRating'],"1",".",""); ?>/5 </p>
                                            <img src="../view/logo/star.png" alt="">
                                            <img src="../view/logo/star.png" alt="">    
                                            <img src="../view/logo/star.png" alt="">    
                                            <img src="../view/logo/star.png" alt="">    
                                            <img src="../view/logo/star.png" alt="">    
                                        </div>
                                        <div class="product-info-wrapper-rating">
                                            <p class="d8djfw9"> Đã bán &nbsp; </p>
                                            <p class="product-info-daban"><?php echo $value['sold']; ?></p>
                                        </div>
                                    </div>
                                </div>
                                <?php
                                    $querySelectProductInName = 'SELECT * FROM shop where shopId="'.$value['shopID'].'" ';
                                    $arraySelectProductInName = excuteQueryReturnArray($querySelectProductInName);
                                ?>
                                <div class="product-info-shop">
                                    <p class="product-info-shopname"><?php echo $arraySelectProductInName[0]['shopName']; ?></p>
                                    <p class="product-info-shopaddress"><?php echo $arraySelectProductInName[0]['shopAddress']; ?></p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <?php
                        } 
                    ?>
                </div>
                <div class="paging">
                    <a href="" class="paging_element_link">
                        <img class="paging_element paging_element_left" src="../view/logo/left_paging.png" alt="">
                    </a>
                    <form action="#" method="POST" class="form-paging-main">
                        <?php
                        
                        for($i=1; $i<=$numberOfPage ; $i++){
                            if($i==$pageCurrent){
                                echo ' <input type="submit" name="page" value="'.$i.'" class="paging_element paging_link_number paging_link_number_selected">';
                            }else{
                                echo '<input type="submit" name="page" value="'.$i.'" class="paging_element paging_link_number">';
                            }
                        }
                        ?>
                    </form>
                        <!-- if($i == $pageCurrent){
                        echo ' <a href="?page='.$i.'" class="paging_element paging_link_number paging_link_number_selected">'.$i.'</a> ';
                        }else{
                            echo ' <a href="?page='.$i.'" class="paging_element paging_link_number">'.$i.'</a>';
                        } -->
                    
                    <a href="" class="paging_element_link">
                        <img class="paging_element paging_element_right" src="../view/logo/right_png.png" alt="">
                    </a>
                </div>
            </div>
        </div>
    </main>
    <script>
        function chualam(){
            alert("Function nay chua lam nha !!! ");
        }
    </script>
    <footer class="footer_main_view">
        <div class="footer_about">
            <div class="takecare_customer">
                <h5 class="footer_main_title">Chăm sóc khách hàng</h5>
                <p class="footer_main_takecare">Trung tâm trợ giúp</p>
                <p class="footer_main_takecare">Shopee Blog</p>
                <p class="footer_main_takecare">Shopee Mall</p>
                <p class="footer_main_takecare">Hướng dẫn mua hàng</p>
                <p class="footer_main_takecare">Hướng dẫn bán hàng</p>
                <p class="footer_main_takecare">Thanh toán</p>
                <p class="footer_main_takecare">Shopee Xu</p>
                <p class="footer_main_takecare">Vận chuyển</p>
                <p class="footer_main_takecare">Trả hàng & Hoàn tiền</p>
                <p class="footer_main_takecare">Chăm sóc khách hàng</p>
                <p class="footer_main_takecare">Chính sách bảo hành</p>
            </div>
            <div class="about_out_shop">
                <h5 class="footer_main_title">Về chúng tôi</h5>
                <p class="footer_main_about_out_shop">Giới thiệu về gintaka</p>
                <p class="footer_main_about_out_shop">Tuyển dụng</p>
                <p class="footer_main_about_out_shop">Điều Khoản gintaka</p>
                <p class="footer_main_about_out_shop">Chính sách bảo mật</p>
                <p class="footer_main_about_out_shop">Chính Hãng</p>
                <p class="footer_main_about_out_shop">Kênh Người bán</p>
                <p class="footer_main_about_out_shop">Flash Sales</p>
            </div>
            <div class="follow_us">
                <h5 class="footer_main_title">Theo dõi chúng tôi</h5>
                <a href="https://www.facebook.com/lovemyself205" class="follow_us_element">
                    <img src="../view/logo/facebook_logo.png" alt="">
                    <p>Facebook</p>
                </a>
                <a href="https://www.facebook.com/lovemyself205/" class="follow_us_element">
                    <img src="../view/logo/twitter.png" alt="">
                    <p>Twitter</p>
                </a>
                <a href="https://www.messenger.com/t/lovemyself205" class="follow_us_element">
                    <img src="../view/logo/messenger_logo.png" alt="">
                    <p>Messenger</p>
                </a>
            </div>
        </div>
        <div class="footer_banquyen">
            <h3>Bản quyền của: Đức Độ, sinh viên K15 Đại học FPT Đà Nẵng</h4>
            <h4>Cảm ơn các bạn đã ghé thăm shop</h5>
        </div>
        
    </footer>
</body>
</html>