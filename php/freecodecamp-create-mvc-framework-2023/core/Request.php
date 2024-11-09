<?php

namespace App\Core;

/*
 * Proporciona herramientas para
 * las peticiones de la aplicación.
 */
class Request
{
    /*
     * Obtiene la ruta de la petición.
     */
    public function getPath()
    {
        $path = $_SERVER['REQUEST_URI'] ?? '/';

        $position = strpos($path, '?');

        // Elimina los query params de la petición.
        if ($position !== false) {
            $path = substr($path, 0, $position);
        }

        return $path;
    }

    /*
     * Obtiene el método HTTP de la petición.
     */
    public function getMethod()
    {
        return strtolower($_SERVER['REQUEST_METHOD']);
    }

    /*
     * Valida si el método HTTP de la petición es GET.
     */
    public function isGet()
    {
        return $this->getMethod() === 'get';
    }

    /*
     * Valida si el método HTTP de la petición es POST.
     */
    public function isPost()
    {
        return $this->getMethod() === 'post';
    }

    /*
     * Obtiene el cuerpo de la petición.
     */
    public function getBody()
    {
        $body = [];

        if ($this->isGet()) {
            foreach ($_GET as $key => $value) {
                $body[$key] = filter_input(INPUT_GET, $key, FILTER_SANITIZE_SPECIAL_CHARS);
            }
        }

        if ($this->isPost()) {
            foreach ($_POST as $key => $value) {
                $body[$key] = filter_input(INPUT_POST, $key, FILTER_SANITIZE_SPECIAL_CHARS);
            }
        }

        return $body;
    }
}
