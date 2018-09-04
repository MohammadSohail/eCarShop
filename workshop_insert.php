<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

if(!isset($_SESSION["username"])) {
    header("location:index.php");
}

if($_SESSION["type"]!="admin") {
    header("location:index.php");
}

include 'config.php';
?>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>cars || eCar Shop</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
</head>
<body>

<nav class="top-bar" data-topbar role="navigation">
    <ul class="title-area">
        <li class="name">
            <h1><a href="index.php">eCar Shop</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
    </ul>

    <section class="top-bar-section">
        <!-- Right Nav Section -->
        <ul class="right">
            <li><a href="about.php">About</a></li>
            <li><a href="cars.php">Cars</a></li>
            <li><a href="search_init.php">Search</a></li>
            <li><a href="cart.php">View Cart</a></li>
            <li><a href="orders.php">My Orders</a></li>
            <li><a href="contact.php">Contact</a></li>
            <?php

            if(isset($_SESSION['username'])){
                echo '<li class = \'active\'><a href="account.php">My Account</a></li>';
                echo '<li><a href="logout.php">Log Out</a></li>';
            }
            else{
                echo '<li><a href="login.php">Log In</a></li>';
                echo '<li><a href="register.php">Register</a></li>';
            }
            ?>
        </ul>
    </section>
</nav>





<div class="row" style="margin-top:10px;">
    <div class="small-12">
        <?php
        /*if(isset($_SESSION['username'])){
            echo '<li><a href="account.php">My Account</a></li>';
            echo '<li><a href="logout.php">Log Out</a></li>';
        }
        else{
            echo '<li><a href="login.php">Log In</a></li>';
            echo '<li><a href="register.php">Register</a></li>';
        }*/

        $name = $_POST["name"];
        $location = $_POST["location"];

        $update = $mysqli->query("INSERT INTO `workshop` ( `name`, `location`) 
        VALUES('".$name."' , '".$location."' )");


        if($update){
            echo "Successfully Employee Inserted";
        }
        ?>

        <div class="row" style="margin-top:10px;">
            <div class="small-12">




                <footer style="margin-top:10px;">
                    <p style="text-align:center; font-size:0.8em;clear:both;">&copy; eCar Shop. All Rights Reserved.</p>
                </footer>

            </div>
        </div>





        <script src="js/vendor/jquery.js"></script>
        <script src="js/foundation.min.js"></script>
        <script>
            $(document).foundation();
        </script>
</body>
</html>
