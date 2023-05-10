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
            <a class="button2" href="index.php">Back</a>
        </nav>
       
    </header>
<br><br><br><br><br><br>


	<div id="page-wrap">
 
    <h1>Abbreviation Test</h1>
		
		<form action="testresult.php" method="post" id="quiz">
        <?php

            // $Testlength= $_GET['Testlength'];
            // $Testletter= $_GET['Testletter'];
            $Testlength=5;
            $Testletter='A';
            require("connect_db.php");

            
                $sql = mysqli_query($savienojums,"call testqst('$Testlength', '$Testletter')");  
               while($row = mysqli_fetch_array($sql)){
                echo "
                <ol>
                <li>
                    <h3>{$row['Word1']}</h3>
                    
                    <div>
                        <input type='radio' name='question-1-answers' id='question-1-answers-A' value='A' />
                        <label for='question-1-answers-A'>{$row['Description']}</label>
                    </div>
                    
                    <div>
                        <input type='radio' name='question-1-answers' id='question-1-answers-B' value='B' />
                        <label for='question-1-answers-B'>{$row['Description']}</label>
                    </div>
                    
                    <div>
                        <input type='radio' name='question-1-answers' id='question-1-answers-C' value='C' />
                        <label for='question-1-answers-C'>{$row['Description']}</label>
                    </div>
                    
                    <div>
                        <input type='radio' name='question-1-answers' id='question-1-answers-D' value='D' />
                        <label for='question-1-answers-D'>{$row['Description']}</label>
                    </div>
                
                </li>
                </ol>
                ";}
 
            ?>
            <input type="submit" value="Submit" class="submitbtn" />
		
		</form>
	
	</div>
 
 
</body>   
</html> 