<?php 
	$konek = mysqli_connect("localhost", "root", "", "sianak");

	

	// id tertinggi
	// $sql_ID = mysqli_query($konek, "SELECT MAX(ID) FROM ttb_sensor");
	// tanggap datanya
	// $data_ID = mysqli_fetch_array($sql_ID);
	// ambil ID terakir/ terbesar
	// $ID_akhir = $data_ID['MAX(ID)']; //ID =8
	// $ID_awal = $ID_akhir - 15 ;
	// baca informasi tanggal untuk semua data trakir - sumbu x di grafik
	// $tanggal = mysqli_query($konek, "SELECT tanggal FROM ttb_sensor WHERE ID>='$ID_awal' and ID<='$ID_akhir' ORDER BY ID ASC");
	// baca informasi suhu untuk semua data trakir - sumbu Y di grafik
	// $beratb = mysqli_query($konek, "SELECT beratb FROM ttb_sensor WHERE ID>='$ID_awal' and ID<='$ID_akhir' ORDER BY ID ASC");
	// $tinggi = mysqli_query($konek, "SELECT tinggi FROM ttb_sensor WHERE ID>='$ID_awal' and ID<='$ID_akhir' ORDER BY ID ASC");
	// $pbadan = mysqli_query($konek, "SELECT pbadan FROM ttb_sensor WHERE ID>='$ID_awal' and ID<='$ID_akhir' ORDER BY ID ASC");


	// $beratb = mysqli_query($konek, "SELECT beratb FROM pengukuransensor ORDER BY ID ASC");
	// $tinggi = mysqli_query($konek, "SELECT tinggi FROM pengukuransensor ORDER BY ID ASC");
	// $pbadan = mysqli_query($konek, "SELECT pbadan FROM pengukuransensor ORDER BY ID ASC");

	$Umur = mysqli_query($konek, "SELECT Umur FROM bblaki60");
	// $bbadan = mysqli_query($konek, "SELECT bbadan FROM bblaki24 ORDER BY Umur ASC");
	$N3SD = mysqli_query($konek, "SELECT N3SD FROM bblaki60 ORDER BY Umur ASC");
	$N2SD = mysqli_query($konek, "SELECT N2SD FROM bblaki60 ORDER BY Umur ASC");
	$N1SD = mysqli_query($konek, "SELECT N1SD FROM bblaki60 ORDER BY Umur ASC");
	$MEDIAN = mysqli_query($konek, "SELECT MEDIAN FROM bblaki60 ORDER BY Umur ASC");
	$P1SD = mysqli_query($konek, "SELECT P1SD FROM bblaki60 ORDER BY Umur ASC");
	$P2SD = mysqli_query($konek, "SELECT P2SD FROM bblaki60 ORDER BY Umur ASC");
	$P3SD = mysqli_query($konek, "SELECT P3SD FROM bblaki60 ORDER BY Umur ASC");



