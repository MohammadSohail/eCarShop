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
                echo '<li><a href="account.php">My Account</a></li>';
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

<!--<form method="POST" action="search.php" style="margin-top:30px;">
    <input type = "text" name = "person">
    <button> SUBMIT </button>
</form>

-->

<form method="POST" action="employee_insert.php" style="margin-top:30px;">
    <div class="row">
        <div class="small-8">

            <div class="row">
                <div class="small-4 columns">
                    <label for="right-label" class="right inline">First Name</label>
                </div>
                <div class="small-8 columns">
                    <input type="text" id="right-label"  name="fname">
                </div>
            </div>

            <div class="row">
                <div class="small-4 columns">
                    <label for="right-label" class="right inline">Last Name</label>
                </div>
                <div class="small-8 columns">
                    <input type="text" id="right-label"  name="lname">
                </div>
            </div>

            <div class="row">
                <div class="small-4 columns">
                    <label for="right-label" class="right inline">Email</label>
                </div>
                <div class="small-8 columns">
                    <input type="email" id="right-label"  name="email">
                </div>
            </div>

            <div class="row">
                <div class="small-4 columns">
                    <label for="right-label" class="right inline">Salary</label>
                </div>
                <div class="small-8 columns">
                    <input type="int" id="right-label"  name="salary">
                </div>
            </div>

            <div class="row">
                <div class="small-4 columns">
                    <label for="right-label" class="right inline">Joining Date</label>
                </div>
                <div class="small-8 columns">
                    <input type="date" id="right-label"  name="jdate">
                </div>
            </div>


            <div class="row">
                <div class="small-4 columns">

                </div>
                <div class="small-8 columns">
                    <input type="submit" id="right-label" value="Insert Employee" style="background: #0078A0; border: none; color: #fff; font-family: 'Helvetica Neue', sans-serif; font-size: 1em; padding: 10px;">
<!--                    <input type="reset" id="right-label" value="Reset" style="background: #0078A0; border: none; color: #fff; font-family: 'Helvetica Neue', sans-serif; font-size: 1em; padding: 10px;">-->
                </div>
            </div>
        </div>
    </div>
</form>


        <script src="js/vendor/jquery.js"></script>
        <script src="js/foundation.min.js"></script>
        <script>
            $(document).foundation();
        </script>
</body>
</html>
