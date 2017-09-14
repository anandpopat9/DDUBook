<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>uploadprofilepic1</title>
</head><body>
<?php

session_start();
$host="localhost"; //yout host name
$username="root";  //yout user name
$password="";      // your password
$db_name="ddubook";  // your database name
$con=mysql_connect("$host", "$username", "$password")or die("cannot connect"); //mysql connection
mysql_select_db("$db_name")or die("can not select DB"); //select your database
  
$uname=$_SESSION["user"];
$event=mysql_query("SELECT uid FROM users WHERE uname='$uname'");
if($event)
{
	while($e=mysql_fetch_array($event))
	{
		$id=$e['uid'];
	}
}
echo $id;
if(isset($_POST['submit']))
{


$file=$_FILES['file']['name'];
$sql = mysql_query("insert into `ddubook`.`image` (`iid`,`uid`,`imagep`) values (NULL,'$id','$file')");
if($sql)
{
$run = move_uploaded_file($_FILES['file']['tmp_name'],"./images/$file");
if($run)
header('Location: /home.php');
else
echo "not uploaded";
}
else
{
echo "not inserted";
}
}
?>

  


"<img src='"images/".$_FILES["file"]["name"]' />"
</body>
</html>