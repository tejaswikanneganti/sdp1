<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;">Admin Login</h3>
    <div class="form-container" style="text-align: center;">
        <form method="post" action="checkadminlogin">
            <table align="center">
                <tr>
                    <td><label for="auname">Enter Username:</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password:</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
