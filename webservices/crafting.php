<?php
    #should have factored out redundancy here sorry!
    include "common.php";

    $db = get_PDO();

    if(isset($_POST["one"]) ||isset($_POST["two"]) || isset($_POST["three"]) ||
    isset($_POST["four"]) || isset($_POST["five"]) || isset($_POST["six"]) || 
    isset($_POST["seven"]) || isset($_POST["eight"]) || isset($_POST["nine"])) {
        $one= null;
        $two = null;
        $three = null;
        $four = null;
        $five= null;
        $six = null;
        $seven = null;
        $eight = null;
        $nine = null;
        $query2 = "SELECT * FROM `recipes` WHERE ";
        if(isset($_POST["one"])){
            $one = trim($_POST["one"]);
            if(strpos($one, "planks")!== false) {
                $one = "planks";
            }
            $query2 = $query2 . "one LIKE :one AND ";
        } else {
            $query2 = $query2 . "one IS :one AND ";
        }
        if(isset($_POST["two"])){
            $two = trim($_POST["two"]);
            if(strpos($two, "planks") !== false) {
                $two = "planks";
            }
            $query2 = $query2 . "two LIKE :two AND ";
        } else {
            $query2 = $query2 . "two IS :two AND ";
        }
        if(isset($_POST["three"])){
            $three = trim($_POST["three"]);
            if(strpos($three, "planks") !== false) {
                $three = "planks";
            }
            $query2 = $query2 . "three LIKE :three AND ";
        } else {
            $query2 = $query2 . "three IS :three AND ";
        }
        if(isset($_POST["four"])){
            $four = trim($_POST["four"]);
            if(strpos($four, "planks") !== false) {
                $four = "planks";
            }
            $query2 = $query2 . "four LIKE :four AND ";
        } else {
            $query2 = $query2 . "four IS :four AND ";
        }
        if(isset($_POST["five"])){
            $five = trim($_POST["five"]);
            if(strpos($five, "planks") !== false) {
                $five = "planks";
            }
            $query2 = $query2 . "five LIKE :five AND ";
        } else {
            $query2 = $query2 . "five IS :five AND ";
        }
        if(isset($_POST["six"])){
            $six = trim($_POST["six"]);
            if(strpos($six, "planks")) {
                $six = "planks";
            }
            $query2 = $query2 . "six LIKE :six AND ";
        } else {
            $query2 = $query2 . "six IS :six AND ";
        }
        if(isset($_POST["seven"])){
            $seven = trim($_POST["seven"]);
            if(strpos($seven, "planks") !== false) {
                $seven = "planks";
            }
            $query2 = $query2 . "seven LIKE :seven AND ";
        } else {
            $query2 = $query2 . "seven IS :seven AND ";
        }
        if(isset($_POST["eight"])){
            $eight = trim($_POST["eight"]);
            if(strpos($eight, "planks") !== false) {
                $eight = "planks";
            }
            $query2 = $query2 . "eight LIKE :eight AND ";
        } else {
            $query2 = $query2 . "eight IS :eight AND ";
        }
        if(isset($_POST["nine"])){
            $nine = trim($_POST["nine"]);
            if(strpos($nine, "planks") !== false ) {
                $nine = "planks";
            }
            $query2 = $query2 . "nine LIKE :nine ";
        } else {
            $query2 = $query2 . "nine IS :nine";
        }
       
        $stmt2 = $db->prepare($query2);
        $params = array("one" => $one,
                        "two" => $two,
                        "three" => $three,
                        "four" => $four,
                        "five" => $five,
                        "six" => $six,
                        "seven" => $seven,
                        "eight" => $eight,
                        "nine" => $nine);
        $stmt2->execute($params);
        $rows2 = $stmt2->fetchAll();
        if(count($rows2) > 0) {
            header("Content-Type: text/plain");
            echo($rows2[0]["result"]);
        } else {
           error("Sorry, That doesn't craft anything!!!!!");
        }
    } else {
       error("Your crafting table is empty");
    }
?>