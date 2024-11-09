<?php

namespace App\Controllers;

use App\Core\Application;
use App\Core\Controller;
use App\Core\Form\Form;
use App\Core\Request;
use App\Core\Response;
use App\Models\ContactModel;

class ContactController extends Controller
{
    /*
     * Renderiza la página de contacto
     * y envía un email de contacto.
     */
    public function create(Request $request, Response $response)
    {
        $contactModel = new ContactModel();

        $contactModel->loadData($request->getBody());

        if (! $request->isPost() || ! $contactModel->validate() || ! $contactModel->send()) {
            $form = new Form();

            return $this->render('contact', [
                'form' => $form,
                'model' => $contactModel,
            ]);
        }

        Application::$app->session->setFlash('success', 'Gracias por contactarnos.');

        $response->redirect('/contacto');
    }
}
