<?php

namespace App\Core\DB;

use App\Core\Application;
use PDO;

/*
 * Gestiona las migraciones de la aplicación.
 */
class Database
{
    public PDO $pdo;

    public function __construct(array $config)
    {
        $dsn = $config['dsn'] ?? '';
        $username = $config['username'] ?? '';
        $password = $config['password'] ?? '';

        $this->pdo = new PDO($dsn, $username, $password);
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    /*
     * Ejecuta todas las migraciones.
     */
    public function applyMigrations()
    {
        $this->createMigrationsTable();

        $appliedMigrations = $this->getAppliedMigrations();

        $files = scandir(Application::$ROOT_DIR.'/migrations');

        $toApplyMigrations = array_diff($files, $appliedMigrations);

        $newMigrations = [];

        foreach ($toApplyMigrations as $migration) {
            if ($migration === '.' || $migration === '..') {
                continue;
            }

            require_once Application::$ROOT_DIR.'/migrations/'.$migration;

            $className = pathinfo($migration, PATHINFO_FILENAME);

            $instance = new $className();

            $this->log("Running migration {$migration}");

            $instance->up();

            $this->log("Applied migration {$migration}");

            $newMigrations[] = $migration;
        }

        if (! empty($newMigrations)) {
            $this->saveMigrations($newMigrations);
        } else {
            $this->log('All migrations are applied');
        }
    }

    /*
     * Crea la tabla de seguimiento de migraciones.
     */
    public function createMigrationsTable()
    {
        $this->pdo->exec('
        	CREATE TABLE IF NOT EXISTS migrations (
            	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
                migration VARCHAR(255) NOT NULL,
                created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
                CONSTRAINT migrations_id_primary PRIMARY KEY(id)
            );
        ');
    }

    /*
     * Obtiene todas las migraciones ejecutadas.
     */
    public function getAppliedMigrations()
    {
        $statement = $this->prepare('SELECT migration FROM migrations');
        $statement->execute();

        return $statement->fetchAll(PDO::FETCH_COLUMN);
    }

    /*
     * Guarda la información de las migraciones ejecutadas.
     */
    public function saveMigrations(array $migrations)
    {
        $values = array_map(fn ($migration) => "('{$migration}')", $migrations);

        $statement = $this->prepare('INSERT INTO migrations(migration) VALUES'.implode(',', $values));

        $statement->execute();
    }

    /*
     * Imprime los registros (logs) de las migraciones.
     */
    public function log(string $message)
    {
        $datetime = date('Y-m-d H:i:s');

        echo "[{$datetime}] - {$message}".PHP_EOL;
    }

    /*
     * Prepara una sentencia SQL.
     */
    public function prepare(string $query)
    {
        return $this->pdo->prepare($query);
    }
}
