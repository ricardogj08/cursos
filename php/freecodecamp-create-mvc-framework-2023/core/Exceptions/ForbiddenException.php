<?php

namespace App\Core\Exceptions;

use Exception;

/*
 * Excepción para páginas no autorizadas.
 */
class ForbiddenException extends Exception
{
    protected $code = 403;

    protected $message = 'No tienes acceso a esta página.';
}
