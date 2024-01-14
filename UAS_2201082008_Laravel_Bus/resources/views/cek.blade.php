<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <title>UAS Project</title>
    <style>
        :root {
            --white: #FFF;
            --black: #000;
            --ghost: rgba(105, 253, 216, 1);
            --ghost-light: rgba(174, 254, 233, 1);
            --ghost-highlight: rgba(206, 254, 233, 1);
            --green-dark: #69FDD8;
            --text: #CBFFE8;
            --blush: #EF7384;
        }

        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: rgb(28, 98, 159);
            font-family: 'Open Sans', sans-serif;
            color: #CBFFE8;
            font-size: 1.1em;
        }

        button {
            font-family: 'Open Sans', sans-serif;
        }

        h1 {
            font-size: 8em;
            font-weight: 700;
            margin: 15px 0px;
            line-height: 1.125em;
            letter-spacing: .05em;
            text-shadow: 0px 0px 18px rgba(203, 255, 232, 0.6);
        }

        h2 {
            font-size: 2em;
            font-weight: 400;
            line-height: 1.25em;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            width: 100vw;
        }

        .text {
            padding: 2rem;
        }

        .btn {
            color: var(--white);
            background: var(--blush);
            border-color: var(--blush);
            border-radius: 20px;
            padding: 8px 50px;
            cursor: pointer;
            font-size: 1em;
            letter-spacing: .1rem;
            font-weight: 400;
            margin: 5px 0px;
        }

        .btn:hover {
            color: black;
            background: var(--ghost);
            border-color: var(--ghost);
            filter: drop-shadow(0px 0px 10px rgba(105, 253, 216, 0.5));
            transition: 0.5s;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="container--svg">
            <!-- Your SVG code goes here -->
        </div><!-- /.svg-container -->
        <div class="container--text">
            <div class="text">
                <h1>Hello</h1>
                <h2>Klik Home Untuk Login</h2>
                <a href="/index"><button class="btn green">HOME</button></a>
            </div>
        </div>
    </div>

    <script>
        // Your JavaScript code goes here
    </script>
</body>
</html>
