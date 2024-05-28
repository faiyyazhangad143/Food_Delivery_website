<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration</title>
</head>
<body style="display: flex; justify-content: center; align-items: center; min-height: 100vh; background-color: #f0f0f0;">
  <div class="container" style="background-color: #fff; padding: 30px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);">
    <h2>Register</h2>
    <?php
      // Check for registration success message (optional)
      if (isset($_GET['registered'])) {
        echo "<p style='color:green'>Registration successful! Please login.</p>";
      }
    ?>
    <form action="register_process.php" method="POST">
      <label for="name" style="display: block; margin-bottom: 5px; color: #333;">Name:</label>
      <input type="text" id="name" name="name" required style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 3px; box-sizing: border-box;"><br><br>
      <label for="email" style="display: block; margin-bottom: 5px; color: #333;">Email:</label>
      <input type="email" id="email" name="email" required style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 3px; box-sizing: border-box;"><br><br>
      <label for="password" style="display: block; margin-bottom: 5px; color: #333;">Password:</label>
      <input type="password" id="password" name="password" required style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 3px; box-sizing: border-box;"><br><br>
      <input type="submit" value="Register" style="background-color: #3498db; color: #fff; padding: 10px 20px; border: none; border-radius: 3px; cursor: pointer;">
    </form>
    <p style="color: #3498db;">Already have an account? <a href="login.php" style="color: #3498db; text-decoration: none;">Login</a></p>
  </div>
</body>
</html>
