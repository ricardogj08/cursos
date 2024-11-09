<?php

namespace App\Core\DB;

use App\Core\Application;
use App\Core\Model;

/*
 * Modelo base para todos los
 * modelos de la aplicación.
 */
abstract class DBModel extends Model
{
    abstract public static function tableName(): string;

    abstract public static function primaryKey(): string;

    abstract public function attributes(): array;

    /*
     * Almacena el registro de un
     * modelo en la base de datos.
     */
    public function save()
    {
        $tableName = $this->tableName();
        $attributes = $this->attributes();

        $columns = implode(',', $attributes);

        $values = array_map(fn ($attribute) => ':'.$attribute, $attributes);
        $values = implode(',', $values);

        $statement = self::prepare("INSERT INTO {$tableName}($columns) VALUES($values)");

        foreach ($attributes as $attribute) {
            $statement->bindValue(':'.$attribute, $this->{$attribute});
        }

        return $statement->execute();
    }

    /*
     * Obtiene el registro de un modelo.
     */
    public static function findOne(array $where)
    {
        $tableName = static::tableName();

        $attributes = array_keys($where);

        $query = implode('AND ', array_map(fn ($attr) => "{$attr} = :{$attr}", $attributes));

        $statement = self::prepare("SELECT * FROM {$tableName} WHERE {$query} LIMIT 1");

        foreach ($where as $attribute => $value) {
            $statement->bindValue(':'.$attribute, $value);
        }

        $statement->execute();

        return $statement->fetchObject();
    }

    /*
     * Prepara una sentencia SQL.
     */
    public static function prepare(string $query)
    {
        return Application::$app->db->pdo->prepare($query);
    }
}
