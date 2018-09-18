<?php
	include_once("../../sql/Carregar.class.php");
	
	$objCategoria = new Categoria();
	$resultado = $objCategoria->ListarCategoria();

?>

<html>
	<head>
		<meta charset="utf-8" >
	</head>
	<body>
		<div class="form-panel">
			<h3>Cadastrar Novo Arquivo</h3>
		</div>
		<form method="POST" action="inserirok.php" enctype="multipart/form-data">  
		
		Titulo:<input type="text" name="titulo"/><br/>
		Data de Publicação:<input type="date" name="data_pub"/><br/>
		Número de páginas:<input type="number" name="num_pag"/><br/>
		Descrição:<input type="text" name="descricao"/><br/>
		Arquivo:<input type="file" name="arquivo"/><br/>
		<!--Imagem:<input type="file" name="imagem"/><br/>-->
		Categoria:<select name="id_cat">
		<!--id_user: inserindo com ADM -->
		
		<option value="" >Selecione</option>
		<?php
			foreach($resultado as $dados){
				echo "<option value='$dados->id'>$dados->nome</option>";
			
			}
		
		?>
		
		
		</select><br/>
		<br/>
		
		<input type="submit" name="botao" value="submeter"/>
		</form> 
	</body>
</html>