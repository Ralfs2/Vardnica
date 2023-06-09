<?php 

 session_start();
 require("connect_db.php");
 if(isset($_SESSION['Name'])){
?>



<?php
     include_once 'connect_db.php';
    if(count($_POST)>0) {
        mysqli_query($savienojums,"UPDATE `flight_dictionary` set idLetter='" . $_POST['idLetter'] . "',
         Word='" . $_POST['Word'] . "', Description='" . $_POST['Description'] . "', Online_source='" . 
         $_POST['Online_source'] . "' ,Letter='" . $_POST['Letter'] . 
         "' WHERE idLetter='" . $_POST['idLetter'] . "'");
// rediģē datus kuri tika ievadīti
        $message = "Record Modified Successfully";
    }
    $idLetter= $_GET['id'];
    // saņem termina id kuru rediģēt
    $result = mysqli_query($savienojums,"SELECT * FROM `flight_dictionary` WHERE idLetter='$idLetter'");
    // izvēlas terminu no datubāzes kuru izvēlējās rediģēt administratora lapā
    $row= mysqli_fetch_array($result);
    
?>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="atteli/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<title>Update Data</title>
</head>
<body>
    <form name="frmUser" method="post" action="">
        <div><?php if(isset($message)) { echo $message; } ?>
        </div>
        <div style="padding-bottom:5px;">
            <a href="admin.php">Back</a>
            <!-- atgriešanās uz administratora lapu -->
        </div>
        <input type="hidden" name="idLetter" class="box1" value="<?php echo $row['idLetter']; ?>"><br>
            Word: <br>
        <input type="text" name="Word" class="box1"  value="<?php echo $row['Word']; ?>"><br>
            Description :<br>
        <input type="text" name="Description" class="box1" value="<?php echo $row['Description']; ?>"><br>
            Online_source:<br>
        <input type="text" name="Online_source" class="box1" value="<?php echo $row['Online_source']; ?>"><br>
            Letter:<br>
        <input type="text" name="Letter" class="box1" value="<?php echo $row['Letter']; ?>"><br>
        <!-- teksta ievades lauiki kurus aizpilda, lai rediģētu datus -->
        <input type="submit" name="submit" value="Submit" class="btn">
<!-- poga, lai apstiprinātu datu rediģēšanu -->
    </form>
    <?php 

    }else{
        echo " <div class='alert red'> YOU HAVE NO ACCESS HERE!</div>";
        // paziņojums par neatļautu piekļuvi
        header("Refresh: 0; url=index.php");
        // atveras index lapa
    }

  
?>
</body>
</html>