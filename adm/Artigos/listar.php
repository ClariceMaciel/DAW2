<?php
	include_once("../../sql/Carregar.class.php");
	
	$objArtigo = new Artigos();
	$resultado = $objArtigo->ListarArquivo();
?>
<html>
	<head></head>
	<body>
		<h3>Artigos Cadastrados</h3>
			
		<table border>
			<thead>
				<th>ID</th>
				<th>Titulo</th>
				<th>Data de Publicação</th>
				<th>Número de Páginas</th>
				<th>Descrição</th>
				<th>Arquivo</th>
				<th>ID_Usuário</th>
				<th>Categoria</th>
				<th colspan ="3">Acao</th>
			</thead>
			<tbody>
				<?php
					foreach($resultado as $local){
						echo "<tr>
								<td>$local->id</td>
								<td>$local->titulo</td>
								<td>$local->data_pub</td>
								<td>$local->num_pag</td>
								<td>$local->descricao</td>
								<td><img src='../../arquivo/$local->arquivo'width='150'/></td>								
								<td>$local->id_user</td>
								<td>$local->id_cat</td>
								<td><a href='editar.php?id=$local->id'>Editar</a></td>
								<td><a href='excluir.php?id=$local->id'>Excluir</a></td>
								<td><a href='editarArquivo.php?id=$local->id'>Editar Arquivo</a></td>
						
						  </tr>";
						
					}
					
					
				?>
			
			<tbody>
		</table>
	</body>	
	
</html>