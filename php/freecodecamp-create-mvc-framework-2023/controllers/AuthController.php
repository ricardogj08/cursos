<?php

namespace App\Controllers;

use App\Core\Application;
use App\Core\Controller;
use App\Core\Form\Form;
use App\Core\Middlewares\AuthMiddleware;
use App\Core\Request;
use App\Core\Response;
use App\Models\AuthModel;
use App\Models\UserModel;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->registerMiddleware(new AuthMiddleware(['profile']));
    }

    /*
     * Renderiza la página de login
     * e inicia la sesión de un usuario.
     */
    public function login(Request $request, Response $response)
    {
        $authModel = new AuthModel();

        $authModel->loadData($request->getBody());

        if (! $request->isPost() || ! $authModel->validate() || ! $authModel->login()) {
            $form = new Form();

            $this->setLayout('auth');

            return $this->render('login', [
                'form' => $form,
                'model' => $authModel,
            ]);
        }

        $response->redirect('/');
    }

    /*
     * Renderiza la página de registro
     * y registra un nuevo usuario.
     */
    public function register(Request $request, Response $response)
    {
        $userModel = new UserModel();

        $userModel->loadData($request->getBody());

        if (! $request->isPost() || ! $userModel->validate() || ! $userModel->save()) {
            $form = new Form();

            $this->setLayout('auth');

            return $this->render('register', [
                'form' => $form,
                'model' => $userModel,
            ]);
        }

        Application::$app->session->setFlash('success', 'Gracias por registrarse.');

        $response->redirect('/');
    }

    /*
     * Cierra la sesión de un usuario.
     */
    public function logout(Request $request, Response $response)
    {
        Application::$app->logout();

        $response->redirect('/');
    }

    /*
     * Renderiza la página de perfil del usuario.
     */
    public function profile()
    {
        return $this->render('profile');
    }
}
