<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .signup-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
        }
        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .signup-btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .signup-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>Admin Signup</h2>
        <form action="adminlogin.jsp" method="post">
            <div class="form-group">
                <label for="admin-name">Admin Name:</label>
                <input type="text" id="admin-name" name="adminName" required>
            </div>
            <div class="form-group">
                <label for="admin-email">Email:</label>
                <input type="email" id="admin-email" name="adminEmail" required>
            </div>
            <div class="form-group">
                <label for="admin-password">Password:</label>
                <input type="password" id="admin-password" name="adminPassword" required>
            </div>
            <button type="submit" class="signup-btn">Signup</button>
        </form>
    </div>
</body>
</html>
