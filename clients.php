<?php include 'includes/header.php' ?>

<div>
    <table class="table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Cellphone</th>
                <th>Email</th>
                <th>CPF / CNPJ</th>
            </tr>
        </thead>
        <tbody>

            <?php

            $data = getAllClients();

            if (pg_num_rows($data) === 0) {
                echo '<tr><td colspan=4> You have no clients on your database. </td></tr>';
            };

            while ($user = pg_fetch_assoc($data)) {

                $user_name = $user['name'];

                echo $user_name;
            }
            ?>
        </tbody>
    </table>
    <?php include 'includes/footer.php' ?>