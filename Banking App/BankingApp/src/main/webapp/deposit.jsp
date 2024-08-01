<!DOCTYPE html>
<html>
<head>
    <title>Deposit</title>
    <style>
        /* Basic reset */
        body, h2, form, label, input {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background-color: #ecf0f1; /* Light grey background */
            color: #2c3e50; /* Dark grey text color */
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff; /* White background for the container */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
            max-width: 100%;
        }

        h2 {
            font-size: 24px;
            color: #3498db; /* Blue color for the heading */
            margin-bottom: 20px;
        }

        .deposit-form label {
            font-size: 18px;
            color: #2c3e50;
            margin-bottom: 10px;
            display: block;
        }

        .input-field {
            width: calc(100% - 20px);
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #bdc3c7; /* Grey border for input */
            border-radius: 5px;
            font-size: 16px;
        }

        .submit-button {
            background-color: #3498db; /* Blue color for submit button */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .submit-button:hover {
            background-color: #2980b9; /* Darker blue on hover */
            transform: scale(1.02); /* Slightly enlarge the button on hover */
        }

        .submit-button:active {
            background-color: #1f618d; /* Even darker blue when pressed */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Deposit Amount</h2>
        <form action="DepositServlet" method="post" class="deposit-form">
            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount" class="input-field"><br><br>
            <input type="submit" value="Deposit" class="submit-button">
        </form>
    </div>
</body>
</html>
