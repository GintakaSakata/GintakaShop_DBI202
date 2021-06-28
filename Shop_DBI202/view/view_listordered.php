<?php
    // echo "<pre>";
    // print_r($_POST);
    // echo "</pre>";
    if(isset($_POST['status'])){
        $statusId= $_POST['status'];
        excuteQueryWithoutReturn('UPDATE orderdeal SET status = 1 where orderDealId = "'.$statusId.'" ');
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../view/style_cart.css">
    <style>
        body{
            background-color: #eee;
        }
    </style>
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
                <div class="nav_bar_login">
                    <p class="btn-contact-right btn_contact_right_welcome">WELCOME <?php echo $_SESSION['login']['cusName']; ?> </p>
                    <div class="btn_contact_right_upanddown">
                        <a href=".?action=shop_seller">Visit your shop</a>
                        <a href=".?action=view_list_order" class="">Transaction history</a>
                        <a href=".?action=logout" class="">Log out</a> 
                    </div>
                </div>
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
    </header>
    <main class="cart_main">
        <div class="cart_main_header">
            <div class="cart_main_header-left">
                <a href="../shop/?action=view_main">
                    <img src="../view/logo/logogintaka.png" alt="">
                </a>
                <h3 class="cart_main_header_left_title">Lịch Sử Đốt Tiền</h3>
            </div>
        </div>
        
        <div class="cart_main_wrapper">     
            <?php
                $arraySelectAllOrder = excuteQueryReturnArray('SELECT * FROM orderdeal where orderDealIdBuy = "'.$_SESSION['login']['cusID'].'" order by orderDealDate desc ');
                foreach($arraySelectAllOrder as $key => $value){
                $arraySelectorSingleDeal = excuteQueryReturnArray('SELECT * FROM ordersingle where productOrderDealId = "'.$value['orderDealId'].'" ');
            ?>
                <div class="cart_main_wrapper_list_order">
                    <h3 class="cart_list_order_title">Mã đơn hàng: <?php echo $value['orderDealId']; ?></h3>
                    <div class="cart_list_order_element_ne">
                        <p class="cart_list_order_element_1">Ảnh</p>
                        <p class="cart_list_order_element_title">Tên sản phẩm</p>
                        <p class="cart_list_order_element_single_price">Giá</p>
                        <p class="cart_list_order_element_number">Số lượng</p>
                        <p class="cart_list_order_element_total_price">Tính</p>
                    </div>
                    <?php foreach($arraySelectorSingleDeal as $id => $singleDeal){
                        $specificProduct = excuteQueryReturnArray('SELECT * FROM productinfo where productID = "'.$singleDeal['productId'].'" ');
                    ?>
                    <div class="cart_list_order_element">
                        <img src="<?php echo $specificProduct[0]['productImage']; ?>" alt="">
                        <p class="cart_list_order_element_title"><?php echo $specificProduct[0]['describlePro']; ?></p>
                        <p class="cart_list_order_element_single_price">₫<?php echo number_format($specificProduct[0]['price'],0,".","."); ?></p>
                        <p class="cart_list_order_element_number"><?php echo $singleDeal['productNumber']; ?></p>
                        <p class="cart_list_order_element_total_price">₫<?php echo number_format($singleDeal['productTotalSingle'],0,".","."); ?></p>
                    </div>
                    <?php } ?>
                    <div class="cart_list_order_status">
                        <?php if($value['status']==1){ ?>
                        <div class="cart_list_order_status_paying btn_status_payed">
                            Đã thanh toán
                        </div>
                        <div class="cart_list_order_status_price btn_status_payed">
                            ₫<?php echo $value['orderDealPrice']; ?>
                        </div>
                        <?php }else { ?>
                            <form action="" method="POST" class="cart_list_order_status_paying" >
                                <input type="hidden" name="status" value="<?php echo $value['orderDealId']; ?>">
                                <input type="submit" value="Đã nhận được hàng" >
                            </form>
                            
                            <div class="cart_list_order_status_price">
                                ₫<?php echo $value['orderDealPrice']; ?>
                            </div>
                        <?php } ?>
                        
                    </div>
                    
                    
                </div>
            <?php } ?>
        </div>        
    </main>
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