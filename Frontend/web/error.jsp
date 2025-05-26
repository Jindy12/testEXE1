<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Error Page</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f0f0f0;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .container {
                text-align: center;
                background-color: #ffffff;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                padding: 40px;
                max-width: 500px;
                width: 100%;
            }

            h1 {
                color: #3f51b5;
                font-size: 2.5rem;
                margin-bottom: 20px;
            }

            p {
                color: #555555;
                font-size: 1.1rem;
                line-height: 1.6;
                margin-bottom: 30px;
            }

            a {
                color: #ffffff;
                background-color: #3f51b5;
                padding: 10px 20px;
                border-radius: 5px;
                text-decoration: none;
                transition: background-color 0.3s ease;
            }

            a:hover {
                background-color: #303f9f;
            }
</style>
</head>
<body>
            

    <div class="container">
        <h1>Oops! Something went wrong.</h1>
        <p>We apologize for the inconvenience. Please try again later.</p>
         <p><a href="home">Back to home</a></p>
        <p><a href="byaccount">Back to Login</a></p>
        
    </div>
    
</body>
</html>
