<?php
ob_start();
include("Head.php");
session_start();
include("../Assets/Connection/Connection.php");
	
		$selQry="select * from tbl_request r inner join tbl_subcategory sb on sb.subcategory_id=r.subcategory_id inner join tbl_category c on c.category_id=sb.category_id inner join tbl_shop k on k.shop_id=r.shop_id inner join tbl_user u on u.user_id=r.user_id where u.user_id='".$_SESSION["uid"]."'"; 
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
    <td>Shop</td>
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
    <td><?php echo $row["shop_name"];?></td>
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
                echo "Request Pending";
            }
            else if($row["request_status"]==1)
            {
                echo "Request Accepted";
            }
            else if($row["request_status"]==2)
            {
                echo "Request Rejected";
            }
            else if($row["request_status"]==3)
            {
                echo "Request On Going";
            }
            else if($row["request_status"]==4)
            {
                echo "Request Comleted Ready For Deliver";
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