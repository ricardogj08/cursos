<?php

namespace App\Core;

/*
 * Proporciona herramientas para
 * las respuestas de la aplicación.
 */
class Response
{
    /*
     * Establece el código de respuesta HTTP.
     */
    public function setStatusCode(int $code)
    {
        http_response_code($code);
    }

    /*
     * Redirecciona a una ruta específica.
     */
    public function redirect(string $path)
    {
        header('Location: '.$path);

        exit();
    }
}
