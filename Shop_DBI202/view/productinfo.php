<?php
    require_once("../model/database.php");
    $queryGetProduct = 'SELECT productID, shopID, price,productCode ,sold,productRating, productImage, describlePro, productDiscount, product.proName as proName ,producttype.productTypeName as proTypeName FROM productinfo inner join product on productinfo.productCode = product.procode inner join producttype on product.proTypeName = producttype.productTypeCodeName where productinfo.productID = "'.$_GET['viewproduct'].'"';
    $arrayGetProduct = excuteQueryReturnArray($queryGetProduct);
    
    if(isset($_POST['number_order'])){
        if(!isset($_SESSION['login'])){
            header("Location: ../shop/?action=view_signin");
        }else{
            $arrayGetProduct[0]['number_order'] = $_POST['number_order'];
            if(isset($_SESSION['cart'])){
                $flag = true;
                foreach($_SESSION['cart'] as $key => $value){
                    if($value['productID'] == $arrayGetProduct[0]['productID']){
                        $_SESSION['cart'][$key]['number_order'] = $value['number_order'] + $_POST['number_order'];
                        $flag = false;
                        break;
                    }
                }
                if($flag){
                    $_SESSION['cart'][] = $arrayGetProduct[0]; 
                }
            }else{
                $_SESSION['cart'] = array();
                $_SESSION['cart'][] = $arrayGetProduct[0];
            }
        }        
    }
    // unset($_SESSION['cart']);
    // unset($_POST['number_order']);
    echo "<pre>";
    // print_r($arrayGetProduct);   
    // print_r($_SESSION['login']);   
    // print_r($_POST);   
    echo "</pre>";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../view/styleproduct.css">
