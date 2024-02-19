<?php

namespace App\Models;

use App\Core\Application;
use App\Core\Model;

/*
 * Modelo que representa la tabla
 * de usuarios para la autenticación.
 */
class AuthModel extends Model
{
    public string $email = '';

    public string $password = '';

    /*
     * Establece las reglas de validación
     * del formulario de inicio de sesión.
     */
    public function rules(): array
    {
        return [
            'email' => [self::RULE_REQUIRED, self::RULE_EMAIL],
            'password' => [self::RULE_REQUIRED, [self::RULE_MIN, 'min' => 8], [self::RULE_MAX, 'max' => 32]],
        ];
    }

    /*
     * Establece las etiquetas de los campos
     * del formulario de inicio de sesión.
     */
    public function labels(): array
    {
        return [
            'email' => 'Correo electrónico',
            'password' => 'Contraseña',
        ];
    }

    /*
     * Comprueba e inicia la sesión de un usuario.
     */
    public function login()
    {
        $userAuth = UserModel::findOne(['email' => $this->email]);

        if (empty($userAuth)) {
            $this->addError('email', 'No existe un usuario con esa dirección de correo electrónico.');

            return false;
        }

        // Comprueba la contraseña del usuario.
        if (! password_verify($this->password, $userAuth->password)) {
            $this->addError('password', 'La constraseña del usuario es incorrecta.');

            return false;
        }

        return Application::$app->login($userAuth);
    }
}
