<!DOCTYPE html>
<html lang="lv">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Abbreviation dictionary</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="atteli/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
</head>
<body>
    <header>
        <h3 class="logo">Abbreviation dictionary</h3>
        <nav id="navbar">
            <a class="button2" href="login.php">Login</a>
            <a class="button2" href="test.php">Test</a>
            <a class="button2" href="index.php">Back</a>
        </nav>
    </header>



    <section id="sakums">
    <div class='table'>
                <table >
                <tr>
                    <th>Word</th>
                    <th>Description</th>
                    <th>Online source</th>
                </tr>
                <?php 
                $cat= $_GET['cat'];

               require("connect_db.php");
               $leterz = "SELECT Word, Description, Online_source FROM `newdictionary` WHERE Category_ID=$cat"; 
               $sql = mysqli_query($savienojums, $leterz);
               while($row = mysqli_fetch_array($sql)){
                echo "
                <tr>
                    <td>{$row['Word']}</td>
                    <td>{$row['Description']}</td>
                    <td><a href='{$row['Online_source']}'target='_blank'> More info </a></td>
                <p class='space2'>
                </tr>

               ";}
                ?>
                </table>
                </div>
    </section>

</body>
</html> 