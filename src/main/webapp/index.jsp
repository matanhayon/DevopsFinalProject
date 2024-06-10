<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Personal Blog</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9; /* Light gray background */
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
            color: #ffd700; /* Change color on hover */
        }
        .content {
            padding: 20px;
        }
        .post {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .post h2 {
            margin-top: 0;
        }
        .post p {
            line-height: 1.6;
        }
        .new-post {
            margin-bottom: 20px;
        }
        .new-post textarea {
            width: 100%;
            height: 100px;
            margin-bottom: 10px;
            background-color: #fff; /* White background for text area */
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 5px;
            padding: 5px;
            resize: vertical; /* Allow vertical resizing */
        }
        .new-post button {
            padding: 10px 20px;
            background-color: #007bff; /* Blue button color */
            color: #fff;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .new-post button:hover {
            background-color: #0056b3; /* Darker blue on hover */
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
    <script>
        function showHome() {
            alert("This is the home page :)");
        }
        function showAbout() {
            alert("We are Roy, Matan, Gon and Ron");
        }
        function showContact() {
            alert("We will contact you...");
        }
        function publishPost() {
            const textBox = document.getElementById('postContent');
            const content = textBox.value;
            if (content.trim() === '') {
                alert('Please write something before publishing.');
                return;
            }

            const postSection = document.getElementById('posts');
            const newPost = document.createElement('div');
            newPost.className = 'post';
            newPost.innerHTML = `
                <h2>New Post</h2>
                <p>${content}</p>
            `;

            postSection.prepend(newPost);
            textBox.value = '';
        }
    </script>
</head>
<body>
    <header>
        <h1>Our Personal Blog</h1>
    </header>
    <nav>
        <a href="#" onclick="showHome()">Home</a>
        <a href="#" onclick="showAbout()">About Me</a>
        <a href="#" onclick="showContact()">Contact</a>
    </nav>
    <div class="content">
        <div class="new-post">
            <textarea id="postContent" placeholder="Write your post here..."></textarea>
            <button onclick="publishPost()">Publish</button>
        </div>
        <div id="posts"></div>
    </div>
    <footer>
        <p>&copy; 2024 Our Personal Blog. All rights reserved.</p>
    </footer>
</body>
</html>
