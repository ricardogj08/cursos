<?php

namespace App\Core\Form;

use App\Core\Model;

/*
 * Clase base para los generados
 * de campos de los formularios.
 */
abstract class BaseField
{
    public Model $model;

    public string $attribute;

    public function __construct(Model $model, string $attribute)
    {
        $this->model = $model;
        $this->attribute = $attribute;
    }

    /*
     * Obtiene un string del tipo de campo para formularios:
     *   - input
     *   - textarea
     *   - select
     *   - etc.
     */
    abstract public function renderInput(): string;

    /*
     * Obtiene un string del campo de
     * un formulario desde un modelo.
     */
    public function __toString()
    {
        return sprintf('
            <label for="%s">%s:</label>
            %s
            <small>%s</small>
        ',
            $this->attribute,
            $this->model->getLabel($this->attribute),
            $this->renderInput(),
            $this->model->getFirstError($this->attribute)
        );
    }
}
