<?php

session_start();

// Database connection details (replace with your actual credentials)
     $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "food-order";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Process login form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $email = trim($_POST["email"]);
  $password = $_POST["password"];

  // Prepare SQL statement (prevents SQL injection)
  $sql = "SELECT * FROM users WHERE email=?";
  $stmt = $conn->prepare($sql);
  $stmt->bind_param("s", $email);
  $stmt->execute();
  $result = $stmt->get_result();

  if ($result->num_rows == 1) {
    $row = $result->fetch_assoc();

    // Verify password using password_verify (assuming hashed passwords)
    if (password_verify($password, $row["password"])) {
      $_SESSION["user_id"] = $row["id"];
      $_SESSION["user_name"] = $row["name"];
      header("Location: index.php");  // Redirect to homepage after successful login
      exit();
    } else {
      echo "Invalid email or password.";
    }
  } else {
    echo "Invalid email or password.";
  }
}

$conn->close();
?>
