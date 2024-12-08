<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chillax - Mental Health Support</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        @charset "UTF-8";

        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg');
            background-size: cover; /* Ensures the image covers the entire page */
            background-position: center center; /* Centers the image both horizontally and vertically */
            background-repeat: no-repeat; /* Prevents the image from repeating */
            background-attachment: fixed; /* Makes the image fixed while scrolling */
            color: #f8f9fa;
            text-align: center;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .navbar {
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 10px 0;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 10;
        }

        .navbar a {
            color: #f8f9fa;
            margin: 0 15px;
            font-size: 1.1em;
            text-decoration: none;
        }

        .navbar a:hover {
            color: #ffcc00;
        }

        .content {
            max-width: 800px;
            padding: 30px;
            background: rgba(0, 0, 0, 0.6); /* Slightly darker for better contrast */
            border-radius: 10px;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.3);
            margin-top: 80px; /* Added margin to avoid overlap with navbar */
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #ffcc00;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.8);
        }

        p {
            font-size: 1.2em;
            color: #e0e0e0;
        }

        .btn {
            margin: 15px 10px;
            font-size: 1.2em;
            background-color: rgba(0, 123, 255, 0.8);
            border: none;
            padding: 12px 25px;
            color: white;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: rgba(0, 123, 255, 1);
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    
    <div class="content container">
        <h1>CHILLAX - It's Fine to Take Help</h1>
        <p>Welcome to the mental health support platform. Feel free to explore resources, connect with others, and seek guidance.</p>
        
    </div>
</body>
</html>
