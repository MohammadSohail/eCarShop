<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

if(!isset($_SESSION["username"])){
  header("location:index.php");
}
include 'config.php';
?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Orders || eCar Shop</title>
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
          <li class="active"><a href="orders.php">My Orders</a></li>
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




    <div class="row" style="margin-top:10px;">
      <div class="large-12">
        <h3>My COD Orders</h3>
        <hr>

        <?php
          $total_cost = 0;
          $user = $_SESSION["username"];
          $result = $mysqli->query("SELECT * from orders where uid='".$user."'");
          if($result) {
            while($obj = $result->fetch_object()) {
              $query = $mysqli->query("SELECT * from cars p where p.id = $obj->pid");
              $qry = $query->fetch_object();
              //echo '<p><h4>Order ID ->'.$obj->pid.'</h4></p>';
              echo '<p><strong>Date of Purchase</strong>: '.$obj->date.'</p>';
              echo '<p><strong>Product Code</strong>: '.$qry->model.'</p>';
              echo '<p><strong>Product Name</strong>: '.$qry->brand.'</p>';
              echo '<p><strong>Price Per Unit</strong>: '.$qry->price.'</p>';
              echo '<p><strong>Units Bought</strong>: '.$obj->units.'</p>';
              $total = $obj->units * $qry->price;
              $total_cost = $total_cost + $total;
              echo '<p><strong>Total Cost</strong>: '.$currency.' '.$total.'</p>';
              echo '<p><hr></p>';
            }
          }
          echo '<p><strong>Overall Cost</strong>: '.$total_cost.'</p>';

        ?>
      </div>
    </div>




    <div class="row" style="margin-top:10px;">
      <div class="small-12">

        <footer style="margin-top:10px;">
           <p style="text-align:center; font-size:0.8em;">&copy; eCar Shop. All Rights Reserved.</p>
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
