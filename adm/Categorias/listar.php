<?php 
	include_once("../../sql/Carregar.class.php");

	$objCategoria = new Categoria();
	$resultado = $objCategoria->ListarCategoria();
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"; />
	</head>
	<body>
		<h3> Categorias</h3>
		
		<table border>
			<thead>
				<th>ID</th>
				<th>Categoria</th>
				<th colspan="2">Acao</th>
			</thead>
			<tbody>
				<?php 
					foreach ($resultado as $local){
						echo "
							<tr> 
								<td>$local->id</td>
								<td>$local->nome</td>	
								<td><a href='editar.php?id=$local->id'>Editar</a></td>
								<td><a href='excluir.php?id=$local->id'>Excluir</a></td>								
							</tr>	
						";
					}				
				?>			
			</tbody>
		</table><br><br>
		<a href="inserir.php">Cadastrar Nova Categoria</a>
	</body>


</html>
