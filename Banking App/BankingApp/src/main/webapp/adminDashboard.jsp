<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
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
            min-height: 100vh;
        }

        /* Sidebar Style */
        .sidebar {
            background: linear-gradient(135deg, #2c3e50, #34495e); /* Gradient background */
            color: #ecf0f1;
            width: 250px;
            padding: 20px;
            height: 100%;
            position: fixed;
            overflow-y: auto; /* Allow scrolling if content exceeds viewport height */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Subtle shadow */
        }

        .sidebar h2 {
            margin-bottom: 20px; /* Space below the header */
            font-size: 1.6em;
            line-height: 1.4;
        }

        .sidebar nav {
            display: flex;
            flex-direction: column;
        }

        .sidebar nav a {
            color: #ecf0f1;
            text-decoration: none;
            padding: 12px 15px; /* Adjusted padding */
            font-size: 1.1em;
            border-radius: 8px; /* Rounded corners */
            transition: background-color 0.3s ease, padding-left 0.3s ease;
            line-height: 1.5;
            margin-bottom: 10px; /* Space between links */
        }

        .sidebar nav a:hover {
            background-color: #34495e;
            padding-left: 20px; /* Adds a subtle shift effect on hover */
        }

        /* Main Content Style */
        .main-content {
            margin-left: 250px;
            padding: 20px; /* Adjusted padding */
            flex: 1;
            background-color: #ffffff; /* White background for contrast */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            max-width: 800px; /* Constrain width for readability */
            margin: 20px auto; /* Center the content with margin */
        }

        .main-content h1 {
            font-size: 2.2em; /* Medium size for header */
            color: #2c3e50;
            margin-bottom: 20px; /* Space below the header */
            line-height: 1.3;
        }

        .main-content p {
            font-size: 1.1em; /* Medium size for paragraph */
            line-height: 1.8; /* Increased line-height for readability */
            color: #555;
            margin-bottom: 20px; /* Space below paragraphs */
        }

        .main-content .welcome {
            font-size: 2em; /* Emphasize the welcome text */
            color: #2c3e50;
            font-weight: bold; /* Bold text for emphasis */
        }
    </style>
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <h2>Admin Dashboard</h2>
            <nav>
                <a href="registerCustomer.jsp">Register Customer</a>
                <a href="ViewCustomerServlet">View Customers</a>
                <a href="logout.jsp">Logout</a>
            </nav>
        </aside>
        <main class="main-content">
            <h1 class="welcome">Welcome, Admin!</h1>
            <p>Use the sidebar to navigate through the admin features. Feel free to explore the available options and manage customer data efficiently.</p>
        </main>
    </div>
</body>
</html>
