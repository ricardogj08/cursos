<?php

namespace App\Core;

use App\Core\Middlewares\BaseMiddleware;

/*
 * Controlador base para todos los
 * controladores de la aplicación.
 */
class Controller
{
    public string $layout;

    public string $action = '';

    protected array $middlewares = [];

    /*
     * API para renderizar vistas.
     */
    public function render(string $view, array $params = [])
    {
        return Application::$app->view->renderView($view, $params);
    }

    /*
     * Establece el layout de la vista.
     */
    public function setLayout(string $layout)
    {
        $this->layout = $layout;
    }

    /*
     * Asigna un middleware a un controlador.
     */
    public function registerMiddleware(BaseMiddleware $middleware)
    {
        $this->middlewares[] = $middleware;
    }

    /*
     * Obtiene los middlewares asignados al controlador.
     */
    public function getMiddlewares(): array
    {
        return $this->middlewares;
    }
}
