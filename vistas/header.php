<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestor</title>
    <?php require_once "../procesos/dependenciasv.php"?>
</head>

<body style="background-color: #e9ecef">


    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
        <div class="container">
            <a class="navbar-brand" href="inicio.php">
                <img src="../img/archivos.png" width="75px" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="inicio.php"> <span class="fas fa-home"></span> Inicio
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="categorias.php"> <span class="fas fa-file-alt"></span> Categorias</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="gestor.php"> <span class="fas fa-folder-open"></span> Archivos</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="../procesos/usuario/salir.php" style="color:red;"> <span class="fas fa-sign-out-alt"></span> Salir</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

   

