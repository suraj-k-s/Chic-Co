<?php
	
	ob_start();
include("../Assets/Connection/Connection.php");








include("Head.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div id="tab" align="center">
        <h2>Search Shop</h2>
        <form method="POST">
            <table border="1">
                <tr>
                    <td>District</td>
                    <td>
                        <select name="sel_district" id="sel_district" onChange="getPlace(this.value)" autocomplete="off" required>
                            <option value="">---select---</option>
                            <?php
                                $districtQry="select * from tbl_district";
                                $res=$Conn->Query($districtQry);
                                while($row=$res->fetch_assoc())
                                {
                                ?>
                                    <option value=<?php echo $row["district_id"]; ?> > <?php echo $row["district_name"]; ?> </option>
                                    <?php
                            }?>
                        </select>
                    </td>
                    <td>Place</td>
                    <td>
                        <select name="sel_place" id="sel_place" autocomplete="off" required>
                            <option value="">---select---</option>
                        </select>
                    </td>
                    <td>
                       <input type="submit" name="btn_search" value="Search"/>
                    </td>
                </tr>
            </table>
        </form>
        <br><br><br>
        <table>
            <tr>
                <?php
                    $i=0;
                    $selQry ="select * from tbl_shop s inner join tbl_place p on p.place_id=s.place_id inner join tbl_district d on d.district_id=p.district_id where true";
                    if(isset($_POST["btn_search"]))
                    {
                        $selQry = $selQry." and p.place_id='".$_POST["sel_place"]."'";
                    }
                    $result=$Conn->Query($selQry);
                    if($result->num_rows>0)
                    {
                        while($data=$result->fetch_assoc())
                        {
                            $i++;
                            ?>
                                <td>
                                    <table style="margin:30px">
                                        <tr>
                                            <td colspan="2" align="center">
                                                <img src="../Assets/Files/Photo/<?php echo $data["shop_photo"]?>" width="120" height="120"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Name
                                            </td>
                                            <td>
                                                <?php echo $data["shop_name"]?>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>
                                                Contact
                                            </td>
                                            <td>
                                                <?php echo $data["shop_contact"]?>
                                            </td>
                                        </tr>  
                                        <tr>
                                            <td>
                                                Email
                                            </td>
                                            <td>
                                                <?php echo $data["shop_email"]?>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td colspan="2" align="center">
                                                <a href="SendRequest.php?sid=<?php echo $data["shop_id"]?>">Request</a>
                                            </td>
                                        </tr> 
                                    </table>
                                </td>
                            <?php
                        }
               
                    }
                    else{
                        echo "<h2>No Shop Found in this Place</h2>";
                    }
                    
                    ?>
        </table>
    </div>
</body>
<script src="../Assets/JQ/jQuery.js"></script>
<script>

 	function getPlace(did)
	{

		$.ajax({url:"../Assets/AjaxPages/AjaxPlace.php?did="+ did,
		success:function(result)
		{
			$("#sel_place").html(result);
		}});
	}
	
	</script>
    <?php
	include("Foot.php");
	ob_flush();
	?>
</html>