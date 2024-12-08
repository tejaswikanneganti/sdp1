<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>About Us - Mental Health Support</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg'); /* Background image */
            background-size: cover; /* Ensures the image covers the full page */
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh; /* Full height to cover the viewport */
            margin: 0;
            padding: 0;
            color: #fff; /* Text color contrasting the background */
        }
        .container {
            background: rgba(255, 255, 255, 0.85); /* Semi-transparent white background for better readability */
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 40px;
            max-width: 900px;
            margin: 50px auto; /* Center the container */
            color: #333; /* Text color inside the container */
        }
        h1 {
            text-align: center;
            color: #333;
            font-size: 3em;
            font-weight: 700;
            margin-bottom: 20px;
        }
        h3 {
            color: #007bff; /* Blue color for headings */
            font-size: 1.5em;
            font-weight: 600;
            margin-top: 30px;
        }
        p {
            font-size: 1.1em;
            line-height: 1.6;
        }
        ul {
            list-style-type: square;
            margin-left: 20px;
        }
        .chatbot {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 300px;
            height: 400px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            display: none; /* Initially hidden */
        }
        .chat-header {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border-radius: 5px 5px 0 0;
            text-align: center;
            font-weight: 600;
        }
        .chat-body {
            height: 320px;
            overflow-y: auto;
            padding: 10px;
            background-color: #f9f9f9;
        }
        .chat-input {
            display: flex;
            padding: 10px;
            background-color: #f1f1f1;
            border-top: 1px solid #ddd;
        }
        .chat-input input {
            flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .chat-input button {
            padding: 10px;
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            margin-left: 5px;
        }
        .message {
            margin: 5px 0;
        }
        .bot-message {
            color: #007bff;
            font-weight: bold;
        }
        .user-message {
            text-align: right;
            color: #333;
        }
        .chat-icon {
            position: fixed;
            bottom: 20px; /* Fixed position */
            right: 20px;  /* Fixed position */
            width: 60px; /* Adjust the size of the icon */
            height: auto;
            cursor: pointer;
            transition: all 0.5s; /* Smooth transition for movement */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }
        .tooltip {
            position: absolute;
            background-color: #333;
            color: #fff;
            padding: 5px;
            border-radius: 5px;
            display: none; /* Initially hidden */
            white-space: nowrap;
            z-index: 10;
        }
        .section-image {
            width: 100%;
            border-radius: 10px;
            margin-top: 20px;
        }
    </style>
    <script>
        function toggleChatbot() {
            var chatbot = document.getElementById("chatbot");
            chatbot.style.display = chatbot.style.display === "none" ? "block" : "none";
        }

        function sendMessage() {
            var input = document.getElementById("user-input");
            var messageText = input.value;
            if (messageText.trim() === "") return;

            // Display user message
            var chatBody = document.getElementById("chat-body");
            var userMessage = document.createElement("div");
            userMessage.className = "message user-message";
            userMessage.textContent = messageText;
            chatBody.appendChild(userMessage);
            chatBody.scrollTop = chatBody.scrollHeight; // Scroll to bottom

            // Clear input
            input.value = "";

            // Simulate bot response
            setTimeout(function() {
                var botResponse = getBotResponse(messageText);
                var botMessage = document.createElement("div");
                botMessage.className = "message bot-message";
                botMessage.textContent = botResponse;
                chatBody.appendChild(botMessage);
                chatBody.scrollTop = chatBody.scrollHeight; // Scroll to bottom
            }, 1000);
        }

        function getBotResponse(message) {
            const lowerMessage = message.toLowerCase();
            if (lowerMessage.includes("therapy")) {
                return "We offer virtual therapy sessions. Would you like to know more?";
            } else if (lowerMessage.includes("resources")) {
                return "You can find self-help resources on our website. Check our resources section!";
            } else if (lowerMessage.includes("support")) {
                return "Our community forums are a great place to find peer support!";
            } else if (lowerMessage.includes("contact")) {
                return "You can contact us at support@mentalhealth.com for further assistance.";
            } else {
                return "I'm sorry, I didn't understand that. Can you please rephrase?";
            }
        }

        // Show tooltip on hover
        function showTooltip(event) {
            var tooltip = document.getElementById("tooltip");
            tooltip.style.display = "block";
            tooltip.style.left = event.pageX + "px";
            tooltip.style.top = (event.pageY - 30) + "px"; // Position above the cursor
        }

        // Hide tooltip
        function hideTooltip() {
            var tooltip = document.getElementById("tooltip");
            tooltip.style.display = "none";
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>About Us</h1>
        <img class="section-image" src="https://www.example.com/about-us-image.jpg" alt="About Us Image">
        <h3>Our Mission</h3>
        <p>At Mental Health Support, our mission is to provide accessible and reliable mental health resources and support to individuals seeking help.</p>
        
        <h3>Our Vision</h3>
        <p>We envision a world where mental health is prioritized, and individuals have access to the support they need to thrive.</p>

        <h3>What We Offer</h3>
        <ul>
            <li>Virtual therapy sessions with licensed professionals.</li>
            <li>Self-help resources including articles and videos.</li>
            <li>Forums for peer support and discussion.</li>
            <li>Information on various mental health conditions.</li>
        </ul>

        <h3>Join Us</h3>
        <p>We invite you to explore our platform and become part of our community focused on mental well-being.</p>
    </div>

    <!-- Chat icon with tooltip -->
    <img id="chat-icon" src="https://www.example.com/chat-icon.jpg" alt="Chat with us" class="chat-icon" 
         onclick="toggleChatbot()" onmouseover="showTooltip(event)" onmouseout="hideTooltip()">

    <!-- Tooltip -->
    <div id="tooltip" class="tooltip">Hello! Click here to open chat</div>

    <!-- Chatbot UI -->
    <div id="chatbot" class="chatbot">
        <div class="chat-header">Mental Health Bot</div>
        <div class="chat-body" id="chat-body"></div>
        <div class="chat-input">
            <input type="text" id="user-input" placeholder="Ask me anything..." />
            <button onclick="sendMessage()">Send</button>
        </div>
    </div>
</body>
</html>
