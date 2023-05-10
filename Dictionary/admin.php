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
<!--..new_category..-->
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
            <input type="text" placeholder="Category name *" name="Category" class="box1" title="Category" required>
            <input type="submit" name="gatavs" value="Submit" class="btn">
        </form>
    </div>

       <?php 
            }
        
        ?> 
</div>

<!--..add..-->

    <div id="pieteiksanas">
    <?php 
   
            if(isset($_POST['ready'])){
                $Word = $_POST['Word'];
                $Description = $_POST['Description'];
                $Online_source = $_POST['Online_source'];
                $Letter = $_POST['Letter'];
                $Category_ID = $_POST['Category_ID'];


                if(!empty($Word) && !empty($Description) && !empty($Letter)){
                    $AddWordd = "INSERT INTO newdictionary(Word, Description, Online_source, Letter, Category_ID) VALUES ('$Word', '$Description', '$Online_source', '$Letter', '$Category_ID')";


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
            <input type="text" placeholder="Word *" name="Word" class="box1" title="Word" required>
            <input type="text" placeholder="Description *" name="Description" class="box1" title="Description" required>
            <input type="text" placeholder="Online_Source" name="Online_source" class="box1" title="Online_Source">
            <select name="Letter" id="category">
                <?php
                $dictionary = "SELECT * FROM `dictionary` ";
            $sql = mysqli_query($savienojums, $dictionary); 
               while($row = mysqli_fetch_array($sql)){
                echo "
                <option value={$row['Letter']}>{$row['Letter']}</option>
               ";}
                ?>
            </select>
            <select name="Category_ID" id="category">
                <?php
                $catg = "SELECT * FROM `newcategory` ";
            $sql = mysqli_query($savienojums, $catg); 
               while($row = mysqli_fetch_array($sql)){
                echo "
                <option value={$row['ID_category']}>{$row['Category']}</option>
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

<!--..edit..-->

<div id="pieteiksanas">
    <?php 
   
            if(isset($_POST['ready3'])){
                $Word = $_POST['Word'];
                $Description = $_POST['Description'];
                $Online_source = $_POST['Online_source'];
                $Letter = $_POST['Letter'];

                $Word2 = $_POST['Word2'];
                $Description2 = $_POST['Description2'];
                $Letter2 = $_POST['Letter2'];


                if(!empty($Word) && !empty($Description) && !empty($Letter)){
                    $EditAbbreviation = "call edit('$Word', '$Description', '$Online_source', '$Letter', '$Word2', '$Description2', '$Letter2')";

                    mysqli_query($savienojums, $EditAbbreviation);
                    header("Refresh: 0; url=admin.php");
                }else{
                    echo "<div class='alarm red'>ERROR!</div>";
                    header("Refresh: 5; url=admin.php");
                }
            }else{
                                
    ?>
    <h1>Edit Abbreviation </h1>

    <div class="row">
        <form method="post">
            <h5>Edit Abbreviation</h5>
            <input type="text" placeholder="Word *" name="Word" class="box1" title="Word" required>
            <input type="text" placeholder="Description *" name="Description" class="box1" title="Description" required>
            <input type="text" placeholder="Online_Source" name="Online_source" class="box1" title="Online_Source">
            <select name="Letter" id="category">
                <?php
                $dictionary = "SELECT * FROM `dictionary` ";
            $sql = mysqli_query($savienojums, $dictionary); 
               while($row = mysqli_fetch_array($sql)){

                echo "
                <option value={$row['Letter']}>{$row['Letter']}</option>
               ";}
                ?>
            </select>
                <br>

            <h5>Select Abbreviation</h5>
            <input type="text" placeholder="Word *" name="Word2" class="box1" title="Word" required>
            <input type="text" placeholder="Description *" name="Description2" class="box1" title="Description" required>
            <select name="Letter2" id="category">
                <?php
                $dictionary = "SELECT * FROM `dictionary` ";
            $sql = mysqli_query($savienojums, $dictionary); 
               while($row = mysqli_fetch_array($sql)){
                echo "
                <option value={$row['Letter']}>{$row['Letter']}</option>
               ";}
                ?>
            </select>
         
            <input type="submit" name="ready3" value="Submit" class="btn">
        </form>
    </div>

       <?php 
            }
        
        ?> 
</div>

<!-- delete -->

<div id="pieteiksanas">
    <?php 
   
            if(isset($_POST['ready4'])){
                $Word = $_POST['Word'];
                $Description = $_POST['Description'];
                $Online_source = $_POST['Online_source'];
                $Letter = $_POST['Letter'];


                if(!empty($Word) && !empty($Description) && !empty($Letter)){
                    $deleteword = "call deleteword(Word, Description, Letter) VALUES ('$Word', '$Description', '$Letter')";


                    mysqli_query($savienojums, $deleteword);
                    header("Refresh: 0; url=admin.php");
                }else{
                    echo "<div class='alarm red'>ERROR!</div>";
                    header("Refresh: 5; url=admin.php");
                }
            }else{
                                
    ?>
    <h1>Delete Abbreviation </h1>

    <div class="row">
        <form method="post">
            <input type="text" placeholder="Word *" name="Word" class="box1" title="Word" required>
            <input type="text" placeholder="Description *" name="Description" class="box1" title="Description" required>
            <select name="Letter" id="category">
                <?php
                $dictionary = "SELECT * FROM `dictionary` ";
            $sql = mysqli_query($savienojums, $dictionary); 
               while($row = mysqli_fetch_array($sql)){
                echo "
                <option value={$row['Letter']}>{$row['Letter']}</option>
               ";}
                ?>
            </select>

            <input type="submit" name="ready4" value="Submit" class="btn">
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