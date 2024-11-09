<?php

namespace App\Core;

/*
 * Gestiona las variables de
 * sesión de la aplicación.
 */
class Session
{
    protected const GLOBAL_KEY = 'global_data';

    protected const FLASH_KEY = 'flash_data';

    public function __construct()
    {
        session_start();

        $_SESSION[self::GLOBAL_KEY] = $_SESSION[self::GLOBAL_KEY] ?? [];
        $_SESSION[self::FLASH_KEY] = $_SESSION[self::FLASH_KEY] ?? [];

        /*
         * Establece la bandera de eliminación de todas
         * las variables de sesión de una sola petición.
         */
        foreach ($_SESSION[self::FLASH_KEY] as $key => $flashData) {
            $_SESSION[self::FLASH_KEY][$key]['remove'] = true;
        }
    }

    /*
     * Establece una variable de sesión.
     */
    public function set(string $key, $data)
    {
        $_SESSION[self::GLOBAL_KEY][$key] = $data;
    }

    /*
     * Obtiene una variable de sesión.
     */
    public function get(string $key)
    {
        return $_SESSION[self::GLOBAL_KEY][$key] ?? null;
    }

    /*
     * Elimina una variable de sesión.
     */
    public function remove(string $key)
    {
        unset($_SESSION[self::GLOBAL_KEY][$key]);
    }

    /*
     * Establece una variable de sesión de una sola petición.
     */
    public function setFlash(string $key, $data)
    {
        $_SESSION[self::FLASH_KEY][$key] = [
            'remove' => false,
            'value' => $data,
        ];
    }

    /*
     * Obtiene una variable de sesión de una sola petición.
     */
    public function getFlash(string $key)
    {
        return $_SESSION[self::FLASH_KEY][$key]['value'] ?? null;
    }

    public function __destruct()
    {
        /*
         * Elimina todas las variables de sesión de una
         * sola petición al finalizar la aplicación.
         */
        foreach ($_SESSION[self::FLASH_KEY] ?? [] as $key => $flashData) {
            if ($flashData['remove']) {
                unset($_SESSION[self::FLASH_KEY][$key]);
            }
        }
    }
}
