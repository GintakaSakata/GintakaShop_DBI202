
<?php
    require_once("../model/database.php");
    $mesUsername = $mesPassword = $mesSuccess = $mesInfo =  "";
    $queryGetUserName = "SELECT * FROM customer";
    $listUserName = excuteQueryReturnArray($queryGetUserName);
    $username = $password = '';
    if(isset($_POST['usernameIn'])){
        if($_POST['usernameIn'] == ''){
            $mesUsername = "Required !!! ";
        }else{
            $username = $_POST['usernameIn'];
        }
    } 
    if(isset($_POST['passwordIn'])){
        if($_POST['passwordIn'] == ''){
            $mesPassword = "Required !!! ";
        }else{
            $password = $_POST['passwordIn'];
        }
    }
    foreach($listUserName as $key => $value){
        if($value['username'] == $username && $value['password'] == $password){
            $_SESSION['login'] = $value;
        }
    }
    if(!isset($_SESSION['login']) && isset($_POST['passwordIn']) && isset($_POST['usernameIn'])){
        $mesInfo = "Wrong username and password, please check again !";
    }         

    if(isset($_SESSION['login'])){
        include_once("../view/main.php");
    }else{
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <style>
        
        .form_demo{ 
            width: 35%;
            height: auto;
            border: 1px solid black;
            padding: 20px 50px 50px 50px;
            margin: 0px;

            background-color: #bdd2f3;
            

            color: white;

            display: flex;
            flex-direction: column;

            box-shadow: 1px 0px 4px 4px #333;
        }

        .title_form{
            margin-top: 4%;
            Color: white;
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

        .body-sign-in{
            background-image: url("../view/logo/anhNenSignIn.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        .toRegiter{
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
            color: #064637c7;
            margin: 12px 0px 24px 0px;
        }
        .signInRegister{
            margin-top: 6%;
            display: flex;
            justify-content: center;
        }
        .anhConZung{
            height: 100%;
            width: auto;
        }
        .annoucement-forgetpass{
            annoucement-forgetpass
        }
        .licktotroll{
            color: white;
        }
    </style>
</head>
<body class="body-sign-in">
    <main>
        <h1 class="title_form">WELCOME TO GINTAKA SHOP</h1>
        <div class="signInRegister">
            <div class="anhconZung">
                <img src="../view/logo/ZungNhi.png" alt="" class="anhConZung">
            </div>
            <form action="#" method="POST" class="form_demo">
                <h1 class="title_form">LOGIN NOW</h1>
                <label for="#">Tên đăng nhập</label>
                    <input type="text" name="usernameIn" placeholder="Tên đăng nhập" class="form_input_btn">
                    <div class="messErrorInput"><?php echo $mesUsername; ?></div>
                <label for="#">Mật khẩu</label>
                    <input type="password" name="passwordIn" placeholder="Mật khẩu" class="form_input_btn">
                    <div class="messErrorInput"><?php echo $mesPassword; ?></div>
                    <div class="annoucement-forgetpass">
                        <a href="" class="licktotroll" onclick=forgetpassword() >Quên mật khẩu</a>
                    </div>
                    <div class="messErrorInput"><?php echo $mesInfo; ?></div>
                <div class="navbar">
                    <input type="submit" value="LOG IN" class="submit_btn">
                    <a href=".?action=view_register" class="toRegiter"> REGISTER HERE</a>
                </div>

                <div class="returnMain">
                    <a href=".?action=view_main">Return to main</a>
                </div>

            </form>
        </div>
        
    </main>
</body>
</html>

<?php 
    }
?>

<script>
    function forgetpassword(){
        alert("Mày quên mật khẩu là mày ngu");
    }
</script>