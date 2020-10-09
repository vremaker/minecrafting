<?php
    include "common.php";
    $db = get_PDO();
    if(isset($_GET["block"])){
        $brick = $_GET["block"];
        if($brick === "all") {
            $rows = $db -> query("SELECT * FROM recipes");
            $result = array();
            foreach($rows as $row) {
                array_push($result, array("result" =>$row{"result"},
                                            "one" => $row["one"],
                                            "two" => $row["two"],
                                            "three" => $row["three"],
                                            "four" => $row["four"],
                                            "five" => $row["five"],
                                            "six" => $row["six"],
                                            "seven" => $row["seven"],
                                            "eight" => $row["eight"],
                                            "nine" => $row["nine"]
                                        ));
    
            }
            output_msg($result);
        } else {
            $rowcheck = "SELECT * FROM blocks WHERE shortname LIKE :name";
            $state = $db->prepare($rowcheck);
            $paramy = array("name" => $brick);
            $state->execute($paramy);
            $resrow = $state->fetchAll();
            if(count($resrow) !== 0) {
               $query = "SELECT * FROM recipes WHERE result LIKE :name";
               $stmt = $db -> prepare($query);
               $paramy = array("name" => $brick);
               $stmt->execute($paramy);
               $result = $stmt->fetchAll();
               $res = array();
               foreach($result as $row){
                array_push($res, array("result" =>$row{"result"},
                "one" => $row["one"],
                "two" => $row["two"],
                "three" => $row["three"],
                "four" => $row["four"],
                "five" => $row["five"],
                "six" => $row["six"],
                "seven" => $row["seven"],
                "eight" => $row["eight"],
                "nine" => $row["nine"]
            ));
        }
        output_msg($res);

            } else {
                header("HTTP/1.1 400 Invalid Request");
                header("Content-Type: text/plain");
                print ("That brick does not exist in the database");
            }
        }
    } else { 
        header("HTTP/1.1 400 Invalid Request");
        header("Content-Type: text/plain");
        print ("Missing brick-filter parameter");
    }
?>