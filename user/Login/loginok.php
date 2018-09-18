<?php
	include_once("../../sql/Carregar.class.php");
	
	$obj = new User();
	$obj->email = $_POST['email'];
	$obj->senha = $_POST['senha'];
	
	$retorno = $obj->LoginUser();
	
	if($retorno){
			session_start();
			$_SESSION["id_user"] = $retorno->id;
			$_SESSION["usuario"] = true;
			
			header("Location:../#/#.php");
			
	}
	else{
		header("Location:login.php?msg=error");
	}
?>