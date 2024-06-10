<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%
    // Simulating a database using application context
    List<String[]> posts = (List<String[]>) application.getAttribute("posts");
    if (posts == null) {
        posts = new ArrayList<>();
        application.setAttribute("posts", posts);
    }

    // Handle form submission
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    if (title != null && content != null) {
        posts.add(new String[]{title, content});
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>My Personal Blog</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #77b300 3px solid;
        }
        header a {
            color: #fff;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 16px;
        }
        header ul {
            padding: 0;
            list-style: none;
        }
        header li {
            float: left;
            display: inline;
            padding: 0 20px 0 20px;
        }
        header #branding {
            float: left;
        }
        header #branding h1 {
            margin: 0;
        }
        header nav {
            float: right;
            margin-top: 10px;
        }
        .content {
            padding: 20px;
            background: #fff;
            margin-top: 20px;
        }
        .post-form {
            margin-bottom: 20px;
        }
        .post-form label {
            display: block;
            margin-bottom: 5px;
        }
        .post-form input, .post-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
        }
        .post-form button {
            display: inline-block;
            background: #77b300;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }
        .post-form button:hover {
            background: #333;
        }
        .post {
            border-bottom: #ccc 1px solid;
            margin-bottom: 20px;
            padding-bottom: 20px;
        }
        .post h2 {
            margin: 0 0 10px;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div id="branding">
                <h1>My Personal Blog</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="#create-post">Create Post</a></li>
                    <li><a href="#view-posts">View Posts</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="container content">
        <section id="create-post">
            <h2>Create a New Blog Post</h2>
            <form class="post-form" action="index.jsp" method="post">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required>
                
                <label for="content">Content:</label>
                <textarea id="content" name="content" rows="4" required></textarea>
                
                <button type="submit">Submit</button>
            </form>
        </section>

        <section id="view-posts">
            <h2>Blog Posts</h2>
            <%
                if (posts.isEmpty()) {
                    out.println("<p>No blog posts available.</p>");
                } else {
                    for (String[] post : posts) {
                        out.println("<div class='post'>");
                        out.println("<h2>" + post[0] + "</h2>");
                        out.println("<p>" + post[1] + "</p>");
                        out.println("</div>");
                    }
                }
            %>
        </section>
    </div>
</body>
</html>
