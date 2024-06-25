<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Our Personal Blog</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }
        header h1 {
            margin: 0;
        }
        nav {
            background-color: #444;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: #fff;
            margin: 0 10px;
            text-decoration: none;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #ffd700;
        }
        .content {
            padding: 20px;
        }
        .team-member {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .team-member img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
        }
        .team-member h2 {
            margin-top: 10px;
            margin-bottom: 5px;
        }
        .team-member p {
            margin: 0;
            font-style: italic;
            color: #666;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>About Us</h1>
    </header>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About us</a>
        <a href="contact.jsp">Contact</a>
    </nav>
    <div class="content">
        <div class="team-member">
            <img src="pictures/ron.jpg" alt="Ron Tsarfati">
            <h2>Ron Tsarfati</h2>
            <p>Mighty ginger, reserve soldier.</p>
        </div>
        <div class="team-member">
            <img src="pictures/gon.jpg" alt="Gon Etgar">
            <h2>Gon Etgar</h2>
            <p>The best summarizer of lectures.</p>
        </div>
        <div class="team-member">
            <img src="pictures/roy.jpg" alt="Roy Goldhar">
            <h2>Roy Goldhar</h2>
            <p>The geek freak, mighty Belgium.</p>
        </div>
        <div class="team-member">
            <img src="pictures/matan.jpg" alt="Matan Hayon">
            <h2>Matan Moshe Hayon</h2>
            <p>Internet troll.</p>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Our Personal Blog. All rights reserved.</p>
    </footer>
    <script>
        function showContact() {
            alert("We will contact you...");
        }
    </script>
</body>
</html>
