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
            <a class="button" href="index.php">Back</a>
        </nav>
       
    </header>


    <div class='table'>
                <table >
                <tr>
                    <th>Word</th>
                    <th>Description</th>
                </tr>
                <?php 
              //  $length= $_GET['length'];
              //  $letter= $_GET['letter'];
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call testqst('15','R')"); 
               while($row = mysqli_fetch_array($sql)){
                echo "
              
                <tr>
                    <td>{$row['Word']}</td>
                    <td>{$row['Description']}</td>
                
                </tr>

               ";}
                ?>
                </table>
                </div>





</body>    
</html> 