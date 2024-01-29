<?php

function getAllClients()
{
    global $db_conn;

    $query = 'SELECT * FROM clients';
    $result = pg_query($db_conn, $query);

    return $result;
}
