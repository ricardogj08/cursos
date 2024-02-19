<?php

namespace App\Core;

use App\Core\DB\Database;
use Exception;

/*
 * Núcleo de la aplicación.
 */
class Application
{
    public static string $ROOT_DIR;

    public string $layout = 'main';

    public string $userClass;

    public Router $router;

    public Request $request;

    public Response $response;

    public View $view;

    public Session $session;

    public Database $db;

    public $userAuth = null;

    public static Application $app;

    public ?Controller $controller = null;

    public function __construct(string $rootPath, array $config)
    {
        self::$ROOT_DIR = $rootPath;
        $this->userClass = $config['userClass'];
        self::$app = $this;
        $this->request = new Request();
        $this->response = new Response();
        $this->router = new Router($this->request, $this->response);
        $this->view = new View();

        $this->session = new Session();

        $this->db = new Database($config['db']);

        $userAuth = $this->session->get('userAuth');

        // Obtiene la información del usuario autenticado.
        if ($userAuth) {
            $primaryKey = $this->userClass::primaryKey();

            $this->userAuth = $this->userClass::findOne([$primaryKey => $userAuth]);
        }
    }

    public function getController()
    {
        return $this->controller;
    }

    public function setController(Controller $controller)
    {
        $this->controller = $controller;
    }

    /*
     * Establece la variable de sesión
     * del usuario autenticado.
     */
    public function login($userAuth)
    {
        $this->userAuth = $userAuth;

        $primaryKey = $this->userClass::primaryKey();

        if (empty($this->userAuth->{$primaryKey})) {
            return false;
        }

        $this->session->set('userAuth', $this->userAuth->{$primaryKey});

        return true;
    }

    /*
     * Elimina la variable de sesión
     * del usuario autenticado.
     */
    public function logout()
    {
        $this->session->remove('userAuth');
    }

    /*
     * Comprueba si existe un usuario autenticado.
     */
    public static function isGuest()
    {
        return empty(self::$app->userAuth);
    }

    /*
     * Obtiene el nombre del usuario autenticado.
     */
    public function getUserAuthName()
    {
        if (empty($this->userAuth)) {
            return $this->userAuth;
        }

        return $this->userAuth->firstname.' '.$this->userAuth->lastname;
    }

    /*
     * Ejecuta la aplicación.
     */
    public function run()
    {
        try {
            echo $this->router->resolve();
        } catch (Exception $e) {
            $this->response->setStatusCode($e->getCode());

            echo $this->view->renderView('errors', [
                'execption' => $e,
            ]);
        }
    }
}
