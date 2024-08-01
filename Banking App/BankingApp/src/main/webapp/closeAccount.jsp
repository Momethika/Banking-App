<!DOCTYPE html>
<html>
<head>
    <title>Close Account</title>
    <style>
        /* Reset CSS */
        body, h2, form, label, a {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #e0f7fa; /* Light cyan background */
            color: #333; /* Dark grey text color */
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff; /* White background */
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15); /* Slightly stronger shadow */
            width: 400px;
            max-width: 90%;
            text-align: center;
            border: 1px solid #b2ebf2; /* Light border to match the background theme */
        }

        h2 {
            font-size: 28px;
            color: #d32f2f; /* Dark red for the warning */
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            color: #555; /* Medium grey */
            margin-bottom: 30px;
            display: block;
        }

        .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 30px;
        }

        .button {
            text-decoration: none;
            color: #fff;
            background-color: #d32f2f; /* Dark red button */
            padding: 12px 25px;
            border-radius: 8px;
            transition: background-color 0.3s, transform 0.2s;
            font-size: 16px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .button:hover {
            background-color: #c62828; /* Darker red on hover */
        }

        .button:active {
            transform: scale(0.97); /* Slightly shrink button on active */
        }

        .button.cancel {
            background-color: #00796b; /* Teal for cancel button */
        }

        .button.cancel:hover {
            background-color: #004d40; /* Darker teal on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Close Account</h2>
        <form action="closeAccountServlet" method="post">
            <label for="confirm">Are you sure you want to close your account?</label>
            <div class="button-container">
                <a href="customerLogin.jsp" class="button">Yes</a>
                <a href="customerDashboard.jsp" class="button cancel">No</a>
            </div>
        </form>
    </div>
</body>
</html>
