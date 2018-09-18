<?php
	include_once("../../sql/User.class.php");
	
	$objUsuarios = new User();
	$objUsuarios->nome = $_POST["nome"];
	$objUsuarios->email = $_POST["email"];
	$objUsuarios->senha = $_POST["senha"];
	$objUsuarios->tipo = "usuario" ;

	$retorno = $objUsuarios->InserirUser();
	if($retorno)
		echo "Não sei como, mas funcionou";
	else
		echo "sabia que nao ia funcionar";
?>