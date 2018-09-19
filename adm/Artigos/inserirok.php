<?php
	include_once("../../sql/Artigos.class.php");

	$objArtigo = new Artigos();
	$objArtigo->titulo = $_POST["titulo"];
	$objArtigo->data_pub = $_POST["data_pub"];
	$objArtigo->num_pag = $_POST["num_pag"];
	$objArtigo->descricao = $_POST["descricao"];
	$objArtigo->id_cat = $_POST["id_cat"];
	//$objArtigo->id_user = $_POST["id_user"]; //pegar o id ADM pelo Login

	if($_FILES["arquivo"]){
		$diretorio = "../../arquivo/";
		$nome = $_FILES["arquivo"]["name"];
		$nomeTemporario = $_FILES["arquivo"]["tmp_name"];
		move_uploaded_file($nomeTemporario, $diretorio.$nome);

	}

	$objArtigo->arquivo = $nome;

	$retorno = $objArtigo->InserirArquivo();
	if($retorno)
		echo "Não sei como, mas funcionou";
	else
		echo "sabia que nao ia funcionar";
?>
