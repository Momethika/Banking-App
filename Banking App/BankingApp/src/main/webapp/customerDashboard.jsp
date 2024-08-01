<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
    <style>
        /* Basic reset */
        body, h2, a, p {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background-color: #ecf0f1; /* Light grey background */
            color: #2c3e50; /* Dark grey text color */
            display: flex;
            flex-direction: column;
            height: 100vh;
            margin: 0;
        }

        .header {
            background-color: #ffffff; /* White header for contrast */
            color: #2c3e50; /* Dark grey text color */
            padding: 20px;
            text-align: center;
            border-bottom: 2px solid #2c3e50; /* Dark grey border */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .header h2 {
            margin: 0;
            font-size: 28px;
        }

        .container {
            display: flex;
            flex: 1;
        }

        .sidebar {
            background-color: #2c3e50; /* Dark grey-blue background */
            color: #ffffff;
            width: 250px;
            padding: 20px;
            border-right: 2px solid #ecf0f1; /* Light grey border for separation */
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        .sidebar a {
            display: block;
            font-size: 16px;
            color: #ffffff;
            background-color: #3498db; /* Light blue button color */
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 8px;
            margin-bottom: 10px;
            text-align: center;
            transition: background-color 0.3s, transform 0.3s;
        }

        .sidebar a:hover {
            background-color: #2980b9; /* Darker blue on hover */
            transform: scale(1.02); /* Slightly enlarge the button on hover */
        }

        .sidebar a:active {
            background-color: #1f618d; /* Even darker blue when pressed */
        }

        .main-content {
            flex: 1;
            padding: 20px;
            overflow: auto;
        }

        .account-info {
            background-color: #ffffff;
            color: #2c3e50;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 600px;
            margin: 0 auto;
        }

        .account-info p {
            font-size: 18px;
            margin: 10px 0;
        }

        .footer {
            background-color: #ffffff; /* White footer for contrast */
            color: #2c3e50; /* Dark grey text color */
            text-align: center;
            padding: 15px;
            border-top: 2px solid #2c3e50; /* Dark grey border */
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.1);
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h2>Welcome</h2>
    </div>
    <div class="container">
        <div class="sidebar">
            <a href="viewTransaction.jsp">View Transactions</a>
            <a href="deposit.jsp">Deposit</a>
            <a href="withdraw.jsp">Withdraw</a>
            <a href="closeAccount.jsp">Close Account</a>
            <a href="logout.jsp">Logout</a>
        </div>
        <div class="main-content">
            <div class="account-info">
                <%
                    String accountNo = (String) session.getAttribute("account_no");
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingApp", "root", "Mome@2004");
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE account_no=?");
                    ps.setString(1, accountNo);
                    ResultSet rs = ps.executeQuery();
                    if (rs.next()) {
                        out.print("<p>Account No: " + rs.getString("account_no") + "</p>");
                        out.print("<p>Balance: $" + String.format("%.2f", rs.getDouble("initial_balance")) + "</p>");
                        
                    }
                %>
            </div>
        </div>
    </div>
    <div class="footer">
        &copy; 2024 BankingApp. All rights reserved.
    </div>
</body>
</html>
