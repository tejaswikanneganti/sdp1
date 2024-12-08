<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Self-Assessment Tools</title>
    <style>
        /* General layout and background */
        body {
            background: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #2c3e50;
        }

        .content {
            background-color: rgba(255, 255, 255, 0.95);
            width: 80%;
            margin: 50px auto;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
        }

        /* Header styling */
        .header {
            text-align: center;
            font-size: 3rem;
            color: #16a085;
            margin-bottom: 30px;
            font-weight: bold;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.2);
        }

        /* Quiz container */
        .quiz-container {
            margin: 20px 0;
        }

        .quiz-question {
            font-size: 1.5rem;
            margin-bottom: 15px;
            color: #34495e;
        }

        .quiz-options {
            margin-bottom: 30px;
        }

        .quiz-options label {
            display: block;
            margin: 10px 0;
            font-size: 1.2rem;
        }

        .quiz-options input[type="radio"] {
            margin-right: 10px;
        }

        /* Submit button styling */
        .submit-button {
            background-color: #1abc9c;
            color: white;
            border: none;
            padding: 15px 30px;
            font-size: 1.2rem;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .submit-button:hover {
            background-color: #16a085;
            transform: scale(1.05);
        }

        /* Result section */
        .result-container {
            margin: 30px 0;
            padding: 20px;
            background-color: #ecf0f1;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .result-message {
            font-size: 1.3rem;
            color: #e67e22;
            margin-bottom: 15px;
        }

        .suggestions {
            font-size: 1.2rem;
            line-height: 1.6;
            color: #34495e;
        }

        /* Emoticon image */
        .emoticon {
            width: 100px;
            height: 100px;
            margin: 20px auto;
        }

        /* Footer styling */
        .footer {
            text-align: center;
            margin-top: 50px;
            font-size: 1rem;
            color: #95a5a6;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .content {
                width: 95%;
            }

            .header {
                font-size: 2.5rem;
            }
        }
    </style>
    <script>
        // JavaScript to handle quiz scoring and results
        function calculateResults() {
            var score = 0;

            // Calculate score based on answers
            if (document.getElementById('q1-a3').checked) score += 1;
            if (document.getElementById('q2-a2').checked) score += 1;
            if (document.getElementById('q3-a1').checked) score += 1;

            // Display results
            var resultContainer = document.getElementById('result-container');
            var resultMessage = document.getElementById('result-message');
            var suggestions = document.getElementById('suggestions');
            var emoticon = document.getElementById('emoticon');

            // Determine emotional response based on score
            if (score <= 1) {
                resultMessage.innerHTML = "You seem to be managing well!";
                suggestions.innerHTML = "Keep practicing mindfulness and maintain a balanced lifestyle.";
                emoticon.src = "https://cdn-icons-png.flaticon.com/512/189/189671.png"; // Happy face image URL
            } else if (score === 2) {
                resultMessage.innerHTML = "You might be experiencing moderate stress or anxiety.";
                suggestions.innerHTML = "Consider using relaxation techniques or speaking with a counselor.";
                emoticon.src = "https://cdn-icons-png.flaticon.com/512/189/189668.png"; // Neutral face image URL
            } else {
                resultMessage.innerHTML = "You may be facing high levels of stress or anxiety.";
                suggestions.innerHTML = "It's important to seek guidance. Consider professional support and explore relaxation exercises.";
                emoticon.src = "https://cdn-icons-png.flaticon.com/512/189/189662.png"; // Sad face image URL
            }

            resultContainer.style.display = 'block';
        }
    </script>
</head>
<body>
    <div class="content">
        <div class="header">Self-Assessment Tools</div>

        <!-- Quiz Section -->
        <div class="quiz-container">
            <form id="quizForm" onsubmit="event.preventDefault(); calculateResults();">
                <div class="quiz-question">
                    1. How often do you feel overwhelmed by daily tasks?
                </div>
                <div class="quiz-options">
                    <label><input type="radio" name="q1" id="q1-a1" value="0"> Rarely</label>
                    <label><input type="radio" name="q1" id="q1-a2" value="1"> Sometimes</label>
                    <label><input type="radio" name="q1" id="q1-a3" value="2"> Frequently</label>
                </div>

                <div class="quiz-question">
                    2. Do you often find it hard to relax after a stressful day?
                </div>
                <div class="quiz-options">
                    <label><input type="radio" name="q2" id="q2-a1" value="0"> No, I can relax easily</label>
                    <label><input type="radio" name="q2" id="q2-a2" value="1"> Sometimes, it's difficult</label>
                    <label><input type="radio" name="q2" id="q2-a3" value="2"> Yes, I struggle to relax</label>
                </div>

                <div class="quiz-question">
                    3. How often do you worry about future events or situations?
                </div>
                <div class="quiz-options">
                    <label><input type="radio" name="q3" id="q3-a1" value="0"> Rarely</label>
                    <label><input type="radio" name="q3" id="q3-a2" value="1"> Sometimes</label>
                    <label><input type="radio" name="q3" id="q3-a3" value="2"> Often</label>
                </div>

                <input type="submit" class="submit-button" value="Submit Quiz">
            </form>
        </div>

        <!-- Result Section -->
        <div id="result-container" class="result-container" style="display:none;">
            <img id="emoticon" class="emoticon" src="" alt="Emotional Feedback">
            <div id="result-message" class="result-message"></div>
            <div id="suggestions" class="suggestions"></div>
        </div>

        <!-- Footer Section -->
        <div class="footer">
            © 2024 Your Mental Health Platform | Take care of your well-being.
        </div>
    </div>
</body>
</html>
