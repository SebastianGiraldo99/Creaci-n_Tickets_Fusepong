<?php
    require_once "conexion.php";

    if((isset($_POST["nombres"]) || isset($_POST["dni"])|| isset($_POST["dni"])|| isset($_POST["compañia"]))){

        $mysqli ->query("INSERT INTO usuario VALUES (".$_POST['password'].",".$_POST['nombres'].",".$_POST['dni'].",".$_POST['compañia'].")");
        //$mysqli ->query("SELECT * FROM usuario WHERE identificacion = ".$_POST["dni"]." ");
        echo "enviado";
    }else{
        echo "no enviado";
    }


/*echo '<script>
    window.location = "../vistas/contenido.php";
</script>';
*/