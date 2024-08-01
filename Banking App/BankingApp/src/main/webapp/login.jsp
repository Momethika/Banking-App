<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Welcome - Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color:#2c3e50; /* Soft light blue background for the body */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
            color: #333; /* Dark grey color for text */
        }

        .login-container {
            background-color:#ffffff; /* White background for the login container */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); /* Lighter shadow for a softer look */
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        .login-header {
            margin-bottom: 20px;
        }

        .login-header img {
            width: 80px;
            height: auto;
            margin-bottom: 10px;
        }

        .login-header h1 {
            font-size: 26px;
            color: #00796b; /* Deep teal color for the header text */
            margin: 10px 0;
            font-weight: 600;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-size: 14px;
            color:#ffffff; /* Deep teal color for labels */
            align-self: flex-start;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #b2dfdb; /* Light teal border for the input fields */
            border-radius: 5px;
            font-size: 14px;
            background-color: #ffffff; /* White background for inputs */
            color: #333;
        }

        input[type="text"]::placeholder, input[type="password"]::placeholder {
            color: #00796b; /* Deep teal color for placeholders */
        }

        input[type="submit"] {
            background-color: #004d40; /* Dark teal for the button */
            color: #ffffff;
            padding: 12px 0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #00332d; /* Even darker teal on hover */
        }

        .footer {
            margin-top: 20px;
            font-size: 12px;
            color: #00796b; /* Deep teal color for footer text */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-header">
            <img src="OIP-removebg-preview.png" alt="logo">
            <h1>Welcome</h1>
        </div>
        <form action="AdminLoginServlet" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>
            <input type="submit" value="Login">
        </form>
        <div class="footer">
            <p>© 2024 Your Bank Name. All rights reserved.</p>
        </div>
    </div>
</body>
</html>
