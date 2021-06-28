<?php
    echo "<pre>";
    // print_r($arrayGetProduct);   
    print_r($_SESSION['cart']);   
    print_r($_POST['delete_by_cart']);   
    echo "</pre>";
    if(isset($_POST['delete_by_cart'])){
        foreach($_SESSION['cart'] as $key => $value){
            if($value['productID'] == $_POST['delete_by_cart']){
                echo "asdas";
                unset($_SESSION['cart'][$key]);
            }
        }
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
    </header>
    <main class="cart_main">
        <div class="cart_main_header">
            <div class="cart_main_header-left">
                <a href="../shop/?action=view_main">
                    <img src="../view/logo/logogintaka.png" alt="">
                </a>
                <h3 class="cart_main_header_left_title">Giỏ Hàng</h3>
            </div>
            <div class="cart_main_wrapper">
                <div class="cart_main_element cart_main_element_header">
                    <h3 class="cart_main_element_title1 ">Ảnh Sản phẩm</h3>
                    <!-- <h3 class="cart_main_element_title">Sản Phẩm</h3>
                    <p class="cart_main_element_title_type"></p>
                    <p class="cart_main_element_title_price">Đơn giá</p>
                    <p class="cart_main_element_title_number">Số lượng</p>
                    <p class="cart_main_element_title_total">Tổng giá</p>
                    <p class="cart_main_element_title_delete">Xoá sản phẩm</p> -->
                </div>
                <?php
                    // if(isset($_SESSION['cart'])){
                    foreach($_SESSION['cart'] as $key => $value){
                ?>
                <div class="cart_main_element">
                    <img src="<?php echo $value['productImage']; ?>" alt="">
                    <h3 class="cart_main_element_title"><?php echo $value['describlePro']; ?></h3>
                    <p class="cart_main_element_title_type"><?php echo $value['proName']; ?></p>
                    <p class="cart_main_element_title_price"><?php echo number_format($value['price'],0,'','.'); ?></p>
                    <form action="#" method="POST" id="form<?php echo $value['productID']; ?>" class="cart_main_element_title_number">
                        <div class="">
                            <button type="button" onclick="sub(<?php echo $value['productID'];?>, <?php echo $value['price']; ?>)">-</button>
                            <input type="text" class="input_number" id="<?php echo $value['productID']; ?>" name="" value="<?php echo $value['number_order']; ?>">
                            <button type="button" onclick="add(<?php echo $value['productID'];?>, <?php echo $value['price']; ?>)">+</button>
                        </div>
                        <input type="submit" onclick="return false" id="totalPrice<?php echo $value['productID'];?>" class="cart_main_element_title_total" value="<?php echo number_format($value['price']*$value['number_order'],0,".",","); ?>">
                    </form>
                    <form class="cart_main_element_title_delete" method="POST">
                        <input type="hidden" name="delete_by_cart" value="<?php echo $value['productID']; ?>">
                        <input type="submit" value="DELETE PRODUCT">
                    </form>
                </div>
                <?php
                    }
                ?>
            </div>
            
        </div>
        <script>
            function sub(id, price){
                var chuoi = '#'+ id;
                if(Number($(chuoi).val())>1){
                    var after = Number($(chuoi).val()) - 1;
                    $(chuoi).val(after);
                    var tonggiaelement = '#totalPrice'+id;
                    var tongtien = after * price;
                    $(tonggiaelement).val(Intl.NumberFormat().format(tongtien));
                }
                
            }

            function add(id, price){
                var chuoi = '#'+ id;
                after = Number($(chuoi).val()) + 1;
                $(chuoi).val(after);  
                var tonggiaelement = '#'+'totalPrice'+id;
                var tongtien = after * price;
                console.log(tonggiaelement);
                console.log(tongtien);
                $(tonggiaelement).val(Intl.NumberFormat().format(tongtien));  
            }
        </script>
    </main>
</body>
</html>