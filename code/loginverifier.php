<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<?php  
session_start();
$_SESSION["user"]=$_POST["uname"];
$host="localhost"; //yout host name
$username="root";  //yout user name
$password="";      // your password
$db_name="ddubook";  // your database name
$con=mysql_connect("$host", "$username", "$password")or die("cannot connect"); //mysql connection
mysql_select_db("$db_name")or die("can not select DB"); //select your database

$uname=$_POST['uname'];
$pass=$_POST['pass'];
$q="select * from users where uname='$uname' and pass='$pass'";
$r=mysql_query($q);
$n=mysql_num_rows($r);

$rec = mysql_fetch_array($r);
$an=$rec[0];
$pwd=$rec[1];
if($n)
{
 header('Location: /home.php');
}
else
{
 echo "Wrong Username Or Password...!!";
 }
 

 
?>






<body>
</body>
</html>