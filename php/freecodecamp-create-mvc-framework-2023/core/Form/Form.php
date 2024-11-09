<?php

namespace App\Core\Form;

use App\Core\Model;

/*
 * Colección de herramientas
 * para construir formularios.
 */
class Form
{
    /*
     * Obtiene un string de apertura de un formulario.
     */
    public function begin(string $action, string $method)
    {
        return sprintf('<form action="%s" method="%s">', $action, $method);
    }

    /*
     * Obtiene un string de cierre de un formulario.
     */
    public function end()
    {
        return '</form>';
    }

    /*
     * API para generar el campo de un formulario desde un modelo.
     */
    public function field(Model $model, string $attribute)
    {
        return new InputField($model, $attribute);
    }

    /*
     * API para generar un textarea de un formulario desde un modelo.
     */
    public function textarea(Model $model, string $attribute)
    {
        return new TextareaField($model, $attribute);
    }
}
