<%@ page import="com.klef.jfsd.springboot.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Employee e = (Employee) session.getAttribute("employee");
    
    if (e == null) {
        response.sendRedirect("empsessionfail");
        return;
    }

    // Get the current day of the week
    java.util.Calendar calendar = java.util.Calendar.getInstance();
    String[] days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
    String today = days[calendar.get(java.util.Calendar.DAY_OF_WEEK) - 1];

    // Simple mood messages for the day
    String dayMoodMessage = "Hope you are having a wonderful " + today + "! 😊😊😊";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Home</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg');
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #444;
        }

        /* Navigation bar styling */
        nav {
            background-color: rgba(0, 0, 0, 0.7); /* Slightly transparent background */
            padding: 15px;
            position: sticky;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav ul li a:hover {
            background-color: #575757;
        }

        /* Container for welcome message and mood tracker */
        .content {
            text-align: center;
            margin-top: 100px; /* Space for the navbar */
            padding: 20px;
            background: rgba(255, 255, 255, 0.85); /* Slightly transparent background for readability */
            max-width: 600px;
            margin: 100px auto;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        /* Mood Tracker Section */
        .mood-section {
            margin-top: 40px;
        }

        .mood-section h3 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .mood-buttons {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }

        .mood-buttons button {
            padding: 10px 15px;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 3px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s;
        }

        .happy {
            background-color: #4CAF50;
            color: white;
        }

        .neutral {
            background-color: #FFC107;
            color: black;
        }

        .sad {
            background-color: #F44336;
            color: white;
        }

        .mood-buttons button:hover {
            opacity: 0.9;
        }

        .review-section {
            margin-top: 30px;
        }

        .review-section h3 {
            font-size: 22px;
        }

        /* Motivational Message Box */
        .message-box {
            margin-top: 20px;
            padding: 15px;
            background: rgba(0, 150, 200, 0.15);
            border: 1px solid #aaa;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            display: none;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav>
        <%@include file="empnavbar.jsp" %>
    </nav>

    <!-- Main Content -->
    <div class="content">
        <h2>Welcome, <%= e.getName() %>!</h2>
        <p><%= dayMoodMessage %></p>

        <!-- Mood Swing Tracker -->
        <div class="mood-section">
            <h3>How's your mood today?</h3>
            <div class="mood-buttons">
                <button class="happy" onclick="showMessage('happy')">😊 Happy</button>
                <button class="neutral" onclick="showMessage('neutral')">😐 Neutral</button>
                <button class="sad" onclick="showMessage('sad')">😞 Sad</button>
            </div>
        </div>

        <!-- Motivational Message Box -->
        <div id="message-box" class="message-box"></div>

        <!-- Monthly Review Section -->
        <div class="review-section">
            <h3>Monthly Mood Review</h3>
            <p>Check how your month has been so far by reviewing your daily moods. Keep track of your emotional journey!</p>
            <p><a href="monthlyreview">View Monthly Mood Summary</a></p>
        </div>
    </div>

    <script>
        function showMessage(mood) {
            var messageBox = document.getElementById('message-box');
            var message = '';

            // Display a motivational message based on the selected mood
            if (mood === 'happy') {
                message = 'Keep spreading the positivity! Stay motivated and keep up the great work! 🌟';
            } else if (mood === 'neutral') {
                message = 'Remember, every day is a new chance to find joy. Keep going! 👍';
            } else if (mood === 'sad') {
                message = 'It\'s okay to have down days. Stay strong, things will get better! 💪';
            }

            messageBox.innerText = message;
            messageBox.style.display = 'block';
        }
    </script>
</body>
</html>
