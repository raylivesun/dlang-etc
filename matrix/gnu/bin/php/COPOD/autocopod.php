<?php
            // Code that will be executed if the form has been submitted:

            if ($submit) {
                // Connect to the database (you may have to adjust
                // the hostname, username or password).

                mysql_connect("localhost", "root", "password");
                mysql_select_db("binary_data");

                $data = mysql_real_escape_string(fread(fopen($form_data, "r"), filesize($form_data)));

                $result = mysql_query("INSERT INTO binary_data (description, bin_data, filename, filesize, filetype) ".
                                    "VALUES ('$form_description', '$data', '$form_data_name', '$form_data_size', '$form_data_type')");

                $id= mysql_insert_id();
                print "<p>This file has the following Database ID: <b>$id</b>";

                mysql_close();
            } else {

                // else show the form to submit new data:
                }
        ?>
