<?php
	include_once("../../sql/Carregar.class.php");

	if(!$_GET["id"]){
		header("location:listar.php");
	}
	else{
		$id = $_GET["id"];
	}
?>

<html>
	<head></head>
	<body>
		<form method="POST" action="editarArquivoOk.php" enctype="multipart/form-data">
			Novo Arquivo : <input type="file" name="arquivo"/><br/>
			<input type="submit" value="Submeter" />
			<input type="hidden" name="id" value="<?php echo $id;?>" />

		</form>

	</body>

</html>
