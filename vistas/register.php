<?php
require_once '../modelos/conexion.php'; 


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
  <div class="row">
    <h2>Registro</h2>
    <div class="main">

      <h3>Loguarse o <a href="../index.php">Registrarse</a></h3>
      <form role="form" action="../modelos/registerUsuario.php" method="POST">
        <div class="form-group">
          <label for="inputUsernameEmail">Nombres</label>
          <input type="text" class="form-control" name="nombres">
        </div>
        <div class="form-group">
          <label for="inputUsernameEmail">Identificación</label>
          <input type="text" class="form-control" name="dni">
        </div>
        <div class="form-group">
          <label for="inputPassword">Contraseña</label>
          <input type="password" class="form-control" name="password">
        </div>
        <div class="form-group">
          <label for="inputUsernameEmail">Compañia</label>
          <select name = "compañia">
            <option value="0" disabled selected>Seleccione compañia:</option>
            <?php 
                $resultado = $mysqli->query("SELECT * FROM compañia");
                while ($valores = mysqli_fetch_array($resultado)){
                    echo '<option value="'.$valores[nombres].'">'.$valores[nombres].'</option>';
                }
                ?>
          </select>
        </div>
        
        <button type="submit" class="btn btn btn-primary">
          Registrarse
        </button>
      </form>
    
    </div>
    
  </div>
</div> 
</body>
</html>