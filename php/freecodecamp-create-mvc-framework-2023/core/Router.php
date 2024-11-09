<?php

namespace App\Core;

use App\Core\Exceptions\NotFoundException;

/*
 * Gestiona las rutas de la aplicación.
 */
class Router
{
    public Request $request;

    public Response $response;

    /*
     * Almacena todas las rutas de la aplicación.
     */
    protected array $routes = [];

    public function __construct(Request $request, Response $response)
    {
        $this->request = $request;
        $this->response = $response;
    }

    /*
     * Almacena rutas para el método GET.
     */
    public function get(string $path, $callback)
    {
        $this->routes['get'][$path] = $callback;
    }

    /*
     * Almacena rutas para el método POST.
     */
    public function post(string $path, $callback)
    {
        $this->routes['post'][$path] = $callback;
    }

    /*
     * Ejecuta la acción de la petición.
     */
    public function resolve()
    {
        $path = $this->request->getPath();
        $method = $this->request->getMethod();

        $callback = $this->routes[$method][$path] ?? false;

        if ($callback === false) {
            // $this->response->setStatusCode(404);

            // return Application::$app->view->renderView('404');

            throw new NotFoundException();
        }

        if (is_string($callback)) {
            return Application::$app->view->renderOnlyView($callback);
        }

        if (is_array($callback)) {
            // Crea la instancia del controlador.
            Application::$app->controller = new $callback[0]();
            Application::$app->controller->action = $callback[1];
            $callback[0] = Application::$app->controller;

            // Ejecuta los middlewares del controlador.
            foreach (Application::$app->controller->getMiddlewares() as $middleware) {
                $middleware->execute();
            }
        }

        return call_user_func($callback, $this->request, $this->response);
    }
}
