<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Transactions</title>
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
            padding: 20px;
        }

        h2 {
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 20px;
            text-align: center;
        }

        .transactions-table {
            background-color: #ffffff;
            color: #2c3e50;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 800px;
            margin: 0 auto;
            border-collapse: collapse;
            width: 100%;
        }

        .transactions-table th, .transactions-table td {
            padding: 12px;
            border: 1px solid #ecf0f1; /* Light grey border */
            text-align: left;
        }

        .transactions-table th {
            background-color: #3498db;
            color: white;
        }

        .transactions-table tr:nth-child(even) {
            background-color: #f2f2f2; /* Light grey for even rows */
        }

        .links {
            margin-top: 20px;
            text-align: center;
        }

        .links a {
            display: inline-block;
            font-size: 16px;
            color: #ffffff;
            background-color: #3498db; /* Light blue button color */
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 8px;
            margin: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .links a:hover {
            background-color: #2980b9; /* Darker blue on hover */
            transform: scale(1.02); /* Slightly enlarge the button on hover */
        }

        .links a:active {
            background-color: #1f618d; /* Even darker blue when pressed */
        }
    </style>
</head>
<body>
    <h2>Last 10 Transactions</h2>
    <div class="transactions-table-container">
        <table class="transactions-table">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Amount</th>
                    <th>Type</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String accountNo = (String) session.getAttribute("account_no");
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingApp", "root", "Mome@2004");
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM Transactions WHERE customer_id=(SELECT customer_id FROM Customer WHERE account_no=?) ORDER BY transaction_date DESC LIMIT 10");
                    ps.setString(1, accountNo);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        out.print("<tr>");
                        out.print("<td>" + rs.getTimestamp("transaction_date") + "</td>");
                        out.print("<td>$" + String.format("%.2f", rs.getDouble("amount")) + "</td>");
                        out.print("<td>" + rs.getString("type") + "</td>");
                        out.print("</tr>");
                    }
                %>
            </tbody>
        </table>
    </div>
    <div class="links">
        <a href="customerDashboard.jsp">Back to Dashboard</a>
        <a href="DownloadPDFServlet" class="download-link">Download Transactions as PDF</a>
    </div>
</body>
</html>
