<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Employee Registration</title>
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

        /* Navigation bar styles */
        .navbar {
            width: 100%;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background */
            padding: 15px 0;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000; /* Keeps it on top of other content */
            display: flex;
            justify-content: center; /* Centers the links */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            margin: 0 10px; /* Adds space between links */
            font-weight: bold;
        }

        .navbar a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 5px;
        }

        /* Main content styles */
        .content {
            padding-top: 80px; /* Ensures content starts below the fixed navbar */
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        h3 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }

        .registration-container {
            width: 450px;
            padding: 25px;
            border-radius: 12px;
            background: rgba(255, 255, 255, 0.85);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            margin: 20px;
        }

        label {
            font-weight: bold;
            margin-bottom: 6px;
            display: inline-block;
        }

        .form-group {
            margin-bottom: 15px;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 14px;
        }

        input[type="radio"] {
            margin-right: 5px;
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

        .radio-group label {
            margin-right: 10px;
            font-weight: normal;
        }

        /* Error message styles */
        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <!-- Main navigation bar at the top -->
    <div class="navbar">
        <%@include file="mainnavbar.jsp" %>
    </div>

    <!-- Main content of the page -->
    <div class="content">
        <div class="registration-container">
            <h3>It's fine to take help</h3>

            <!-- Error message placeholder -->
            <% 
                String errorMessage = request.getParameter("error");
                if (errorMessage != null) {
            %>
                <div class="error-message">
                    <%= errorMessage %>
                </div>
            <% } %>

            <form method="post" action="insertemp">
                <div class="form-group">
                    <label for="ename">Enter Name</label>
                    <input type="text" id="ename" name="ename" required/>
                </div>
                <div class="form-group">
                    <label>Select Gender</label>
                    <div class="radio-group">
                        <input type="radio" id="male" name="egender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="edob">Enter Date of Birth</label>
                    <input type="date" id="edob" name="edob" required/>
                </div>
                <div class="form-group">
                    <label for="edept">Select Department</label>
                    <select id="edept" name="edept" required>
                        <option value="">---Select---</option>
                        <option value="TECHNICAL">Student</option>
                        <option value="MARKETING">Doctor</option>
                        <option value="SALES">Admin</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="esalary">Enter Age</label>
                    <input type="number" id="esalary" name="esalary" step="0.01" required/>
                </div>
                <div class="form-group">
                    <label for="elocation">Enter Location</label>
                    <input type="text" id="elocation" name="elocation" required/>
                </div>
                <div class="form-group">
                    <label for="eemail">Enter Email ID</label>
                    <input type="email" id="eemail" name="eemail" required/>
                </div>
                <div class="form-group">
                    <label for="epwd">Enter Password</label>
                    <input type="password" id="epwd" name="epwd" required/>
                </div>
                <div class="form-group">
    <label for="econtact">Enter Contact</label>
    <input 
        type="text" 
        id="econtact" 
        name="econtact" 
        maxlength="10" 
        pattern="^\d{10}$" 
        title="Contact must be exactly 10 digits." 
        required
    />
</div>
                 <div class="button-container">
                    <input type="submit" value="Register"/>
                    <input type="reset" value="Clear"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