?>

	
 <!-- <div class="panel panel-primary">  -->
   



    
 	<div class="panel-body">
 		<h4>Timbanglah Anak Anda Setiap Bulan <br> Anak Sehat, Tambah Umur, Tambah Berat, Tambah Pandai </h4>

 		
 		<canvas id="myChart"></canvas>

 		<script type="text/javascript">
 			$('#nilai').load('nilai.php');
				$('#status').load('status.php');
 			
 			var canvas = document.getElementById('myChart');
 			var data = {
 				labels : [
 				<?php 
 					while ($data_Umur = mysqli_fetch_array($Umur)) 
 					{
 						echo '"'.$data_Umur['Umur'].'",'; 
 					}

 				 ?>
 				],
 				datasets : [
 				// {
 				// 	label : "beratb",
 				// 	fill : false,
 				// 	borderColor: "red",
 				// 	lineTension : 0.5,
 				// 	pointRadius:3,
 				// 	data : [
 				// 	<?php 
 				// 		while ($data_beratb = mysqli_fetch_array($beratb)) 
 				// 		{
 				// 			if ($data_beratb['beratb'] != '0') {
 				// 			echo $data_beratb['beratb'].',';	
 				// 			}
 				// 		}
 				// 	?>
 				// 	]
 				// },
 				// {
 				// 	label : "tinggi",
 				// 	fill : false,
 				// 	borderColor: "green",
 				// 	lineTension : 0.5,
 				// 	pointRadius:2,
 				// 	data : [
 				// 	<?php 
 				// 		while ($data_tinggi = mysqli_fetch_array($tinggi)) 
 				// 		{
 				// 			if ($data_tinggi['tinggi'] != '0') {
     //       					 	echo $data_tinggi['tinggi'].',';
     //       					}	
     //    				}
 				// 	?>
 				// 	]
 				// },
 				// {
 				// 	label : "",
 				// 	fill : false,
 				// 	borderColor: "Yellow",
 				// 	lineTension : 0.5,
 				// 	pointRadius:2,
 				// 	data : [
 				// 	<?php 
 				// 		while ($data_pbadan = mysqli_fetch_array($pbadan)) 
 				// 		{
 				// 			if ($data_pbadan['pbadan'] != '0') {
     //       					 	echo $data_pbadan['pbadan'].',';	
     //    					}
     //    				}
 				// 	?>
 				// 	]
 				// },
 				{
 					label : "N3SD",
 					fill : false,
 					borderColor: "black",
 					lineTension : 0.5,
 					pointRadius:2,
 					data : [
 					<?php 
 						while ($data_N3SD = mysqli_fetch_array($N3SD)) 
 						{
 							echo $data_N3SD['N3SD'].',';	
 						}
 					?>
 					]
 				},
 				{
 					label : "N2SD",
 					fill : false,
 					borderColor: "red",
 					lineTension : 0.5,
 					pointRadius:2,
 					data : [
 					<?php 
 						while ($data_N2SD = mysqli_fetch_array($N2SD)) 
 						{
 							echo $data_N2SD['N2SD'].',';	
 						}
 					?>
 					]
 				},
				{
 					label : "N1SD",
 					fill : false,
 					borderColor: "black",
 					lineTension : 0.5,
 					pointRadius:2,
 					data : [
 					<?php 
 						while ($data_N1SD = mysqli_fetch_array($N1SD)) 
 						{
 							echo $data_N1SD['N1SD'].',';	
 						}
 					?>
 					]
 				},
 				{
 					label : "MEDIAN",
 					fill : false,
 					borderColor: "green",
 					lineTension : 0.5,
 					pointRadius:2,
 					data : [
 					<?php 
 						while ($data_MEDIAN = mysqli_fetch_array($MEDIAN)) 
 						{
 							echo $data_MEDIAN['MEDIAN'].',';	
 						}
 					?>
 					]
 				},
 				{
 					label : "P1SD",
 					fill : false,
 					borderColor: "orange",
 					lineTension : 0.5,
 					pointRadius:2,
 					data : [
 					<?php 
 						while ($data_P1SD = mysqli_fetch_array($P1SD)) 
 						{
 							echo $data_P1SD['P1SD'].',';	
 						}
 					?>
 					]
 				},
 				{
 					label : "P2SD",
 					fill : false,
 					borderColor: "black",
 					lineTension : 0.5,
 					pointRadius:2,
 					data : [
 					<?php 
 						while ($data_P2SD = mysqli_fetch_array($P2SD)) 
 						{
 							echo $data_P2SD['P2SD'].',';	
 						}
 					?>
 					]
 				},
 				{
 					label : "P3SD",
 					fill : false,
 					borderColor: "black",
 					lineTension : 0.5,
 					pointRadius:2,
 					data : [
 					<?php 
 						while ($data_P3SD = mysqli_fetch_array($P3SD)) 
 						{
 							echo $data_P3SD['P3SD'].',';	
 						}
 					?>
 					]
 				},

 				] 				
 			};
 			//opsigrafik
 			var option = {
 				showLines : true,
 				animation : {duration : 0}
 			};

 			var myLineChart = Chart.Line(canvas, {
 				data : data, 
 				options : option
 			});
 		</script>
 		<?php 	
 		echo "Umur (bln)";
 		 ?>
 		<table id="example1" class="table table-bordered table-striped">
					<thead> <!-- Bulan Penimbangan -->
						<tr>   
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<thead>	<!-- BB (Kg) -->
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<thead>  <!-- Kbm (gr) -->
						<tr>
							<th></th>
							<th>200</th>
							<!-- <th width=500x>200</th> -->
						</tr>
					</thead>

	</div>


	
