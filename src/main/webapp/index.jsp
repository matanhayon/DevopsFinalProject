<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Matan Roy Gon Inc.</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h2 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
        label, input, button {
            display: block;
            margin-bottom: 10px;
        }
        button {
            padding: 10px 20px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h2>Welcome to our application</h2>
    <form>
        <label for="inputBox">Enter something:</label>
        <input type="text" id="inputBox" name="inputBox">
        <button onclick="alert('submit')" type="submit">Submit</button>
        <button onclick="alert('Test')" type="button">Test me button</button>
    </form>
    <button onclick="alert('Button Clicked!')" type="button">Click Me!</button>
</body>
</html>
