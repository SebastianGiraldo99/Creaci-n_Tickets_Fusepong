<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login work</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
  <div class="row">
  <h2>Iniciar sesion</h2>
    <div class="main">

      <h3>Loguarse o <a href="vistas/register.php">Registrarse</a></h3>
      <form role="form">
        <div class="form-group">
          <label for="inputUsernameEmail">Cedula</label>
          <input type="text" class="form-control" id="inputUsernameEmail">
        </div>
        <div class="form-group">
          <label for="inputPassword">Contraseña</label>
          <input type="password" class="form-control" id="inputPassword">
        </div>
        
        <button type="submit" class="btn btn btn-primary">
          Ingresar
        </button>
      </form>
    
    </div>
    
  </div>
</div> 
</body>
</html>