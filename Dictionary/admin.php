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
         <i class="fas fa-power-off"></i> </b></a>
        </nav>
       
    </header>
<div id="space1"></div>
<!--...-->
<div id="pieteiksanas">
    <?php 
   
            
            

            if(isset($_POST['gatavs'])){
                $Category = $_POST['Category'];


                if(!empty($Category) ){
                    $AddWord = "INSERT INTO newcategory(Category) VALUES ('$Category')";


                    mysqli_query($savienojums, $AddWord);
                    header("Refresh: 0; url=admin.php");
                }else{
                    echo "<div class='alarm red'>ERROR!</div>";
                }
            }else{
                                
    ?>
    <h1>New Category</h1>

    <div class="row">
        <form method="post">
            <input type="text" placeholder="Category name" name="Category" class="box1" title="Category" required>
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
                $Online_source = $_POST['Online_source'];
                $Letter = $_POST['Letter'];


                if(!empty($Word) && !empty($Description) && !empty($Online_source) && !empty($Letter)){
                    $AddWordd = "INSERT INTO newdictionary(Word, Description, Online_source, Letter, Category_ID) VALUES ('$Word', '$Description', '$Online_source', '$Letter')";


                    mysqli_query($savienojums, $AddWordd);
                    header("Refresh: 0; url=admin.php");
                }else{
                    echo "<div class='alarm red'>ERROR!</div>";
                    header("Refresh: 5; url=admin.php");
                }
            }else{
                                
    ?>
    <h1>New Abbreviation </h1>

    <div class="row">
        <form method="post">
            <input type="text" placeholder="Word" name="Word" class="box1" title="Word" required>
            <input type="text" placeholder="Description" name="Description" class="box1" title="Description" required>
            <input type="text" placeholder="Online_Source" name="Online_source" class="box1" title="Online_Source" required>
            <input type="text" placeholder="Letter" name="Letter" class="box1" title="Letter" required>
            <select name="category" id="category">
                <?php
                $catg = "SELECT * FROM `newcategory` ";
            $sql = mysqli_query($savienojums, $catg); 
               while($row = mysqli_fetch_array($sql)){
                //Izvada visas kategorijas
                echo "
                <option value={$row['Category']}>{$row['Category']}</option>
               ";}
                ?>
            </select>
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