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
		<form method="POST" action="editarImgOk.php" enctype="multipart/form-data">
			Nova Imagem : <input type="file" name="imagem"/><br/>
			<input type="submit" value="Submeter" />
			<input type="hidden" name="id" value="<?php echo $id;?>" />
 			
		</form>

	</body>

</html>
