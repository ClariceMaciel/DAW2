<?php
	include_once("../../sql/Carregar.class.php");

	if(!$_GET["id"]){
		header("location:listar.php");
	}
	else{
		$id = $_GET["id"];
		$objeto = new User();
		$objeto->id = $id;
		$variavel = $objeto->RetornarUnico();
	}	
?>


<html>
	<head></head>
	<body>
		<form method="POST" action="editarok.php">
			Nome: <input type="text" name="nome" value="<?php echo $variavel->nome;?>" /><br/>
			Email: <input type="text" name="email" value="<?php echo $variavel->email;?>" /><br/>
			Senha:<input type="text" name="senha" value="<?php echo $variavel->senha;?>"/><br/> 			
			<input type="submit" value="Submeter" />
			<input type="hidden" name="id" value="<?php echo $variavel->id;?>" />
 			
		</form>
	
	</body>

</html>