</head>
<body class="product_body"> 
    
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
                                <div class="wrapper_cart_price_inthecart">
                                    <p class="cart-element-price"><?php echo $value['price'];?>
                                    </p>
                                    <p class="number_order">x<?php echo $value['number_order']; ?></p>
                                    </p>
                                </div>   
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
    <div class="product_origin">
        <a href="?action=view_main" class="linkginshop">GIN Shop &nbsp; > &nbsp; </a>
        <p><?php echo $arrayGetProduct[0]['proTypeName']; ?> &nbsp; > &nbsp; </p>
        <p><?php echo $arrayGetProduct[0]['proName']; ?>  &nbsp; > &nbsp; </p>
        <p><?php echo $arrayGetProduct[0]['describlePro']; ?> </p>
    </div>
    <div class="productinfo_main">
        <div class="productinfo_left">
            <img src="<?php echo $arrayGetProduct[0]['productImage'];?>" alt="no">
            <div class="productinfo_info_underimg">
                <div class="productinfo_left_share">
                    <p>Chia sẻ : </p>
                    <img src="../view/logo/facebook_logo.png" alt="">
                    <img src="../view/logo/messenger_logo.png" alt="">
                    <img src="../view/logo/twitter.png" alt="">
                    <img src="../view/logo/pinterest.png" alt="">
                </div>
                <div class="product_left_like">
                    <img src="../view/logo/heart_logo.png" alt="">
                    <p>Đã thích : (<?php echo $arrayGetProduct[0]['sold']; ?>) </p>
                </div>
            </div>
        </div>
        <div class="productinfo_right">
            <div class="productinfo_right_title">
                <div class="product_right_title_text"><div class="product_right_title_love">Yêu Thích</div><?php echo $arrayGetProduct[0]['describlePro']; ?></div>
            </div>
            <div class="product_right_info_sold">
                <div class="productinfo-right-start">
                    <p class="productinfo-right-start-rating"><?php echo number_format($arrayGetProduct[0]['productRating'],1); ?></p>
                    <img src="../view/logo/star.png" alt="">
                    <img src="../view/logo/star.png" alt="">    
                    <img src="../view/logo/star.png" alt="">    
                    <img src="../view/logo/star.png" alt="">    
                    <img src="../view/logo/star.png" alt="">    
                </div>
                <div class="productinfo_right_sold">
                    <p class="productinfo_right_solded_number"><?php echo $arrayGetProduct[0]['sold'] ?></p>
                    <p>Đã bán</p>
                </div>
            </div>
            <div class="product_right_price">
                <?php 
                    if($arrayGetProduct[0]['productDiscount']!=0){
                        $originAmount = $arrayGetProduct[0]['price']/(100-$arrayGetProduct[0]['productDiscount'])*100;
                        echo '<del class="product_price_origin">₫'.number_format($originAmount,0,"",".").'</del>';
                    }
                ?>
                <p class="product_right_currentprice">₫<?php echo number_format($arrayGetProduct[0]['price'],0,"","."); ?></p>
                <?php 
                    if($arrayGetProduct[0]['productDiscount']!=0){
                        echo    '<div class="product_discount">
                                    <p class="product_right_price_amount">'.$arrayGetProduct[0]['productDiscount'].'% giảm </p>
                                </div>';
                    }
                ?>
            </div>
            <div class="productinfo_order">
                <div class="productinfo_right_dealshock">
                    <p class="productinfo_right_order_info">Deal Sốc: </p>
                    <div >Mua để nhận quà</div>
                </div>
                <div class="productinfo_right_transfer">
                    <p class="productinfo_right_order_info">Vận chuyển: </p>
                    <div class="productinfo_right_transfer_free">
                        <img src="../view/logo/freeship.png" alt="">
                        <p>Miễn phí vận chuyển</p>
                    </div>
                </div>
                <form action="#" method="POST" class="form_order">
                    <div class="productinfo_right_transfer">
                        <p class="productinfo_right_order_info">Số Lượng: </p>
                        <button type="button" onclick=decrease(1)>-</button>
                        <input type="text" name="number_order" id="a" min="1" value="1" >
                        <button type="button" onclick=increase(1)>+</button>
                    </div>
                    <div class="addtocart">
                        <button class="add_to_cart_form" onclick=thongbao()>
                            <img src="../view/logo/addtocart.png" alt="">
                            <p>Thêm vào giỏ hàng</p>
                        </button>
                        <button class="buy_now_form">
                            Mua ngay
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <div class="product-related">
        <h3 class="product_related_title">CÁC SẢN PHẨM KHÁC LIÊN QUAN: </h3>
        <div class="wrapper_product_info_related">
            <?php
                $querySelectProductRelated = 'SELECT * FROM productinfo where productCode = "'.$arrayGetProduct[0]['productCode'].'" order by rand() limit 1,7';
                $arraySelectProductRelated = excuteQueryReturnArray($querySelectProductRelated);
                foreach($arraySelectProductRelated as $key => $value){
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
                                    </div>';                                }
                        ?>
                        <div class="product-info-database">
                            <p class="product-info-title"><?php echo $value['describlePro']; ?></p>
                            <div class="product-info-price">
                                <div class="product-info-price-wrapper">
                                    <?php
                                        if($value['productDiscount'] != 0){
                                            $originPrice = $value['price'] * (100+$value['productDiscount'])/100;
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
                                    <div class="product-info-start"><p class="product-info-start-rating"><?php echo number_format($value['productRating'],"1",".",""); ?>/5 </p>
                                        <img src="../view/logo/star.png" alt="">
                                        <img src="../view/logo/star.png" alt="">    
                                        <img src="../view/logo/star.png" alt="">    
                                        <img src="../view/logo/star.png" alt="">    
                                        <img src="../view/logo/star.png" alt="">    
                                    </div>
                                    <div class="product-info-wrapper-rating">
                                        <p class="d8djfw9"> Đã bán &nbsp; </p><p class="product-info-daban"><?php echo $value['sold']; ?></p>
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
    </div>

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
    <script>
        function decrease(number){
            $b = $("#a").val();
            if(Number($b)>1){
                $result = Number($b) - number;
                $("#a").val($result);
            }
        }
        function increase(number){
            $b = $("#a").val();
            $result = Number($b) + number;
            $("#a").val($result);
        }
        function thongbao(){
            <?php if(!isset($_SESSION['login'])){ ?>
                var result = confirm("Bạn phải đăng nhập, Click OK để chuyển hướng !");
            <?php } ?>
        }
    </script>
</body>
</html>