<!DOCTYPE html>
<html>
	<head></head>
	<body>
		<form method="POST" action="loginok.php">

		Email:<input type="text" name="email"/>
		Senha:<input type="password" name="senha"/>
		
		<input type="submit" name="botao"/>
		</form>
	</body>
</html>

<?php
	if(isset($_GET['msg'])){
		echo "<script>alert('Login e/ou Senha não cadastrados.');</script>";
	}

?>