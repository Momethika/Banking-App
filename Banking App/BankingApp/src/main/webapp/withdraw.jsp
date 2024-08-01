<!DOCTYPE html>
<html>
<head>
    <title>Withdraw</title>
    <style>
        /* Reset CSS */
        body, h2, form, label, input {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f1f1f1; /* Light grey background */
            color: #333; /* Dark grey text color */
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #fff; /* White background */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Soft shadow */
            width: 400px;
            max-width: 90%;
            text-align: center;
            border: 1px solid #ccc; /* Light border for better definition */
        }

        h2 {
            font-size: 28px;
            color: #4a90e2; /* Blue color for the title */
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-size: 18px;
            color: #555;
            margin-bottom: 10px;
            align-self: flex-start;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd; /* Light grey border */
            border-radius: 8px;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s;
        }

        .input-field:focus {
            border-color: #4a90e2; /* Blue border on focus */
        }

        .submit-button {
            background-color: #4a90e2; /* Blue button */
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        .submit-button:hover {
            background-color: #357ab7; /* Darker blue on hover */
        }

        .submit-button:active {
            transform: scale(0.98); /* Slightly shrink button on active */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Withdraw Amount</h2>
        <form action="WithdrawServlet" method="post">
            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount" class="input-field" placeholder="Enter amount">
            <input type="submit" value="Withdraw" class="submit-button">
        </form>
    </div>
</body>
</html>
