<?php

namespace App\Core\Form;

/*
 * Generador de textareas para formularios.
 */
class TextareaField extends BaseField
{
    public function renderInput(): string
    {
        return sprintf('<textarea id="%s" name="%s" aria-invalid="%s">%s</textarea>',
            $this->attribute,
            $this->attribute,
            $this->model->hasError($this->attribute) ? 'true' : '',
            $this->model->{$this->attribute},
        );
    }
}
