<?php

// Un comentario de línea.

# Otro comentario de línea.

/*
Un comentario
de múltiples
líneas.
*/

echo 'Hola Mundo!';
echo('<br>');
print 'Hola Mundo!';
print('<br>');
echo 'Hola', ' ', 'Mundo!';
echo '<br>';

// Definición de variables.
$x = 5;
$y = $x;

$x = 3;

echo $x;
echo '<br>';
echo $y;
echo '<br>';

$firstname = 'Ricardo';

echo $firstname;
echo '<br>';
echo "Hola {$firstname}!";
echo '<br>';
echo 'Hola ' . $firstname . '!';
