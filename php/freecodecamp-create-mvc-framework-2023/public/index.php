<?php

require_once __DIR__.'/../vendor/autoload.php';

/*
 * Carga variables de entorno
 * desde el archivo .env
 */
$dotenv = \Dotenv\Dotenv::createImmutable(dirname(__DIR__));
$dotenv->load();

/*
 * Establece opciones de configuración.
 */
$config = [
    'userClass' => \App\Models\UserModel::class,
    'db' => [
        'dsn' => $_ENV['DB_DSN'],
        'username' => $_ENV['DB_USERNAME'],
        'password' => $_ENV['DB_PASSWORD'],
    ],
];

/*
 * Crea una instancia de la aplicación.
 */
$app = new \App\Core\Application(dirname(__DIR__), $config);

//$app->router->get('/', function () {
//    return 'Página principal';
//});

//$app->router->get('/', 'home');

//$app->on(\App\Core\Application::EVENT_BEFORE_REQUEST, function () {
//    echo 'Ejecución de un evento antes de la petición.';
//});

//$app->on(\App\Core\Application::EVENT_AFTER_REQUEST, function () {
//    echo 'Ejecución de un evento después de la petición.';
//});

$app->router->get('/', [\App\Controllers\PageController::class, 'home']);

$app->router->get('/contacto', [\App\Controllers\ContactController::class, 'create']);
$app->router->post('/contacto', [\App\Controllers\ContactController::class, 'create']);

$app->router->get('/login', [\App\Controllers\AuthController::class, 'login']);
$app->router->post('/login', [\App\Controllers\AuthController::class, 'login']);

$app->router->get('/registrate', [\App\Controllers\AuthController::class, 'register']);
$app->router->post('/registrate', [\App\Controllers\AuthController::class, 'register']);

$app->router->get('/logout', [\App\Controllers\AuthController::class, 'logout']);

$app->router->get('/perfil', [\App\Controllers\AuthController::class, 'profile']);

/*
 * Ejecuta la aplicación.
 */
$app->run();
