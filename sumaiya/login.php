
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
</head>
<body style="display: flex; justify-content: center; align-items: center; min-height: 100vh; background-color: #f0f0f0;">
  <div class="container" style="background-color: #fff; padding: 30px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);">
    <h2 style="text-align: center; margin-bottom: 20px; color: #3498db;">Login</h2>
    <form action="login_process.php" method="POST">
      <label for="email" style="display: block; margin-bottom: 5px; color: #333;">Email:</label>
      <input type="email" id="email" name="email" required style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 3px; box-sizing: border-box;"><br><br>
      <label for="password" style="display: block; margin-bottom: 5px; color: #333;">Password:</label>
      <input type="password" id="password" name="password" required style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 3px; box-sizing: border-box;"><br><br>
      <input type="submit" value="Login" style="background-color: #3498db; color: #fff; padding: 10px 20px; border: none; border-radius: 3px; cursor: pointer;">
    </form>
    <p style="color: #3498db;">Don't have an account? <a href="register.php" style="color: #3498db; text-decoration: none;">Register</a></p>
  </div>
</body>
</html>

