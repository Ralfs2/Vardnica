<!DOCTYPE html>
<html lang="lv">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Abbreviation dictionary</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="login.css">
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


<div class="container" id="container">
		<div class="form-container sign-in-container">
			<form action="#" method="post">
				
				<h1>Login</h1>

				<?php 
					if(isset($_POST['Login'])){
						require ("connect_db.php");
						session_start();
						$Name = mysqli_real_escape_string($savienojums, $_POST["Name"]);
						$Password = mysqli_real_escape_string($savienojums, $_POST["Password"]);
						$sqlVaicajums = "SELECT * FROM admin WHERE Name = '$Name'";
						$rezultats = mysqli_query($savienojums, $sqlVaicajums);

						if(mysqli_num_rows($rezultats) == 1){
							while($row = mysqli_fetch_array($rezultats)){
								if(password_verify($Password, $row['Password'])){
									$_SESSION["Name"] = $Name;
									header("location:admin.php");
								}else{
									echo "ERROR!";
								}
							}
						}else{
							echo "ERROR!";
						}

					}

					if(isset($GET['logout'])){
						session_destroy();
					}
				?>

				<input type="text" name="Name" placeholder="Name" />
				<input type="password" name="Password" placeholder="Password" />
				<input type="submit" name="Login" value="Login">
			</form>
		</div>
		
	</div>




</body>
</html>