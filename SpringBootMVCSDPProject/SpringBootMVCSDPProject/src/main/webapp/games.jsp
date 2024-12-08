<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mental Health Games and Quiz</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            color: #fff;
        }
        .container {
            max-width: 1000px;
            margin: 30px auto;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }
        .game {
            margin-bottom: 40px;
        }
        .game h2 {
            text-align: center;
            color: #333;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 18px;
            text-transform: uppercase;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            margin-top: 20px;
            text-align: center;
            transition: background 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .affirmation {
            font-size: 18px;
            margin: 20px 0;
        }
        .completed {
            font-size: 20px;
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
            color: #28a745;
        }
        .question {
            font-size: 18px;
            margin: 20px 0;
        }
        .result {
            font-size: 20px;
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
    <script>
        // Gratitude Journey Game
        let currentGratitude = 0;
        const gratitudes = [
            "I am grateful for my health.",
            "I am grateful for my family and friends.",
            "I am grateful for my opportunities.",
            "I am grateful for the beautiful nature around me.",
            "I am grateful for my learning experiences."
        ];

        function loadGratitude() {
            const gratitudeContainer = document.getElementById("gratitude");
            gratitudeContainer.innerText = gratitudes[currentGratitude];
        }

        function nextGratitude() {
            currentGratitude++;
            if (currentGratitude < gratitudes.length) {
                loadGratitude();
            } else {
                showGratitudeCompletionMessage();
            }
        }

        function showGratitudeCompletionMessage() {
            const gratitudeContainer = document.getElementById("gratitude");
            gratitudeContainer.innerHTML = "";
            const message = document.createElement("div");
            message.classList.add("completed");
            message.innerText = "Well done! Keep the attitude of gratitude alive!";
            gratitudeContainer.appendChild(message);
        }

        // Positive Affirmation Challenge
        let currentAffirmation = 0;
        const affirmations = [
            "I am worthy of love and respect.",
            "I am confident and capable.",
            "I am proud of the progress I’ve made.",
            "I am deserving of happiness and success.",
            "I am in control of my thoughts and emotions."
        ];

        function loadAffirmation() {
            const affirmationContainer = document.getElementById("affirmation");
            affirmationContainer.innerText = affirmations[currentAffirmation];
        }

        function nextAffirmation() {
            currentAffirmation++;
            if (currentAffirmation < affirmations.length) {
                loadAffirmation();
            } else {
                showAffirmationCompletionMessage();
            }
        }

        function showAffirmationCompletionMessage() {
            const affirmationContainer = document.getElementById("affirmation");
            affirmationContainer.innerHTML = "";
            const message = document.createElement("div");
            message.classList.add("completed");
            message.innerText = "Well done! You've completed the Positive Affirmation Challenge!";
            affirmationContainer.appendChild(message);
        }

        // Mindfulness Breathing Exercise
        let breathingStep = 0;
        const breathingSteps = [
            { instruction: "Inhale deeply for 4 seconds.", time: 4000 },
            { instruction: "Hold your breath for 7 seconds.", time: 7000 },
            { instruction: "Exhale slowly for 8 seconds.", time: 8000 }
        ];

        function startBreathingExercise() {
            const breathingContainer = document.getElementById("breathing");
            breathingContainer.innerText = breathingSteps[breathingStep].instruction;
            setTimeout(() => {
                breathingStep++;
                if (breathingStep < breathingSteps.length) {
                    startBreathingExercise();
                } else {
                    breathingContainer.innerText = "Breathing Exercise Completed! You are relaxed.";
                    breathingStep = 0;
                }
            }, breathingSteps[breathingStep].time);
        }

        // MCQ Quiz
        let score = 0;
        let currentQuestion = 0;
        const questions = [
            {
                question: "Which of the following is a stress-relieving activity?",
                options: ["Watching TV", "Yoga", "Shopping", "Gossiping"],
                answer: 1 // Yoga
            },
            {
                question: "What is mindfulness?",
                options: ["Being aware of your thoughts", "Avoiding emotions", "Focusing on the past", "Ignoring the present moment"],
                answer: 0 // Being aware of your thoughts
            },
            {
                question: "Which food is known for improving brain health?",
                options: ["Chocolate", "Fish", "Chips", "Cakes"],
                answer: 1 // Fish
            }
        ];

        function loadQuizQuestion() {
            const questionContainer = document.getElementById("quiz-question");
            const optionsContainer = document.getElementById("quiz-options");
            const current = questions[currentQuestion];

            questionContainer.innerText = current.question;
            optionsContainer.innerHTML = "";
            current.options.forEach((option, index) => {
                const button = document.createElement("button");
                button.classList.add("btn");
                button.innerText = option;
                button.onclick = () => checkQuizAnswer(index);
                optionsContainer.appendChild(button);
            });
        }

        function checkQuizAnswer(index) {
            if (index === questions[currentQuestion].answer) {
                score++;
            }
            currentQuestion++;
            if (currentQuestion < questions.length) {
                loadQuizQuestion();
            } else {
                showQuizResult();
            }
        }

        function showQuizResult() {
            const resultContainer = document.getElementById("quiz-result");
            resultContainer.innerText = `You scored ${score} out of ${questions.length}!`;
        }

        window.onload = () => {
            loadGratitude();
            loadAffirmation();
            loadQuizQuestion();
        };
    </script>
</head>
<body>

<div class="container">
    <h1>Mental Health Games and Quiz</h1>

    <!-- Gratitude Journey Game -->
    <div class="game">
        <h2>Gratitude Journey</h2>
        <p id="gratitude" class="affirmation"></p>
        <button class="btn" onclick="nextGratitude()">Next Gratitude</button>
    </div>

    <!-- Positive Affirmation Challenge -->
    <div class="game">
        <h2>Positive Affirmation Challenge</h2>
        <p id="affirmation" class="affirmation"></p>
        <button class="btn" onclick="nextAffirmation()">Next Affirmation</button>
    </div>

    <!-- Mindfulness Breathing Exercise -->
    <div class="game">
        <h2>Mindfulness Breathing Exercise</h2>
        <p id="breathing" class="affirmation"></p>
        <button class="btn" onclick="startBreathingExercise()">Start Breathing Exercise</button>
    </div>

    <!-- MCQ Quiz -->
    <div class="game">
        <h2>Mental Health Quiz</h2>
        <div id="quiz-question" class="question"></div>
        <div id="quiz-options"></div>
        <div id="quiz-result" class="result"></div>
    </div>
</div>

</body>
</html>
