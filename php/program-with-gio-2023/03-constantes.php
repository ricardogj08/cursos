<?php

define('STATUS_PAID', 'paid');

echo STATUS_PAID . '<br>';

echo defined('STATUS_PAID') . '<br>';
echo defined('STATUS_VOID') . '<br>';

const PRODUCT_STATUS = true;
echo PRODUCT_STATUS . '<br>';

// Constantes predefinidias.
echo PHP_VERSION . '<br>';

// Constantes mágicas.
echo __LINE__ . '<br>';
echo __FILE__ . '<br>';
