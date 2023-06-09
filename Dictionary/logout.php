<?php 
    session_start();
    if(session_destroy()){
        header("Location:index.php");
        // izlogojas no sistēmas un atveras index lapa
    }
?>