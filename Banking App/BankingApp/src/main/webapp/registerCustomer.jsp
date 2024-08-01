<!DOCTYPE html>
<html>
<head>
    <title>Register Customer</title>
    <style>
        /* General Reset and Box-Sizing */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
        }

        /* Container Style */
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        /* Form Style */
        form {
            background: #ffffff; /* White background for the form */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            max-width: 600px; /* Max width for the form */
            width: 100%;
            padding: 20px;
            margin-top: 20px;
        }

        h2 {
            font-size: 2em;
            color: #2c3e50;
            margin-bottom: 20px; /* Space below the heading */
        }

        label {
            font-size: 1.1em;
            color: #2c3e50;
            display: block;
            margin-bottom: 8px; /* Space below labels */
        }

        input[type="text"], 
        textarea, 
        select, 
        input[type="date"] {
            width: calc(100% - 24px); /* Full width minus padding */
            padding: 12px;
            font-size: 1em;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 20px; /* Space below input fields */
            line-height: 1.5;
        }

        textarea {
            height: 100px; /* Fixed height for textarea */
            resize: vertical; /* Allow vertical resizing only */
        }

        input[type="submit"] {
            background-color: #2c3e50; /* Button background color */
            color: #ecf0f1; /* Button text color */
            border: none;
            padding: 15px;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #34495e; /* Darker shade on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register Customer</h2>
        <form action="RegisterCustomerServlet" method="post">
            <label for="full_name">Full Name:</label>
            <input type="text" id="full_name" name="full_name" required><br>
            <label for="address">Address:</label>
            <textarea id="address" name="address" required></textarea><br>
            <label for="mobile_no">Mobile No:</label>
            <input type="text" id="mobile_no" name="mobile_no" required><br>
            <label for="email_id">Email ID:</label>
            <input type="text" id="email_id" name="email_id" required><br>
            <label for="account_type">Account Type:</label>
            <select id="account_type" name="account_type" required>
                <option value="Saving">Saving</option>
                <option value="Current">Current</option>
            </select><br>
            <label for="initial_balance">Initial Balance:</label>
            <input type="text" id="initial_balance" name="initial_balance" required><br>
            <label for="date_of_birth">Date of Birth:</label>
            <input type="date" id="date_of_birth" name="date_of_birth" required><br>
            <label for="id_proof">ID Proof:</label>
            <input type="text" id="id_proof" name="id_proof" required><br>
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
