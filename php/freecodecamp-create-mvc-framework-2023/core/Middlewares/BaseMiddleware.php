<?php

namespace App\Core\Middlewares;

/*
 * Clase base para todos los middlewares
 * de la aplicación.
 */
abstract class BaseMiddleware
{
    abstract public function execute();
}
