<?php

namespace App\Models;

use App\Core\DB\DBModel;

/*
 * Modelo que representa la tabla de usuarios.
 */
class UserModel extends DBModel
{
    const STATUS_INACTIVE = 0;

    const STATUS_ACTIVE = 1;

    const STATUS_DELETED = 2;

    public string $firstname = '';

    public string $lastname = '';

    public string $email = '';

    public int $status = self::STATUS_INACTIVE;

    public string $password = '';

    public string $pass_confirm = '';

    public static function tableName(): string
    {
        return 'users';
    }

    public static function primaryKey(): string
    {
        return 'id';
    }

    public function attributes(): array
    {
        return [
            'firstname',
            'lastname',
            'email',
            'password',
            'status',
        ];
    }

    /*
     * Establece las reglas de validación del
     * formulario de registro de usuarios.
     */
    public function rules(): array
    {
        return [
            'firstname' => [self::RULE_REQUIRED],
            'lastname' => [self::RULE_REQUIRED],
            'email' => [self::RULE_REQUIRED, self::RULE_EMAIL, [
                self::RULE_UNIQUE, 'class' => self::class,
            ]],
            'password' => [self::RULE_REQUIRED, [self::RULE_MIN, 'min' => 8], [self::RULE_MAX, 'max' => 32]],
            'pass_confirm' => [self::RULE_REQUIRED, [self::RULE_MATCH, 'match' => 'password']],
        ];
    }

    /*
     * Registra un nuevo usuario.
     */
    public function save()
    {
        $this->status = self::STATUS_INACTIVE;
        $this->password = password_hash($this->password, PASSWORD_DEFAULT);

        return parent::save();
    }

    /*
     * Establece las etiquetas de los campos del
     * formulario de registro de usuarios.
     */
    public function labels(): array
    {
        return [
            'firstname' => 'Nombre',
            'lastname' => 'Apellidos',
            'email' => 'Correo electrónico',
            'password' => 'Contraseña',
            'pass_confirm' => 'Confirmar contraseña',
        ];
    }
}
