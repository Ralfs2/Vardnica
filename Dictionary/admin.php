<?php 

 session_start();
 require("connect_db.php");
 if(isset($_SESSION['Name'])){
?>

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
            
            <a href="logout.php" ><b>
            <?php 
                echo $_SESSION['Name'];
            ?>
        </b> <i class="fas fa-power-off"></i></a>
        </nav>
       
    </header>

<!--...-->
<div id="pieteiksanas">
    <?php 
   
            
            

            if(isset($_POST['gatavs'])){
                $Category = $_POST['Category'];


                if(!empty($Category) ){
                    $AddWord = "INSERT INTO newcategory(Category) VALUES ('$Category')";


                    mysqli_query($savienojums, $AddWord);
                    header("Refresh: 0; url=index.php");
                }else{
                    echo "<div class='alarm red'>ERROR!</div>";
                }
            }else{
                                
    ?>
    <h1>New Category</h1>

    <div class="row">
        <form method="post">
            <input type="text" placeholder="Category name *" name="Category" class="box1" title="Category" required>
            <input type="submit" name="gatavs" value="Submit" class="btn">
        </form>
    </div>

       <?php 
            }
        
        ?> 
</div>

<!--...-->

    <div id="pieteiksanas">
    <?php 
   
            if(isset($_POST['ready'])){
                $Word = $_POST['Word'];
                $Description = $_POST['Description'];
                $Online_Source = $_POST['Online_source'];
                $Letter = $_POST['Letter'];
                $Category_ID = $_POST['Category_ID'];


                if(!empty($Word) && !empty($Description) && !empty($Online_Source) && !empty($Letter) && !empty($Category_ID)){
                    $AddWord = "INSERT INTO newdictionary(Word, Description, Online_source, Letter, Category_ID) VALUES ('$Word', '$Description', '$Online_Source', '$Letter', '$Category_ID')";


                    mysqli_query($savienojums, $AddWord);
                    header("Refresh: 0; url=index.php");
                }else{
                    echo "<div class='alarm red'>ERROR!</div>";
                }
            }else{
                                
    ?>
    <h1>New Abbreviation </h1>

    <div class="row">
        <form method="post">
            <input type="text" placeholder="Word *" name="Word" class="box1" title="Word" required>
            <input type="text" placeholder="Description *" name="Description" class="box1" title="Description" required>
            <input type="text" placeholder="Online_Source *" name="Online_Source" class="box1" title="Online_Source" required>
            <input type="text" placeholder="Letter *" name="Letter" class="box1" title="Letter" required>
            <input type="text" placeholder="Category_ID *" name="Category_ID" class="box1" title="Category_ID" required>
            <input type="submit" name="ready" value="Submit" class="btn">
        </form>
    </div>

       <?php 
            }
        
        ?> 
</div>

<!--  -->

<?php 

    }else{
        echo " <div class='alert red'> YOU HAVE NO ACCESS HERE!</div>";
        header("Refresh: 0; url=index.php");
    }

  
?>
</body>
</html>