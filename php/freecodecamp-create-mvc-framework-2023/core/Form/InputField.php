<?php

namespace App\Core\Form;

use App\Core\Model;

/*
 * Generador de campos para formularios.
 */
class InputField extends BaseField
{
    public const TYPE_TEXT = 'text';

    public const TYPE_EMAIL = 'email';

    public const TYPE_PASSWORD = 'password';

    public string $type;

    public function __construct(Model $model, string $attribute)
    {
        $this->type = self::TYPE_TEXT;
        parent::__construct($model, $attribute);
    }

    /*
     * Establece el campo del formulario de tipo email.
     */
    public function email()
    {
        $this->type = self::TYPE_EMAIL;

        return $this;
    }

    /*
     * Establece el campo del formulario de tipo contraseña.
     */
    public function password()
    {
        $this->type = self::TYPE_PASSWORD;

        return $this;
    }

    public function renderInput(): string
    {
        return sprintf('<input type="%s" id="%s" name="%s" value="%s" aria-invalid="%s">',
            $this->type,
            $this->attribute,
            $this->attribute,
            $this->model->{$this->attribute},
            $this->model->hasError($this->attribute) ? 'true' : ''
        );
    }
}
