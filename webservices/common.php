<?php
     error_reporting(E_ALL);
     ini_set('display_errors', 1);
     
     /*connects to sql db*/
     function get_PDO() {
       $host =  "sql204.byethost24.com";
       $port = "3306"; # Make sure this matches your server (e.g. MAMP) port //3306
       $user = "b24_26884364";
       $password = "f1xwmpdb";
       $dbname = "b24_26884364_Minecrafting";
   
       $ds = "mysql:host={$host}:{$port};dbname={$dbname};charset=utf8";
   
       try {
         $db = new PDO($ds, $user, $password);
         $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         return $db;
       } catch (PDOException $ex) {
         error("Can not connect to the database. Please try again later.", $ex);
       }
     } 

     /** returns an error if the db cannot be reached  */
     function error($ex){
        header("HTTP/1.1 400 Invalid Request");
        header("Content-Type: text/plain");
        print($ex);
      }


   
      /**
       * Returns a json encoded object and sets the Json header.
       * @param $final {array} - the information being converted to json for
       * return and use on a web page
       */
      function encode($final) {
        $return = json_encode($final);
        header("Content-Type application/json");
        echo $return;
      }

      function output_msg($output) {
        # all our files return json data, so set it here
        header("Content-Type: application/json");
        print(json_encode($output));
      }
    
     
?>