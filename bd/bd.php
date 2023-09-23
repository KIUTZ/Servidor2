<?php

$conexionbd =new mysqli("localhost","root","","proyecto3a");
$conexionbd->set_charset("utf8");

if(empty($_POST["usuariologin"])and empty($_POST["passwordlogin"])){
    echo "campos vacios";
}else{
    $usuario=$_POST["usuariologin"];
    $contrasenia=$_POST["contrasenialogin"];
    $sql=$conexionbd->query("select * from usuarios where usuario = '$usuario' and contraseña = '$contrasenia'");
    if($datos=$sql->fetch_object()){
        header("location:../user/inicio.php");
    }else{
        echo"te jodes";
    }
}
?>
