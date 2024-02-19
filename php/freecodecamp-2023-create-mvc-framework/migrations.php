<?php

require_once __DIR__.'/vendor/autoload.php';

/*
 * Carga variables de entorno
 * desde el archivo .env
 */
$dotenv = \Dotenv\Dotenv::createImmutable(__DIR__);
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

$app = new \App\Core\Application(__DIR__, $config);

$app->db->applyMigrations();
