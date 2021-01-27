<?php

include '../database.php';
$obj = new database();
$obj->insertCustomerUser('Mike', 'Reule');


if(isset($_POST['submit']))
{

    $fieldnames = ['username', 'password'];
    $error = false;

    foreach($fieldnames as $fieldname)
    {
        if(!isset($_POST[$fieldname]) || empty($_POST[$fieldname]))
        {
            $error = true; 
        }

    }

    /* Nog niet gebruikt
    if(!$error)
    {
        
    }
    else
    {
        
    }
    */
}
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>FlowerPower - Login Medewerker</title>
    <link rel="stylesheet" href="../shared.css">
    <link rel="stylesheet" href="../styling.css">
  </head>
  <body>
      
      <div id="shell-header">
          <div class="logo-cont">
              <img src="../images/boeket-hoofdpagina.png" alt="logo" loading="lazy">
          </div>
          <div class="header"><h1>FlowerPower</h1></div>
      </div>
      <div id="shell-page">
          <div id="shell-navigation">
              <ul>
                <li><a href="../">Home</a></li>
                <li><a href="loginEmployee.php">Inlog Medewerker</a></li>
                <li><a href="loginCustomer.php">Inlog Klant</a></li>
                <li><a href="#">Registeren</a></li>
                <li><a href="../contact.php">Contact</a></li>
              </ul>
          </div>
          <div id="page-display">
              <div>
                <form action="../index.php" method="post">
                    <label for="username">Username</label>
                    <input type="text" name="username" id="username" placeholder="Medewerkernaam" required><br>

                    <label for="username">Password</label>
                    <input type="password" name="password" id="password" placeholder="Wachtwoord" required><br>

                    <input type="submit" value="Login">
                </form>
            </div>
      </div>

  </body>
</html>