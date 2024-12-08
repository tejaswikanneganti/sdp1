<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Peer Support Forum</title>
    <style>
        /* General body and layout styling */
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
            color: #2980b9;
            margin-bottom: 30px;
            font-weight: bold;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.2);
        }

        /* Post creation form styling */
        .post-form {
            margin-bottom: 40px;
        }

        .post-form textarea {
            width: 100%;
            height: 100px;
            border-radius: 10px;
            border: 1px solid #ccc;
            padding: 15px;
            font-size: 1.1rem;
            margin-bottom: 10px;
        }

        .post-form input[type="submit"] {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1.2rem;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .post-form input[type="submit"]:hover {
            background-color: #2980b9;
        }

        .checkbox {
            margin: 10px 0;
            display: flex;
            align-items: center;
        }

        .checkbox input {
            margin-right: 10px;
        }

        /* Post display styling */
        .post {
            background-color: #ecf0f1;
            padding: 20px;
            border-radius: 15px;
            margin-bottom: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .post .anonymous {
            font-style: italic;
            color: #7f8c8d;
        }

        .post .content {
            margin: 10px 0;
            font-size: 1.1rem;
        }

        .moderation-tools {
            text-align: right;
            margin-top: 10px;
        }

        .moderation-tools button {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 5px 10px;
            font-size: 0.9rem;
            border-radius: 10px;
            cursor: pointer;
            margin-left: 5px;
        }

        .moderation-tools button:hover {
            background-color: #c0392b;
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

            .post-form textarea {
                height: 80px;
            }
        }
    </style>
</head>
<body>
    <div class="content">
        <div class="header">Peer Support Forum</div>

        <!-- Post Form Section -->
        <div class="post-form">
            <form action="PostServlet" method="post">
                <textarea name="postContent" placeholder="Share your thoughts, experiences, or ask for advice..."></textarea>
                <div class="checkbox">
                    <input type="checkbox" name="anonymous" value="true" id="anonymous">
                    <label for="anonymous">Post Anonymously</label>
                </div>
                <input type="submit" value="Post">
            </form>
        </div>

        <!-- Example of Posts -->
        <div class="post">
            <p class="anonymous">Anonymous User</p>
            <p class="content">I've been feeling overwhelmed with exams lately. Any advice on managing stress?</p>
            <div class="moderation-tools">
                <button onclick="alert('This post has been flagged for review.')">Flag</button>
                <button onclick="alert('This post has been deleted.')">Delete</button>
            </div>
        </div>

        <div class="post">
            <p class="content">It's important to take regular breaks and stay connected with friends. A good night's sleep can also make a difference!</p>
            <div class="moderation-tools">
                <button onclick="alert('This post has been flagged for review.')">Flag</button>
                <button onclick="alert('This post has been deleted.')">Delete</button>
            </div>
        </div>

        <div class="post">
            <p class="anonymous">Anonymous User</p>
            <p class="content">I've found that doing breathing exercises really helps when anxiety kicks in. Hang in there!</p>
            <div class="moderation-tools">
                <button onclick="alert('This post has been flagged for review.')">Flag</button>
                <button onclick="alert('This post has been deleted.')">Delete</button>
            </div>
        </div>

        <!-- Footer Section -->
        <div class="footer">
            © 2024 Your Mental Health Platform | A safe and supportive space for all.
        </div>
    </div>
</body>
</html>
