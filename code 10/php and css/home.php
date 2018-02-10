<?php

 ob_start();

 session_start();

 require_once 'dbconnect.php';

 // if session is not set this will redirect to login page

 if( !isset($_SESSION['user']) ) {

  header("Location: index.php");

  exit;

 }

 // select logged-in users detail

 $res=mysqli_query($conn, "SELECT * FROM users WHERE `user_id`=".$_SESSION['user']);
 $userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);

?>

<!DOCTYPE html>
<html>
<head>
<title>Welcome - <?php echo $userRow['email']; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style3.css">
<script src="js/home.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
    <h1> select (dvd - book - cd - status) </h1>
    	<div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Developers</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Developers" />
					</div>
<?php


	$sql= "SELECT type, ISBN_code, Title , publish_date , short_description , status , 	picture FROM media WHERE type = 'cd'" ;

	  $result = $conn->query($sql);////select status 'cd'
            if (!$result) {
                  echo "sql query failed";
              } 

              $rows=$result->fetch_all(MYSQLI_ASSOC);
              echo "<table class='table table-hover' id='dev-table'  align='center'  width='72%'><thead><tr><th>type</th><th>ISBN_code</th><th>Title</th><th>publish_date</th><th>short_description</th><th>status</th><th>picture</th></tr></thead><tbody>";
            foreach($rows as $row){
              echo "<tr><td>";
                echo $row['type'];
                echo "</td><td>";
                echo $row['ISBN_code'];
                echo "</td><td>";
                echo $row['Title'];
                echo "</td><td>";
                echo $row['publish_date'];
                echo "</td><td>";
                 echo $row['short_description'];
                echo "</td><td>";
                 echo $row['status'];
                echo "</td><td><img src='";
                 echo $row['picture'];
                echo "' width='100'></td></tr>";
                
            }
              echo "</tbody></table>";


$sql2= "SELECT type, ISBN_code, Title , publish_date , short_description , status , 	picture FROM media WHERE type = 'dvd'" ;

	  $result = $conn->query($sql2);////select status 'available'
            if (!$result) {
                  echo "sql query failed";
              } 

              $rows=$result->fetch_all(MYSQLI_ASSOC);
              echo "<table class='table table-hover' id='dev-table'   align='center' width='72%'><thead><tr><th>type</th><th>ISBN_code</th><th>Title</th><th>publish_date</th><th>short_description</th><th>status</th><th>picture</th></tr></thead><tbody>";
            foreach($rows as $row){
              echo "<tr><td>";
                echo $row['type'];
                echo "</td><td>";
                echo $row['ISBN_code'];
                echo "</td><td>";
                echo $row['Title'];
                echo "</td><td>";
                echo $row['publish_date'];
                echo "</td><td>";
                 echo $row['short_description'];
                echo "</td><td>";
                 echo $row['status'];
                echo "</td><td><img src='";
                 echo $row['picture'];
                echo "' width='100'></td></tr>";
                
            }
              echo "</tbody></table>";


$sql3= "SELECT type, ISBN_code, Title , publish_date , short_description , status , 	picture FROM media WHERE type = 'book'" ;

	  $result = $conn->query($sql3);////select type 'book'
            if (!$result) {
                  echo "sql query failed";
              } 

              $rows=$result->fetch_all(MYSQLI_ASSOC);
              echo "<table class='table table-hover' id='dev-table'   align='center' width='72%'><thead><tr><th>type</th><th>ISBN_code</th><th>Title</th><th>publish_date</th><th>short_description</th><th>status</th><th>picture</th></tr></thead><tbody>";
            foreach($rows as $row){
              echo "<tr><td>";
                echo $row['type'];
                echo "</td><td>";
                echo $row['ISBN_code'];
                echo "</td><td>";
                echo $row['Title'];
                echo "</td><td>";
                echo $row['publish_date'];
                echo "</td><td>";
                 echo $row['short_description'];
                echo "</td><td>";
                 echo $row['status'];
                echo "</td><td><img src='";
                 echo $row['picture'];
                echo "' width='100'></td></tr>";
                
            }
              echo "</tbody></table>";

              $sql4= "SELECT type, ISBN_code, Title , publish_date , short_description , status , 	picture FROM media WHERE status = 'available'" ;

	  $result = $conn->query($sql4);//select status 'available'
            if (!$result) {
                  echo "sql query failed";
              } 

              $rows=$result->fetch_all(MYSQLI_ASSOC);
              echo "<table class='table table-hover' id='dev-table'  align='center' width='72%'><thead><tr><th>type</th><th>ISBN_code</th><th>Title</th><th>publish_date</th><th>short_description</th><th>status</th><th>picture</th></tr></thead><tbody>";
            foreach($rows as $row){
              echo "<tr><td>";
                echo $row['type'];
                echo "</td><td>";
                echo $row['ISBN_code'];
                echo "</td><td>";
                echo $row['Title'];
                echo "</td><td>";
                echo $row['publish_date'];
                echo "</td><td>";
                 echo $row['short_description'];
                echo "</td><td>";
                 echo $row['status'];
                echo "</td><td><img src='";
                 echo $row['picture'];
                echo "' width='100'></td></tr>";
                
            }
              echo "</tbody></table>";

                $sql5= "SELECT type, ISBN_code, Title , publish_date , short_description , status , 	picture FROM media WHERE status = 'reserved'" ;

	  $result = $conn->query($sql5);//select status 'reserved'
            if (!$result) {
                  echo "sql query failed";
              } 

              $rows=$result->fetch_all(MYSQLI_ASSOC);
              echo "<table class='table table-hover' id='dev-table'  align='center' width='72%'><thead><tr><th>type</th><th>ISBN_code</th><th>Title</th><th>publish_date</th><th>short_description</th><th>status</th><th>picture</th></tr></thead><tbody>";
            foreach($rows as $row){
              echo "<tr><td>";
                echo $row['type'];
                echo "</td><td>";
                echo $row['ISBN_code'];
                echo "</td><td>";
                echo $row['Title'];
                echo "</td><td>";
                echo $row['publish_date'];
                echo "</td><td>";
                 echo $row['short_description'];
                echo "</td><td>";
                 echo $row['status'];
                echo "</td><td><img src='";
                 echo $row['picture'];
                echo "' width='100'></td></tr>";
                
            }
              echo "</tbody></table>";

           ?>
 
 <p class="h2"> Hi' <?php echo $userRow['first_name']; ?></p>

           

         
           <button type="button" class="btn btn-primary btn-lg btn-block"><a href="logout.php?logout">Sign Out</a></button>

       

</body>

</html>

<?php ob_end_flush(); ?>