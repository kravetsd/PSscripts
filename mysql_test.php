<?php
$servername = "webapp70533";
$username = "Dima";
$password = "KDYkrg@7212";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed for this app : " . $conn->connect_error);
} 
echo "Connected successfully";
?>
