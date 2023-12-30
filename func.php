<?php

$conn = mysqli_connect("localhost", "root", "", "siakad");

function query($query) {
    global $conn; // Use the global keyword to access the $conn variable
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

?>