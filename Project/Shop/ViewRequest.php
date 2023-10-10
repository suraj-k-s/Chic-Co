<?php
ob_start();
include("Head.php");
session_start();
include("../Assets/Connection/Connection.php");

if(isset($_GET["sts"]))
  {
    $upQry = "update tbl_request set request_status='".$_GET["sts"]."' where request_id='".$_GET["id"]."'";
    if($Conn->query($upQry))
    {
      ?>
        <script>
            window.location="ViewRequest.php";
        </script>
      <?php
    }
  
  }  
	
	echo $selQry="select * from tbl_request r inner join tbl_subcategory sb on sb.subcategory_id=r.subcategory_id inner join tbl_category c on c.category_id=sb.category_id inner join tbl_shop k on k.shop_id=r.shop_id inner join tbl_user u on u.user_id=r.user_id where k.shop_id='".$_SESSION["kid"]."'"; 
	$res=$Conn->query($selQry);
	?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<br><br><br><br><br>
	<div id="tab" align="center">
<form id="form1" name="form1" method="post" action="">
<?php
if($res->num_rows>0)
{
    ?>
    <table border="1">
  <tr>
    <td>SL No</td>
    <td>User</td>
    <td>Category</td>
    <td>Subcategory</td>
    <td>Contact</td>
    <td>Address</td>
    <td>Image</td>
    <td>Details</td>
	<td>Action</td>
  </tr>
      <?php
	  $i=0;
	while($row=$res->fetch_assoc())
	{
		$i++;
		
  ?>
   <tr>
	<td><?php echo $i;?></td>
    <td><?php echo $row["user_name"];?></td>
    <td><?php echo $row["category_name"];?></td>
    <td><?php echo $row["subcategory_name"];?></td>
    <td><?php echo $row["request_contact"];?></td>
    <td><?php echo $row["request_address"];?></td>
    <td><img src="../Assets/Files/Request/<?php echo $row["request_image"];?>" width="120" height="120" /></td>
    <td><?php echo $row["request_details"];?></td>
	<td>
        <?php
            if($row["request_status"]==0)
            {
                ?>
                    <a href="ViewRequest.php?id=<?php echo $row["request_id"]?>&sts=1">Accept</a> / <a href="ViewRequest.php?id=<?php echo $row["request_id"]?>&sts=2">Reject</a>
                <?php
            }
            else if($row["request_status"]==1)
            {
                ?>
                    <a href="ViewRequest.php?id=<?php echo $row["request_id"]?>&sts=3">Start Work</a> 
                <?php
            }
            else if($row["request_status"]==2)
            {
                echo "Request Rejected";
            }
            else if($row["request_status"]==3)
            {
                ?>
                    <a href="ViewRequest.php?id=<?php echo $row["request_id"]?>&sts=4">Complete</a> 
                <?php
            }
            else if($row["request_status"]==4)
            {
                ?>
                    <a href="ViewRequest.php?id=<?php echo $row["request_id"]?>&sts=5">Deliver</a> 
                <?php
            }
            else if($row["request_status"]==5)
            {
                echo "Request Competed";
            }
        ?>
    </td>
    <?php
	}
	
	
	?>
    
</table>

    <?php
}
else{
    echo "<h2>No Requests Found !!!!</h2>";
}
?>
</form>
	</div>
</body>
<?php
include("Foot.php");
ob_flush();
?>
</html>