<!DOCTYPE html>
<html lang="lv">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Abbreviation dictionary</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="test.css">
    <link rel="shortcut icon" href="atteli/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
</head>
<body>
    <header>
        <h3 class="logo">Abbreviation dictionary</h3>
        <nav id="navbar">
            <a class="button2" href="test.php">Back</a>
        </nav>
    </header>
    <br><br><br><br><br><br>
    <div id="page-wrap">
 
 <h1>Result</h1>
 
 <?php
     
     $answer1 = $_POST['question-1-answers'];
     $answer2 = $_POST['question-2-answers'];
     $answer3 = $_POST['question-3-answers'];
     $answer4 = $_POST['question-4-answers'];
     $answer5 = $_POST['question-5-answers'];
     $answer6 = $_POST['question-6-answers'];
     $answer7 = $_POST['question-7-answers'];
     $answer8 = $_POST['question-8-answers'];
     $answer9 = $_POST['question-9-answers'];
     $answer10 = $_POST['question-10-answers'];
 
     $totalCorrect = 0;
     
     if ($answer1 == "C") { $totalCorrect++; }
     if ($answer2 == "D") { $totalCorrect++; }
     if ($answer3 == "A") { $totalCorrect++; }
     if ($answer4 == "B") { $totalCorrect++; }
     if ($answer5 == "D") { $totalCorrect++; }
     if ($answer6 == "D") { $totalCorrect++; }
     if ($answer7 == "B") { $totalCorrect++; }
     if ($answer8 == "C") { $totalCorrect++; }
     if ($answer9 == "A") { $totalCorrect++; }
     if ($answer10 == "B") { $totalCorrect++; }
     
     echo "<div id='results'>$totalCorrect / 10 correct</div>";
     
 ?>

</div>
 
</body>
 
</html>