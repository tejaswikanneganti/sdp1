<!DOCTYPE html>
<html lang="en">
<head>
    <title>Employee Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg');
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            min-height: 100vh;
            color: #444;
        }

        /* Navigation Bar Styles */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 15px 0;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 10;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-weight: bold;
            margin: 0 10px;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #333;
            border-radius: 5px;
        }

        h3 {
            text-align: center;
            color: #333;
            margin-top: 100px; /* Space for fixed navbar */
        }

        .form-container {
            background: rgba(255, 255, 255, 0.85);
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            width: 350px;
            margin: 20px auto;
            margin-top: 120px; /* Space for fixed navbar */
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], 
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .button-container {
            text-align: center;
            margin-top: 15px;
        }

        input[type="submit"], 
        input[type="reset"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
            margin: 5px;
        }

        input[type="submit"]:hover, 
        input[type="reset"]:hover {
            background-color: #45a049;
        }

        /* Rocket Animation */
        #rocket {
            position: fixed;
            bottom: -200px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 200px;
            background-image: url('https://www.shutterstock.com/shutterstock/videos/1099072641/thumb/1.jpg?ip=x480');
            background-size: cover;
            background-position: center;
            transition: bottom 5s ease, transform 5s ease; /* Slow down the movement */
            visibility: hidden; /* Hidden initially */
        }
    </style>
    <script>
        // Function to show rocket animation
        function showRocket() {
            var rocket = document.getElementById("rocket");
            rocket.style.visibility = 'visible'; // Make the rocket visible
            setTimeout(function() {
                rocket.style.bottom = "10%"; // Move the rocket up slowly
                rocket.style.transform = "scale(1.0)"; // Make it pop out
            }, 100); // Delay before the rocket starts moving
        }
    </script>
</head>
<body>
    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="home.jsp">Home</a>
        <a href="signin.jsp">SignIn</a>
        <a href="login.jsp">Login</a>
        <a href="adminlogin.jsp">Admin Login</a>
    </div>

    <!-- Employee Login Form -->
    <div class="form-container">
        <h3><u>Employee Login</u></h3>
        <form method="post" action="checkemplogin" onsubmit="showRocket()">
            <table>
                <tr>
                    <td><label for="eemail">Enter Email</label></td>
                    <td><input type="text" id="eemail" name="eemail" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <!-- Rocket Image -->
    <div id="rocket"></div>
</body>
</html>
