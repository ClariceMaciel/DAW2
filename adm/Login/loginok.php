<?php
	include_once("../../sql/Carregar.class.php");

	$obj = new User();
	$obj->email = $_POST['email'];
	$obj->senha = $_POST['senha'];

	$retorno = $obj->LoginAdm();

	if($retorno){
			session_start();
			$_SESSION["id"] = $retorno->id;
			$_SESSION["adm"] = true;

			header("Location:../Index/index.php");

	}
	else{
		header("Location:login.php?msg=error");
	}
?>
