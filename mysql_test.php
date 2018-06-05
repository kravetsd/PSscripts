<?php
$servername = "webapp70533.database.windows.net";
$username = "*******";
$password = "*******";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed for this app : " . $conn->connect_error);
} 
echo "Connected successfully";
?>
