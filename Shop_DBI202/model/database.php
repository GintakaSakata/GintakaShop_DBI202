<?php
    function excuteQueryWithoutReturn($query){
        $connect = new mysqli("localhost:3307", "root", "","shopcucmanh_dbi202");
        if($connect->connect_error){
            var_dump($connect->connect_error);
            die();
        }
        mysqli_query($connect, $query);

        $connect->close();
    }

    function excuteQueryReturnArray($query){
        $connect = new mysqli("localhost:3307", "root", "","shopcucmanh_dbi202");
        if($connect->connect_error){
            var_dump($connect->connect_error);
            die();
        }
        $result = mysqli_query($connect, $query);
        $data = array();
        while($row = mysqli_fetch_array($result, 1)){
            $data[] = $row;
        }
        return $data;
        $connect->close();
    }
?>