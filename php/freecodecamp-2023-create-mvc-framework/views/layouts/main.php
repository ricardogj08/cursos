<?php
use App\Core\Application;

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/pico.css">
    <title><?= $this->title ?></title>
</head>
<body>
    <nav class="container-fluid">
        <ul>
            <li><strong>MVC Framework</strong></li>
            <li><a href="/">Inicio</a></li>
            <li><a href="/contacto">Contacto</a></li>
        </ul>
        <?php if (Application::isGuest()) { ?>
            <ul>
                <li><a href="/login">Login</a></li>
                <li><a href="/registrate">Registrate</a></li>
            </ul>
        <?php } else { ?>
        	<ul>
                <li><a href="/perfil"><?= Application::$app->getUserAuthName() ?></a></li>
        	    <li><a href="/logout">Cerrar sesión</a></li>
        	</ul>
       <?php } ?>
    </nav>

    <main class="container">
        <?php if (Application::$app->session->getFlash('success')) { ?>
            <div>
                <?= Application::$app->session->getFlash('success') ?>
            </div>
        <?php } ?>
      
        {{content}}
    </main>
</body>
</html>