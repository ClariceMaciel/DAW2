<?php
      include_once("../../sql/Carregar.class.php");

      if(!$_GET["id"]){
        header("Location:listar.php");
      }else{
        $id = $_GET["id"];
        $obj = new Artigos();
        $obj->id = $id;
        $unico = $obj->RetornarArquivoUnico();

        $objCat = new Categoria();
        $resultado = $objCat->ListarCategoria();
      }
 ?>

 <html>
      <head></head>
      <body>
            <form method="POST" action="editarok.php">
                Titulo: <input type="text" name="titulo" value="<?php echo $unico->titulo;?>"/></br>
                Número de Páginas: <input type="number" name="num_pag" value="<?php echo $unico->num_pag;?>"/></br>
                Descrição: <input type="text" name="descricao" value="<?php echo $unico->descricao;?>"/></br>
                Categoria: <select name="id_cat">
                           <option value=""></option>

                           <?php
                                foreach($resultado as $dados){
                                  if($dados->$id == id_cat){
                                      echo "<option value='$dados->id' selected>$dados->nome</option>";
                                  }
                                  else{
                                    echo "<option value='$dados->id' selected>$dados->nome</option>";
                                  }
                                }
                           ?>
                <input type="submit" value="Submeter"/>
                <input type="hidden" name="id" value="<?php echo $unico->id;?>"/>

            </form>
      </body>
 </html>
