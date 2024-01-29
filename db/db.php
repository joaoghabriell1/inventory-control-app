<?php

define("HOST", 'localhost');
define("DB_NAME", 'php_app');
define("DB_USER", 'php_user');
define("DB_USER_PASSWORD", 'php_user');

$db_conn = pg_connect("host= " . HOST . " dbname=" . DB_NAME .  " user = " . DB_USER . " password=" . DB_USER_PASSWORD);

if (!$db_conn) {
    die("Can't connect to database" . pg_last_error());
}
