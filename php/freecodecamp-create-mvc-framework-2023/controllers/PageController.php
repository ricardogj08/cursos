<?php

namespace App\Controllers;

use App\Core\Controller;

class PageController extends Controller
{
    /*
     * Renderiza la página principal.
     */
    public function home()
    {
        $params = ['name' => 'ricardogj08'];

        return $this->render('home', $params);
    }
}
