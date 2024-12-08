<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Guided Mindfulness & Meditation</title>
    <style>
        /* Background and layout styling */
        body {
            background: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #444;
        }

        .content {
            background-color: rgba(255, 255, 255, 0.9);
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
            color: #2c3e50;
            margin-bottom: 30px;
            font-weight: bold;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.2);
        }

        /* Button styling */
        .exercise-button {
            display: inline-block;
            margin: 20px 0;
            padding: 15px 25px;
            background-color: #27ae60;
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 1.2rem;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            text-align: center;
            text-decoration: none;
        }

        .exercise-button:hover {
            background-color: #229954;
            transform: scale(1.05);
        }

        /* Additional styles for sections */
        .section {
            margin: 30px 0;
        }

        .section h2 {
            font-size: 2.2rem;
            color: #34495e;
            margin-bottom: 15px;
        }

        .section p {
            font-size: 1.2rem;
            line-height: 1.8;
        }

        /* Media content styling */
        .media {
            margin: 20px 0;
            text-align: center;
        }

        video, audio {
            width: 80%;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        /* Streak and Reward styling */
        .streak-container {
            text-align: center;
            margin: 40px 0;
            font-size: 1.3rem;
            color: #e74c3c;
        }

        .streak {
            font-size: 2rem;
            font-weight: bold;
            color: #d35400;
        }

        .reward {
            background-color: #f1c40f;
            padding: 10px 20px;
            border-radius: 20px;
            font-size: 1.2rem;
            color: #2c3e50;
            margin-top: 20px;
            display: inline-block;
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

            video, audio {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="content">
        <div class="header">Guided Mindfulness & Meditation</div>

        <!-- Guided Breathing Section -->
        <div class="section">
            <h2>Guided Breathing Exercise</h2>
            <p>Follow this simple guided breathing exercise to relax and de-stress. Inhale deeply, hold, and exhale slowly. Repeat for 5 minutes.</p>
            <div class="media">
                <audio controls>
                    <source src="https://www.bing.com/videos/riverview/relatedvideo?q=peaciful+mediation+videos&mid=051F5C47C7EFF10F0849051F5C47C7EFF10F0849&FORM=VIRE" type="audio/mpeg">
                    Your browser does not support the audio element.
                </audio>
            </div>
            <a href="#" class="exercise-button">Start Breathing Exercise</a>
        </div>

        <!-- Progressive Muscle Relaxation Section -->
        <div class="section">
            <h2>Progressive Muscle Relaxation</h2>
            <p>Focus on each muscle group, tense and release to experience deep relaxation. Start from your toes and go up to your head.</p>
            <div class="media">
                <video controls>
                    <source src="your-video-file-url.mp4" type="video/mp4">
                    Your browser does not support the video element.
                </video>
            </div>
            <a href="#" class="exercise-button">Start Relaxation Exercise</a>
        </div>

        <!-- Mindful Meditation Section -->
        <div class="section">
            <h2>Mindful Meditation</h2>
            <p>Find a calm space, close your eyes, and listen to this guided meditation. Let go of distractions and focus on your present thoughts.</p>
            <div class="media">
                <audio controls>
                    <source src="your-meditation-audio-url.mp3" type="audio/mpeg">
                    Your browser does not support the audio element.
                </audio>
            </div>
            <a href="#" class="exercise-button">Start Meditation</a>
        </div>

        <!-- Streak and Reward System -->
        <div class="streak-container">
            <p>You have a current meditation streak of <span class="streak">7 days</span>!</p>
            <p>Keep it up to earn more rewards!</p>
            <div class="reward">🎖 You've earned a "Calm Mind" badge!</div>
        </div>

        <div class="footer">
            © 2024 Your Mental Health Platform | Consistency is the key to well-being.
        </div>
    </div>
</body>
</html>
