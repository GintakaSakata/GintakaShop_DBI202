
<?php
    require_once('../model/database.php');

    $querySelectUsername="SELECT username FROM customer";
    $listUsername = excuteQueryReturnArray($querySelectUsername);

    $cusName = $phone = $address =$username =$password = "";
    $mesCusName = $mesPhone = $mesAddress = $mesUsername = $mesPassword = $mesSuccess =  "";
    if(isset($_POST['cusName'])){
        if($_POST['cusName'] == ''){
            $mesCusName = "Required!!!";
        }else{
            $cusName = $_POST['cusName'];
        }
    }

    if(isset($_POST['phone'])){
        if($_POST['phone']  == ''){
            $mesPhone = "Required!!!";
        }
        else{
            $phone = $_POST['phone'];
        }
    }

    if(isset($_POST['address'])){
        if($_POST['address'] == ''){
            $mesAddress = "Required!!!";
        }
        else{
            $address = $_POST['address'];
        }
    }

    if(isset($_POST['username'])){
        if($_POST['username'] == ''){
            $mesUsername = "Required!!!";
        }
        else{
            $flag = 0;
            foreach($listUsername as $key => $value){
                if($value['username'] == $_POST['username']){
                    $mesUsername = "Username exist";
                    $flag = 1;
                    break;
                }
            }
            if($flag == 0){
                $username = $_POST['username'];
            }
        }
    }

    if(isset($_POST['password'])){
        if($_POST['password'] == ''){
            $mesPassword = "Required!!!";
        }
        else{
            $password = $_POST['password'];
        }
    }


    if($cusName!='' && $phone!= '' && $address != '' && $username != '' && $password != ''){
        $queryRegister = 'INSERT INTO customer(cusName, address, phone, username, password)
        values ("'.$cusName.'", "'.$address.'", "'.$phone.'", "'.$username.'", "'.$password.'");';
        excuteQueryWithoutReturn($queryRegister);
        $mesSuccess = "Success !!! ";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng kí tài khoản</title>
    <style>
        .form_demo{
            width: 35%;
            height: auto;
            margin: auto;
            border: 1px solid black;
            margin-top: 20px;
            padding: 20px 50px 50px 50px;
            background-color: #bdd2f3;

            color: white;

            display: flex;
            flex-direction: column;

            box-shadow: 1px 0px 4px 4px #333;
        }

        .title_form{
            text-align: center;
        }

        .form_input_btn{
            padding-left: 20px;
            width: 60%;
            height: 30px;

            border-radius: 10px;
            border-color: rgb(23, 42, 148);
            font-size: 18px;
            font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        .form_input_btn:focus-visible{
            outline-style: none;
        }

        .form_demo label{
            padding-left: 20px;
            font-size: 18px;
            font-weight: 500;
            color: #433;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        .submit_btn{
            width: 30%;
            height: 40px;
            border-radius: 5px;
            border: 2px solid red;
            color: yellow;
            background-color: rgb(146, 115, 115);
            font-size: 20px;
            margin-right: 50px;
            cursor: pointer;
        }

        .submit_btn:hover{
            background-color: red;
        }

        body{
            background-image: url("../view/logo/anhNenRegister.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        .toSignIn{
            width: 100px;
            height: 40px;
            color: white;
        }

        .returnMain{
            font-size: 18px;
            width: 100%;
            height: 40px;
            margin-top: 20px;
            background-color: rgb(146, 115, 115); 
            border-radius: 6px;
            text-align: center;
        }

        .returnMain a{
            text-decoration: none;
            color: yellow;
            line-height: 40px;
        }
        .messErrorInput{
            color: blue;
            margin: 12px 0px 24px 0px;
        }
    </style>
</head>
<body>
    <main>
        <form action="#" method="POST" class="form_demo">
            <h1 class="title_form">REGISTER GINTAKA SHOP</h1>
            <label for="#">Nhập tên tài khoản</label>
                <input type="text" name="cusName" value="" placeholder="Nhập tên của ban ở đây" class="form_input_btn">
                <div class="messErrorInput"><?php echo $mesCusName; ?></div>
            <label for="#">Nhập địa chỉ</label>
                <input type="text" name="address" value="" placeholder="Nhập địa chỉ của bạn ở đây" class="form_input_btn">
                <div class="messErrorInput"><?php echo $mesAddress;?></div>
            <label for="#">Nhập số điện thoại</label>
                <input type="text" name="phone" value="" placeholder="Nhập số điện thoại của bạn ở đây" class="form_input_btn">    
                <div class="messErrorInput"><?php echo $mesPhone; ?></div>
            <label for="#">Tên đăng nhập</label>
                <input type="text" name="username" value="" placeholder="Tên đăng nhập" class="form_input_btn">
                <div class="messErrorInput"><?php echo $mesUsername; ?></div>
            <label for="#">Mật khẩu</label>
                <input type="password" name="password" value="" placeholder="Mật khẩu" class="form_input_btn">
                <div class="messErrorInput"><?php echo $mesPassword; ?></div>
                <div class="messErrorInput"><?php echo $mesSuccess; ?></div>
            <div class="navbar">
                <input type="submit" value="REGISTER" class="submit_btn">
                <a href=".?action=view_signin" class="toSignIn">HAVE ACCOUNT, SIGN IN HERE</a>
            </div>

            <div class="returnMain">
                <a href=".?action=view_main">Return to main</a>
            </div>

            
        </form>
    </main>
</body>
</html>