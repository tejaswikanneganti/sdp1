<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Navbar</title>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;">Welcome, Admin!</h3>
    <div class="navbar" style="text-align: center;">
        <ul style="list-style-type: none;">
            <li><a href="viewallemps">View All Employees</a></li>
            <li><a href="deleteemp">Delete Employee</a></li>
            <li><a href="adminlogout">Logout</a></li>
        </ul>
    </div>
</body>
</html>
