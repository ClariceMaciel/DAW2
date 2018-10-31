<?php
	include_once("../../sql/Carregar.class.php");
	include_once("../../themeUser/topo.php");
	
	$objArtigos = new Artigos();
	
	$resultado = $objArtigos->ListarArquivo();
?>

