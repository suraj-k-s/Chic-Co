<?php

include("../Assets/Connection/Connection.php");
session_start();
if(isset($_POST['btn_sr']))
{
	$user=$_SESSION['uid'];
    $shop=$_GET['sid'];
	$date=$_POST['date_date'];
	$subcategory=$_POST['slct_subcategory'];
	$time=$_POST['time_time'];
	$Contact=$_POST['txt_cntct'];
    $address=$_POST['txt_da'];
    $details=$_POST['txt_details'];
	

    $photo=$_FILES['file_img']['name'];
	  $temp=$_FILES['file_img']['tmp_name'];
	  move_uploaded_file($temp,"../Assets/Files/Request/".$photo);
  

	$insqry="INSERT INTO `tbl_request`(shop_id,user_id,`request_fordate`, `subcategory_id`, `request_address`, `request_details`, `request_time`, `request_date`, `request_image`, `request_contact`)
    values('$shop','$user','$date','$subcategory','$address','$details','$time',curdate(),'$photo','$Contact')";
	$Conn->query($insqry);
  
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SEND REQUEST</title>
<style>
  sup{
    color: red;
  }
</style>
</head>
<?php
include("Head.php");
?>
<body >
<div id="tab" align="center">
<h1>CUSTOMIZE YOUR DRESS</h1><br>
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">  
  <table border="1" align="center">
    <tr>
      <th scope="row">
        DATE
        <sup>*</sup>
      </th>
      <td width="437"><label for="date_date"></label>
      <input type="date" name="date_date" required id="date_date" /></td>
    </tr>
    <tr>
      <th scope="row">CATEGORY<sup>*</sup></th>
      <td><label for="slct_category"></label>
        <select name="slct_category" id="slct_category" required onchange="getSubcategory(this.value)">
        <option value="">---select---</option>
			
        <?php 
		$selqry="select * from tbl_category";
		$res=$Conn->query($selqry);
		while($data=$res->fetch_assoc())
		{
		?>
        <option value="<?php echo $data['category_id'];?>"> <?php echo $data['category_name'];?></option>
        <?php } ?>
      </select></td>
    </tr>
    <tr>
      <th scope="row">Sub CATEGORY<sup>*</sup></th>
      <td><label for="slct_subcategory"></label>
        <select name="slct_subcategory" id="slct_subcategory" required >
        <option value="">---select---</option>
      </select></td>
    </tr>
    <tr>
      <th scope="row">DELIVERY ADDRESS<sup>*</sup></th>
      <td><label for="txt_da"></label>
      <textarea name="txt_da" id="txt_da" cols="45" required rows="5"></textarea></td>
    </tr>
    <tr>
      <th scope="row">DETAILS</th>
      <td><label for="txt_details"></label>
      <textarea name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
    </tr>
    <tr>
      <th scope="row">DELIVERY TIME<sup>*</sup></th>
      <td><label for="time_time"></label>
      <input type="time" name="time_time" required id="time_time" /></td>
    </tr>
    <tr>
      <th scope="row">IMAGE</th>
      <td><label for="file_img"></label>
      <input type="file" name="file_img" id="file_img" /></td>
    </tr>
    <tr>
      <th scope="row">CONTACT<sup>*</sup></th>
      <td><p>
        <label for="txt_cntct"></label>
        <input type="text" name="txt_cntct" required   id="txt_cntct" />
      </p></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <input type="submit" name="btn_sr" id="btn_sr" value="SEND" />
        </td>
    </tr>
  </table>
</form>
        </div>
</body>
</html>
<script src="../Assets/JQ/jQuery.js"></script>
<script>
 	function getSubcategory(did)
	{

		$.ajax({url:"../Assets/AjaxPages/AjaxSubcategory.php?did="+ did,
		success:function(result)
		{
			//alert(result)
			$("#slct_subcategory").html(result);
		}});
	}
	</script>
 <?php
include("Foot.php");
?>