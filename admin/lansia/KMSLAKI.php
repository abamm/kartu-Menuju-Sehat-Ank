<?php 	
if (isset($_GET['kode'])) {
	$sql_cek = "SELECT * from tb_pasien where id_pasien ='" . $_GET['kode'] . "'";
	$query_cek = mysqli_query($koneksi, $sql_cek);
	$data_cek = mysqli_fetch_array($query_cek, MYSQLI_BOTH);
}
	$id_pas = $data_cek['id_pasien'];

include "inc/koneksi.php";


 ?>

<!DOCTYPE html>
<html>
<head>
	<!-- <title>E-KMS</title> -->
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	

	<script type="text/javascript" src="assets/js/jquery-3.4.0.min.js"></script>
	<script type="text/javascript" src="assets/js/mdb.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script type="text/javascript" src="jquery/jquery.min.js"></script>
	<script type="text/javascript">
		var refreshid = 
		$(document).ready( function() {
			// setInterval(function(){ 
				$('#responsecontainer').load('databb24laki.php');
				$('#responsecontai').load('databb60laki.php');				
			}, 1000 );

	</script>
</head>

<body>
 <div class="panel panel-primary"> 
   <div class="panel-heading">
    <div class="card mx-auto mb-2" style="max-width: 400px;">
        <div class="row g-0">
            <div class="col-md-3">
                <img src="laki.png" class="img-fluid rounded-start">
            </div>
            <div class="col-md-8">
			    <div class="card-body">
			        <div class="form-group row">
			            <label class="col-sm-5	 col-form-label"><h4>Nama Anak :</h4></label>
			            <div class="col-sm-5">
			                <input class="form-control" id="nama_anak" name="nama_anak"  value="<?php echo $data_cek['nama_anak']; ?>" readonly /> <!-- namapasien -->
			            </div>
			        </div>
			    </div>
			</div>
        </div>
    </div>
	</div>


	<div class="container">
	    <div class="container" id="responsecontainer" style="width: 90%; text-align: center ">
	    </div>    
	</div>


	<div class="container">
	    <div class="container" id="responsecontai" style="width: 90%; text-align: center ">
	    </div>    
	    <button type="button" class="btn btn-secondary" onclick="window.location.href='KMSLAKIPANJANG.php'">Secondary</button>

	</div>
	

</body>

</html>