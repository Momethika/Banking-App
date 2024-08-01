<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
            padding-top: 50px;
        }

        .container {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            display: inline-block;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #d9534f;
        }

        p {
            color: #333;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px 20px;
            background-color: #f8f9fa;
            border: 1px solid #ddd;
        }

        a:hover {
            background-color: #e2e6ea;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Error</h1>
        <p><%= request.getAttribute("errorMessage") %></p>
        <a href="registerCustomer.jsp">Go Back</a>
    </div>
</body>
</html>
