<?php

namespace App\Models;

use App\Core\Model;

/*
 * Modelo que representa la tabla
 * de usuarios de contacto.
 */
class ContactModel extends Model
{
    public string $subject = '';

    public string $email = '';

    public string $body = '';

    /*
     * Establece las reglas de validación
     * del formulario de contacto.
     */
    public function rules(): array
    {
        return [
            'subject' => [self::RULE_REQUIRED],
            'email' => [self::RULE_REQUIRED, self::RULE_EMAIL],
            'body' => [self::RULE_REQUIRED],
        ];
    }

    /*
     * Establece las etiquetas de los campos
     * del formulario de contacto.
     */
    public function labels(): array
    {
        return [
            'subject' => 'Asunto',
            'email' => 'Correo electrónico',
            'body' => 'Mensaje',
        ];
    }

    /*
     * Lógica para envíar el mensaje de contacto por email.
     */
    public function send()
    {
        return true;
    }
}
