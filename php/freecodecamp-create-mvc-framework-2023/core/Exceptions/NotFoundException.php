<?php

namespace App\Core\Exceptions;

use Exception;

/*
 * Excepción para páginas que no existen.
 */
class NotFoundException extends Exception
{
    protected $code = 404;

    protected $message = 'Esta página no existe.';
}
