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
        <div class="content">
        <form action="" method="GET">
            <div class="input-group mb-3">
                <input type="text" name="search" required value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>" class="form-control" placeholder="Search data">
                <button type="submit" class="btn btn-primary">Search</button>
            </div>
        </form>

        <table>
            <thead>
                <tr>
                    <th>Word</th>
                    <th>Description</th>
                </tr>
            </thead>
<?php 
require("connect_db.php");


if(isset($_GET['search']))
{
    $filtervalues = $_GET['search'];
    $query = "SELECT Word, Description FROM `flight_dictionary` WHERE Word LIKE '%$filtervalues%' ";
    $query_run = mysqli_query($savienojums, $query);

    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $items)
        {
            ?>
            <tr>
                <td><?= $items['Word']; ?></td>
                <td><?= $items['Description']; ?></td>
            </tr>
            <?php
        }
    }
    else
    {
        ?>
            <tr>
                <td>No Record Found</td>
            </tr>
        <?php
    }
}
?>




   
        <table >
        <tr>
            <th>Letter</th>
            <th>Amount of words</th>
        </tr>
        <tr>
            <td><a href="dictionary.php?letter=A">A</a></td>
            <!--Parāda ka būs A burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('A')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
               //php kods kas saskaita visus terminus kas ir A kategorijā
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=B">B</a></td>
               <!--Parāda ka būs B burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('B')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
               //php kods kas saskaita visus terminus kas ir B kategorijā
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=C">C</a></td>
               <!--Parāda ka būs C burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('C')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=D">D</a></td>
               <!--Parāda ka būs D burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('D')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=E">E</a></td>
               <!--Parāda ka būs E burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('E')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=F">F</a></td>
               <!--Parāda ka būs F burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('F')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=G">G</a></td>
               <!--Parāda ka būs G burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('G')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=H">H</a></td>
               <!--Parāda ka būs H burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('H')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=I">I</a></td>
               <!--Parāda ka būs I burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('I')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=J">J</a></td>
               <!--Parāda ka būs J burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('J')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=K">K</a></td>
               <!--Parāda ka būs k burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('K')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=L">L</a></td>
               <!--Parāda ka būs L burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('L')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=M">M</a></td>
               <!--Parāda ka būs M burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('M')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=N">N</a></td>
               <!--Parāda ka būs N burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('N')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=O">O</a></td>
               <!--Parāda ka būs O burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('O')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=P">P</a></td>
               <!--Parāda ka būs P burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('P')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=Q">Q</a></td>
               <!--Parāda ka būs Q burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('Q')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=R">R</a></td>
               <!--Parāda ka būs R burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('R')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=S">S</a></td>
               <!--Parāda ka būs S burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('S')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=T">T</a></td>
               <!--Parāda ka būs T burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('T')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=U">U</a></td>
               <!--Parāda ka būs U burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('U')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=V">V</a></td>
               <!--Parāda ka būs V burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('V')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=W">W</a></td>
               <!--Parāda ka būs W burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('W')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=X">X</a></td>
               <!--Parāda ka būs X burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('X')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=Y">Y</a></td>
               <!--Parāda ka būs Y burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('Y')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=Z">Z</a></td>
               <!--Parāda ka būs Z burts-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('Z')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>

        <tr>
            <td><a href="dictionary.php?letter=Other">Other</a></td>
               <!--Parāda ka būs cits-->
            <td>
                <?php 
               require("connect_db.php");
               $sql = mysqli_query($savienojums,"call WordCount('Other')"); 
               while($row = mysqli_fetch_array($sql)){
               echo $row['words'];
               }
                ?>
            </td>
        </tr>



        </table>
        </div>
    </section>
 
</body>
</html>    