<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #2c3e50; /* Dark background */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Full viewport height */
        margin: 0;
    }
    .logo {
        width: 100px;
        margin-bottom: 20px;
    }
    .container {
        background-color: #ffffff; /* White background for contrast */
        border-radius: 20px;
        box-shadow: 0 6px 12px rgba(0,0,0,0.1); /* Slightly stronger shadow */
        padding: 30px 40px;
        text-align: center;
        max-width: 400px;
        width: 100%;
        box-sizing: border-box;
    }
    h2 {
        color: #343a40; /* Dark grey for the header */
        font-size: 2em;
        margin-bottom: 25px;
    }
    .btn-container {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }
    .btn-container a {
        display: block;
        text-decoration: none;
        color: white;
        padding: 12px 25px;
        border-radius: 10px;
        font-size: 1em;
        transition: background-color 0.3s ease, transform 0.2s;
    }
    .btn-admin {
        background-color: #007bff; /* Blue for Admin Page */
    }
    .btn-admin:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
    .btn-customer {
        background-color: #28a745; /* Green for Customer Page */
    }
    .btn-customer:hover {
        background-color: #218838; /* Darker green on hover */
    }
    .btn-container a:active {
        transform: scale(0.98); /* Slight shrink on click */
    }
</style>
</head>
<body>
    <div class="container">
        <img src="OIP-removebg-preview.png" alt="Banking System Logo" class="logo">
        <h2>Welcome to XYZ Bank</h2>
        <div class="btn-container">
            <a href="login.jsp" target="_blank" class="btn-admin">Admin Page</a>
            <a href="customerLogin.jsp" target="_blank" class="btn-customer">Customer Page</a>
        </div>
    </div>
</body>
</html>
