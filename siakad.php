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

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <h1>letsgo</h1>
</body>

</html>