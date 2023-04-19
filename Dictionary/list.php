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
        </nav>
    </header>




    <div class='table2'>
    <table >
    <?php 
            require("connect_db.php");
            $categorylist = "SELECT * FROM `newcategory`";
            $sql = mysqli_query($savienojums, $categorylist); 
            while($row = mysqli_fetch_array($sql)){
                echo "
              
                <tr>
                    <td>{$row['Category']}</td>
                  </tr>

               ";}
    ?>

    </table>
    </div>


</body>
</html> 