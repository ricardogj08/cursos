<?php

namespace App\Core;

/*
 * Gestiona las vistas de la aplicación.
 */
class View
{
    public string $title = '';

    /*
     * Renderiza una vista.
     */
    public function renderView(string $view, array $params = [])
    {
        $viewContent = $this->renderOnlyView($view, $params);
        $layoutContent = $this->layoutContent();

        return str_replace('{{content}}', $viewContent, $layoutContent);
    }

    /*
     * Obtiene el contenido de un layout.
     */
    protected function layoutContent()
    {
        $layout = Application::$app->controller->layout ?? Application::$app->layout;

        ob_start();

        require_once Application::$ROOT_DIR."/views/layouts/{$layout}.php";

        return ob_get_clean();
    }

    /*
     * Obtiene el contenido de una vista.
     */
    protected function renderOnlyView(string $view, array $params = [])
    {
        extract($params);

        ob_start();

        require_once Application::$ROOT_DIR."/views/{$view}.php";

        return ob_get_clean();
    }
}
