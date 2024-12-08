<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Counselor Support</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
         body {
        font-family: 'Roboto', sans-serif;
        background-image: url('https://www.example.com/new-background-image.jpg'); /* Replace with the desired image URL */
        background-size: cover; /* Ensures the image covers the entire viewport */
        background-position: center; /* Centers the image */
        background-repeat: no-repeat; /* Prevents the image from repeating */
        height: 100vh; /* Full viewport height */
        color: #fff; /* White text color */
        margin: 0; /* No margin around the page */
        padding: 0; /* No padding around the page */
    }
        .overlay {
            background: rgba(0, 0, 0, 0.6);
            height: 100%;
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
        }
        .container {
            position: relative;
            z-index: 2;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 30px;
            max-width: 600px;
            margin: 100px auto;
            color: #333;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        p {
            font-size: 18px;
            line-height: 1.6;
            text-align: center;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 18px;
            text-transform: uppercase;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            margin-top: 20px;
            text-align: center;
            transition: background 0.3s ease;
        }
        .btn:hover {
            background-color: #218838;
        }
        .counselor-card {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .counselor-card img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-right: 20px;
        }
        .counselor-card h3 {
            margin: 0;
            font-size: 20px;
            color: #333;
        }
        .counselor-card p {
            margin: 5px 0 0;
            font-size: 14px;
            color: #666;
        }
        .like-btn {
            background-color: #f39c12;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            transition: background-color 0.3s;
        }
        .like-btn:hover {
            background-color: #e67e22;
        }
        .counselor-details {
            display: none;
            margin-top: 20px;
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
    </style>
    <!-- Add Bootstrap Modal -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <h1>Talk to a Counselor</h1>
        <p>Our counselors are here to help you through any challenges you may be facing. Whether it's stress, anxiety, or anything else, don't hesitate to reach out.</p>

        <div class="counselor-card">
            <img src="https://img.freepik.com/premium-photo/beautiful-smiling-female-doctor-stand-office_151013-12509.jpg?w=2000" alt="Dr. Sarah Thompson">
            <div>
                <h3>Dr. Sarah Thompson</h3>
                <p>Specialist in Student Mental Health</p>
                <button class="like-btn" onclick="toggleDetails('sarah-details')">Like & View Details</button>
            </div>
        </div>

        <div id="sarah-details" class="counselor-details">
            <h4>Available Time:</h4>
            <p id="sarah-availability">Monday - Friday: 9:00 AM - 5:00 PM</p>
            <h4>Expertise:</h4>
            <ul>
                <li>Student Mental Health</li>
                <li>Anxiety & Stress Management</li>
                <li>Work-Life Balance</li>
            </ul>
            <h4>Experience:</h4>
            <p>Dr. Thompson has over 10 years of experience working with students and helping them manage mental health issues related to academic pressures, stress, and life challenges.</p>
        </div>

        <div class="counselor-card">
            <img src="https://img.freepik.com/premium-photo/man-with-stethoscope-around-his-neck-stands-front-monitor_1253888-288.jpg" alt="Dr. John Smith">
            <div>
                <h3>Dr. John Smith</h3>
                <p>Psychologist, Stress and Anxiety Expert</p>
                <button class="like-btn" onclick="toggleDetails('john-details')">Like & View Details</button>
            </div>
        </div>

        <div id="john-details" class="counselor-details">
            <h4>Available Time:</h4>
            <p id="john-availability">Monday - Wednesday: 10:00 AM - 4:00 PM</p>
            <h4>Expertise:</h4>
            <ul>
                <li>Stress Management</li>
                <li>Anxiety Disorders</li>
                <li>Personal Development</li>
            </ul>
            <h4>Experience:</h4>
            <p>Dr. Smith specializes in helping clients manage high levels of stress and anxiety, particularly in fast-paced environments. He has worked with individuals from various backgrounds for over 15 years.</p>
        </div>

        <button class="btn" data-toggle="modal" data-target="#appointmentModal">Book a Session</button>
    </div>

    <!-- Modal for booking appointment -->
    <div class="modal" id="appointmentModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Select Appointment Time</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <h5>Select an available time for your appointment:</h5>
                    <ul id="available-times">
                        <!-- Available times will appear here -->
                    </ul>
                    <p id="availability-status" style="color: red;"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        function toggleDetails(counselorId) {
            var details = document.getElementById(counselorId);
            details.style.display = details.style.display === 'block' ? 'none' : 'block';
        }

        // Function to generate available times between 9 AM to 5 PM in 30-minute increments
        function generateAvailableTimes(startHour, endHour) {
            var times = [];
            for (var hour = startHour; hour < endHour; hour++) {
                for (var minute = 0; minute < 60; minute += 30) { // Increments by 30 minutes
                    var time = `${hour}:${minute < 10 ? '0' + minute : minute}`;
                    times.push(time);
                }
            }
            return times;
        }

        // Show available times when the modal is opened
        $('#appointmentModal').on('show.bs.modal', function () {
            var availableTimes = generateAvailableTimes(9, 17); // From 9 AM to 5 PM
            var timesList = document.getElementById('available-times');
            timesList.innerHTML = ''; // Clear previous times
            availableTimes.forEach(function (time) {
                var listItem = document.createElement('li');
                listItem.textContent = time;
                timesList.appendChild(listItem);
            });
            document.getElementById('availability-status').textContent = ''; // Reset availability status
        });
    </script>
</body>
</html>
