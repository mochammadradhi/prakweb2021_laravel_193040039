<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Radhi | About Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <div class="container">
        <h1>About Page</h1>
        <img src="img/<?= $img; ?>" class="about-img">
        <h2>Hello, My Name is <?= $name; ?>!</h2>
        <h3>i'm Student at Pasundan University | Computer Science</h3>
        <a href="https://www.gmail.com">
            <h5><?= $email; ?></h5>
        </a>
    </div>

    <script src="js/script.js"></script>
</body>

</html>