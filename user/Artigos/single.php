<?php
	include_once("../../sql/Carregar.class.php");
	include_once("../../themeUser/topo.php");

	if(!$_GET["id"]){
		header("location:listar.php");
	}
	else{
		$id = $_GET["id"];
		$obj = new Artigos();
		$obj->id = $id;
		$var = $obj->RetornarArquivoUnico();
	}
?>
