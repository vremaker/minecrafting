<?php
    include('common.php');
    $db = get_PDO();
    
    $logs = ["log-acacia", "log-birch", "log-jungle", "log-spruce"];
    $planks = ["planks-acacia", "planks-birch", "planks-jungle", "planks-spruce"];

    if(isset($_GET["name"])) {
        $type = $_GET["name"];
        if($type === "all") {
            $rows = $db -> query("SELECT formal, shortname FROM blocks ORDER BY formal ASC");
            $result = "";
            foreach($rows as $row) {
                $result = $result . $row["formal"] . ":" . $row["shortname"] . "\r\n";
            }
            header("Content-type: text/plain");
            echo($result);
        } else {
            $rowcheck = "SELECT * FROM blocks WHERE shortname LIKE :name";
            $state = $db->prepare($rowcheck);
            $paramy = array("name" => $type);
            $state->execute($paramy);
            $resrow = $state->fetchAll();
            if(count($resrow) !== 0) {
             
            $query = "SELECT formal, shortname, descriptions FROM blocks 
                                   WHERE shortname = :type;";
            $stmt = $db->prepare($query);
            $params = array("type" => $type);
            $stmt->execute($params);
            $rows = $stmt -> fetchAll();
             
 
            foreach ($rows as $row) {
                $returnable["name"] = $row["formal"];
                $returnable["shortname"] = $row["shortname"];
                $returnable["description"] = $row["descriptions"];
            } 
            if(strpos($type, "planks") !== false) {
                $type = "planks";
            }
            $query2 = "SELECT * FROM `recipes` WHERE  one LIKE :type OR two LIKE :type OR three LIKE :type OR four 
            LIKE :type OR five LIKE :type OR six LIKE :type OR seven LIKE :type OR eight LIKE :type
            OR nine LIKE :type";


            $stmt2 = $db->prepare($query2);
            $params = array("type" => $type,
                            "type" => $type,
                            "type" => $type,
                            "type" => $type,
                            "type" => $type,
                            "type" => $type,
                            "type" => $type,
                            "type" => $type,
                            "type" => $type);
            $stmt2->execute($params);
            $rows2 = $stmt2->fetchAll();
            $returny = array();
            foreach($rows2 as $row2) {
               array_push($returny, $row2["result"]);
            }
            $returnable["crafts"] = $returny;
            
            output_msg($returnable);
        } else {
            header("HTTP/1.1 400 Invalid Request");
            header("Content-Type: text/plain");
            print ("Sorry that block doesn't exist!!!");
        }
        }
    } else {
        header("HTTP/1.1 400 Invalid Request");
        header("Content-Type: text /plain");
        print ("Missing type parameter");
    }
?>