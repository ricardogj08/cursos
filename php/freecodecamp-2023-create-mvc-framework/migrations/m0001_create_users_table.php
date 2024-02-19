<?php

use App\Core\Application;

/*
 * Migración que crea la tabla de usuarios.
 */
class m0001_create_users_table
{
    public function up()
    {
        $db = Application::$app->db;

        $query = 'CREATE TABLE IF NOT EXISTS users (
        	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
            firstname VARCHAR(255) NOT NULL,
            lastname VARCHAR(255) NOT NULL,
            email VARCHAR(255) NOT NULL,
            password VARCHAR(255) NOT NULL,
            status TINYINT UNSIGNED NOT NULL,
            created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
            CONSTRAINT users_id_primary PRIMARY KEY(id)
        );';

        $db->pdo->exec($query);
    }

    public function down()
    {
        $db = Application::$app->db;

        $query = 'DROP TABLE IF EXISTS users';

        $db->pdo->exec($query);
    }
}
