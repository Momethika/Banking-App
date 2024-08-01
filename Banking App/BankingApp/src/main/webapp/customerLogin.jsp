<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
    <style>
        /* Basic reset */
        body, h2, form, input {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background: #2c3e50; /* Dark background color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        .login-form {
            background: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 400px;
            max-width: 100%;
            text-align: center;
        }

        .logo {
            width: 80px; /* Adjust logo size as needed */
            margin-bottom: 20px;
        }

        .title {
            font-size: 26px;
            color: #333;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .login-form label {
            font-size: 15px;
            color: #555;
            margin-bottom: 8px;
            display: block;
            text-align: left;
        }

        .input-field {
            font-size: 16px;
            padding: 14px;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin-bottom: 20px;
            width: calc(100% - 28px); /* Full width minus padding */
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .input-field:focus {
            border-color: #ff7e5f; /* Change border color on focus */
            box-shadow: 0 0 8px rgba(255, 126, 95, 0.3);
            outline: none;
        }

        .submit-button {
            background-color: #00332d; /* Dark button color */
            color: #fff;
            border: none;
            padding: 14px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            width: 100%;
            transition: background-color 0.3s, transform 0.3s;
        }

        .submit-button:hover {
            background-color: #002020; /* Slightly darker shade on hover */
            transform: scale(1.05); /* Slightly enlarge the button on hover */
        }
    </style>
</head>
<body>
    <form action="CustomerLoginServlet" method="post" class="login-form">
        <img src="OIP-removebg-preview.png" alt="Company Logo" class="logo"> 
        <h2 class="title">Customer Login</h2>
        <label for="account_no">Account No:</label>
        <input type="text" id="account_no" name="account_no" class="input-field">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" class="input-field">
        <input type="submit" value="Login" class="submit-button">
    </form>
</body>
</html>
