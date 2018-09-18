<?php
	include_once("../../sql/Carregar.class.php");

	$objUsuarios = new User();
	$resultado = $objUsuarios->ListarUser();
?>
<html>
	<head></head>
	<body>
	<div>
		<h3> Usuarios Cadastrados </h3>
	</div>
	
	<div>		
		<table border>
			<thead>
				<th>ID</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Senha</th>
				<th>Tipo</th>
				<th colspan="2">Acao</th>
				
			</thead>
			<tbody>
				<?php 
					foreach($resultado as $local){
						echo "<tr>
								<td>$local->id</td>
								<td>$local->nome</td>
								<td>$local->email</td>
								<td>$local->senha</td>
								<td>$local->tipo</td>
								<td><a href='editar.php?id=$local->id'>Editar</a></td>
								<td><a href='excluir.php?id=$local->id'>Excluir</a></td>			
							 </tr>";
						
					}	
				?>
			
			</tbody>	
		</table>
	</div>
	</body>
</html>