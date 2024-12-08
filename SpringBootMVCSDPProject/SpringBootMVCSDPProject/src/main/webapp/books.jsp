<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Preview</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            color: #fff;
            margin: 0;
            padding: 0;
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
            max-width: 800px;
            margin: 100px auto;
            color: #333;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .book-image {
            width: 100%;
            border-radius: 10px;
            margin-bottom: 20px;
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
        #qr-code {
            display: none;
            text-align: center;
            margin-top: 20px;
        }
        #qr-code img {
            width: 200px;
            height: 200px;
        }
        .payment-form {
            margin-top: 30px;
        }
        .payment-form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .payment-form button {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .payment-form button:hover {
            background-color: #0056b3;
        }
        .otp-verification {
            display: none;
            margin-top: 20px;
        }
        .otp-verification input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <h1>Book Preview</h1>
        <img src="https://th.bing.com/th/id/OIP.HmgIESlV3V-q1EBPLPkcfgAAAA?rs=1&pid=ImgDetMain" alt="Book Cover" class="book-image">
        <p>Discover the best strategies to manage stress and improve mental health with this insightful book.</p>
        <a href="https://kreatology.com/wp-content/media/b218806a3b9959730eb78f7b06d8cc76-1536x1536.png" class="btn" target="_blank" onclick="showQRCode(event)">Buy Now</a>
        
        <!-- QR code section -->
        <div id="qr-code">
            <p>Scan the QR Code to buy the book:</p>
            <img src="https://static.vecteezy.com/system/resources/previews/000/488/378/original/qr-code-vector-illustration.jpg" alt="QR Code">
        </div>

        <!-- Payment Form -->
        <div class="payment-form">
            <h3>Enter Card Details</h3>
            <form id="paymentForm">
                <input type="text" id="cardNumber" name="cardNumber" required placeholder="Card Number" />
                <input type="text" id="expiryDate" name="expiryDate" required placeholder="Expiry Date (MM/YY)" />
                <input type="text" id="cvv" name="cvv" required placeholder="CVV" />
                <button type="submit">Submit Payment</button>
            </form>
        </div>

        <!-- OTP Verification Section -->
        <div class="otp-verification">
            <h3>Enter OTP</h3>
            <input type="text" id="otp" placeholder="Enter OTP" required />
            <button onclick="verifyOTP()">Verify OTP</button>
        </div>
    </div>

    <script>
        function showQRCode(event) {
            // Prevents the default action of the link
            event.preventDefault();
            
            // Show the QR code section
            document.getElementById('qr-code').style.display = 'block';
        }

        document.getElementById('paymentForm').addEventListener('submit', function(event) {
            event.preventDefault();

            // Simulate OTP sending (In real-world, you would integrate with an SMS service to send the OTP)
            alert('OTP sent to 8333939078');
            
            // Simulate OTP input field display after OTP is sent
            setTimeout(function() {
                document.querySelector('.otp-verification').style.display = 'block';
            }, 2000);
        });

        function verifyOTP() {
            // Simulate OTP verification (In real-world, backend OTP validation happens here)
            const otpInput = document.getElementById('otp').value;
            if (otpInput === '123456') {  // Example OTP
                alert('Money deducted succesfully!');
                window.location.href = 'https://drive.google.com/file/d/1tX5W6ElD_7pid-gs6bjoeUUBM39uWvEe/view?usp=drive_link';
                // Proceed with payment process (e.g., call the payment API)
            } else {
                alert('Invalid OTP. Please try again.');
            }
        }
    </script>
</body>
</html>
