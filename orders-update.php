<?php
//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

include 'config.php';

if(isset($_SESSION['cart'])) {

  $total = 0;

  foreach($_SESSION['cart'] as $product_id => $quantity) {

    $result = $mysqli->query("SELECT * FROM cars WHERE id = ".$product_id);


    if($result){

      if($obj = $result->fetch_object()) {

        $cost = $obj->price * $quantity;

        $user = $_SESSION["username"];

          echo ' '.'<td>'.$product_id.'</td>';
          echo ' '.'<td>'.$quantity.'</td>';
          echo ' '.'<td>'.$user.'</td>';
          echo ' '.'<td>'.$obj->id.'</td>';

        //echo $obj->

        $query = $mysqli->query("INSERT INTO orders (pid, uid, units) VALUES($obj->id, '$user', $quantity)");
          echo ' pppp '.'<td>'.$obj->id.' '.$user.' '.$quantity.'</td>';
        if($query){
          echo ' yes ';
          $newqty = $obj->qty - $quantity;
          if($mysqli->query("UPDATE cars SET qty = ".$newqty." WHERE id = ".$product_id)){

          }
        }
        else{
            echo ' no ';
            echo $query;
        }
      }
    }
  }
}

unset($_SESSION['cart']);
header("location:success.php");

?>
