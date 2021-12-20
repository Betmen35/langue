<?php 
session_start();
ob_start();

include("ayar.php");

$_SESSION['dil'] = @$_GET['dil'];
$dil= $_SESSION['dil'];

if ($dil == "") {

$dil= "tr";


}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>burası anasayfa</title>
</head>
<body>
<ul>

<?php 
if ($dil == "tr") {


$turkce= $db->prepare("SELECT* FROM turkce");
$turkce->execute();
$turk= $turkce->fetchAll(PDO::FETCH_ASSOC);

foreach($turk as $per){

$per['kelime']= $per['karsiligi'];



?>
	
<li><?php  echo $per['kelime']; ?></li>
<?php 
}

}
else{

?>



<?php 
$ingilizce= $db->prepare("SELECT* FROM ingilizce");
$ingilizce->execute();
$ing= $ingilizce->fetchAll(PDO::FETCH_ASSOC);

foreach($ing as $per){

$per['kelime']= $per['karsiligi'];








?>

	
	<li><?php echo $per['kelime'];  ?></li>
<?php 

}

}

?>

</ul>


<a href="?dil=tr">Türkçe</a>|<a href="?dil=en">ingilizce</a>
</body>
</html>