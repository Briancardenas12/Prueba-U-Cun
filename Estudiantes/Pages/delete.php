<?php 
$Id = $_GET['Id'];
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Sistemas de Notas Estdiantes - Eliminar</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/style.css" />
    <link rel="stylesheet" href="../../css/style_form.css" />
</head>
<body>
	<header>
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #151859;">
            <div class="container">
              <a class="navbar-brand" href="#">Prueba U cun</a>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
              </div>
            </div>
        </nav>
    </header>
    <main>
    	<section class="principal">
            <div>
                <h1 class="tituloPrincipal"> Eliminar Estudiante </h1>
            </div>
        </section>
        <form method="POST" action="../Controlador/delete.php">
        	<input type="hidden" name="Id" value="<?php echo $Id; ?>">
        	<h3>¿Esta seguro de que desea eliminar el estudiante?</h3>
        	<input type="submit" value="Eliminar Estudiante" class="enviar">
        </form>
    </main>
    <footer>
      <p class="copyright">&copy Copyrigth BRIAN-DEV- 2024</p>
    </footer>
</body>
</html>