<?php
	include_once("../../sql/Carregar.class.php");	

	if(!$_GET["id"]){
		header("location:listar.php"); 
	}
	else{
		$id = $_GET["id"];
		$objeto = new Categoria();
		$objeto->id = $id;
		$variavel = $objeto->RetornarCategoriaUnica();
	}	
?>
<!DOCTYPE html>
<html>
	<head></head>
	<body>
		<form method="POST" action="editarok.php">
			Categoria: <input type="text" name="nome" value="<?php echo $variavel->nome;?>" /><br/>		
			<input type="submit" value="Submeter" />
			<input type="hidden" name="id" value="<?php echo $variavel->id;?>" />
 			
		</form>
	
	</body>

</html>
