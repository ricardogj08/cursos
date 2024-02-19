<?php

namespace App\Core;

/*
 * Clase base para todos los
 * modelos de la aplicación.
 */
abstract class Model
{
    public const RULE_REQUIRED = 'required';

    public const RULE_EMAIL = 'email';

    public const RULE_MIN = 'min';

    public const RULE_MAX = 'max';

    public const RULE_MATCH = 'match';

    public const RULE_UNIQUE = 'unique';

    /*
     * Almacena errores de validación.
     */
    public array $errors = [];

    /*
     * Inicializa las propiedades de un modelo.
     */
    public function loadData(array $data)
    {
        foreach ($data as $key => $value) {
            if (property_exists($this, $key)) {
                $this->{$key} = $value;
            }
        }
    }

    /*
     * Define las reglas de validación de un modelo.
     */
    abstract public function rules(): array;

    /*
     * Agrega un mensaje de validación
     * desde una regla de validación.
     */
    protected function addErrorForRule(string $attribute, string $rule, array $params = [])
    {
        $message = $this->errorMessages()[$rule] ?? '';

        foreach ($params as $key => $value) {
            $message = str_replace("{{$key}}", mb_strtolower($value), $message);
        }

        $this->addError($attribute, $message);
    }

    /*
     * Agrega un mensaje de validación.
     */
    public function addError(string $attribute, string $message)
    {
        $this->errors[$attribute][] = $message;
    }

    /*
     * Define todos los mensajes de validación.
     */
    public function errorMessages()
    {
        return [
            self::RULE_REQUIRED => 'Este campo es obligatorio.',
            self::RULE_EMAIL => 'Este campo debe ser una dirección de correo electrónico válida.',
            self::RULE_MIN => 'La longitud mínima de este campo debe ser {min}.',
            self::RULE_MAX => 'La longitud máxima de este campo debe ser {max}.',
            self::RULE_MATCH => 'Este campo no coincide con el campo {match}.',
            self::RULE_UNIQUE => 'El campo {field} debe contener un valor único.',
        ];
    }

    /*
     * Valida los atributos de un modelo.
     */
    public function validate()
    {
        foreach ($this->rules() as $attribute => $rules) {
            $value = $this->{$attribute};

            foreach ($rules as $rule) {
                $ruleName = $rule;

                if (! is_string($ruleName)) {
                    $ruleName = $rule[0];
                }

                if ($ruleName === self::RULE_REQUIRED && ! $value) {
                    $this->addErrorForRule($attribute, self::RULE_REQUIRED);
                }

                if ($ruleName === self::RULE_EMAIL && ! filter_var($value, FILTER_VALIDATE_EMAIL)) {
                    $this->addErrorForRule($attribute, self::RULE_EMAIL);
                }

                if ($ruleName === self::RULE_MIN && array_key_exists('min', $rule) && strlen($value) < $rule['min']) {
                    $this->addErrorForRule($attribute, self::RULE_MIN, $rule);
                }

                if ($ruleName === self::RULE_MAX && array_key_exists('max', $rule) && strlen($value) > $rule['max']) {
                    $this->addErrorForRule($attribute, self::RULE_MAX, $rule);
                }

                if ($ruleName === self::RULE_MATCH && array_key_exists('match', $rule) && $value !== $this->{$rule['match']}) {
                    $rule['match'] = $this->getLabel($rule['match']);

                    $this->addErrorForRule($attribute, self::RULE_MATCH, $rule);
                }

                if ($ruleName == self::RULE_UNIQUE) {
                    $className = $rule['class'];
                    $uniqueAttr = $rule['attribute'] ?? $attribute;
                    $tableName = $className::tableName();

                    $statement = Application::$app->db->prepare("SELECT * FROM {$tableName} WHERE {$uniqueAttr} = :attr LIMIT 1");
                    $statement->bindValue(':attr', $value);
                    $statement->execute();

                    if ($statement->fetchObject()) {
                        $this->addErrorForRule($attribute, self::RULE_UNIQUE, ['field' => $this->getLabel($attribute)]);
                    }
                }
            }
        }

        return empty($this->errors);
    }

    /*
     * Valida si existe un error de validación.
     */
    public function hasError(string $attribute)
    {
        return array_key_exists($attribute, $this->errors);
    }

    /*
     * Obtiene un mensaje de error de validación.
     */
    public function getFirstError(string $attribute)
    {
        return $this->errors[$attribute][0] ?? null;
    }

    /*
     * Establece las etiquetas de los campos
     * de un formulario desde un modelo.
     */
    public function labels(): array
    {
        return [];
    }

    /*
     * Obtiene la etiqueta de un campo
     * del formulario desde un modelo.
     */
    public function getLabel(string $attribute)
    {
        return $this->labels()[$attribute] ?? $attribute;
    }
}
