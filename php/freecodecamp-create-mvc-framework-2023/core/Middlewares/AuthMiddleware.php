<?php

namespace App\Core\Middlewares;

use App\Core\Application;
use App\Core\Exceptions\ForbiddenException;

/*
 * Comprueba que un usuario inició sesión.
 */
class AuthMiddleware extends BaseMiddleware
{
    public array $actions = [];

    public function __construct(array $actions = [])
    {
        $this->actions = $actions;
    }

    public function execute()
    {
        if (Application::isGuest()) {
            if (empty($this->actions) || in_array(Application::$app->controller->action, $this->actions)) {
                throw new ForbiddenException();
            }
        }
    }
}
