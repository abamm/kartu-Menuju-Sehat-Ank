<?php 
	$konek = mysqli_connect("localhost", "root", "", "sianak");

	$beratb = mysqli_query($konek, "SELECT beratb FROM pengukuransensor ORDER BY ID ASC");
	$Umur = mysqli_query($konek, "SELECT Umur FROM bblaki24");
	$N3SD = mysqli_query($konek, "SELECT N3SD FROM bblaki24 ORDER BY Umur ASC");
	$N2SD = mysqli_query($konek, "SELECT N2SD FROM bblaki24 ORDER BY Umur ASC");
	$N1SD = mysqli_query($konek, "SELECT N1SD FROM bblaki24 ORDER BY Umur ASC");
	$MEDIAN = mysqli_query($konek, "SELECT MEDIAN FROM bblaki24 ORDER BY Umur ASC");
	$P1SD = mysqli_query($konek, "SELECT P1SD FROM bblaki24 ORDER BY Umur ASC");
	$P2SD = mysqli_query($konek, "SELECT P2SD FROM bblaki24 ORDER BY Umur ASC");
	$P3SD = mysqli_query($konek, "SELECT P3SD FROM bblaki24 ORDER BY Umur ASC");


?>

	


    
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
 				{
 					label : "beratb",
 					fill : false,
 					borderColor: "red",
 					lineTension : 0.5,
 					pointRadius:3,
 					data : [
 					<?php 
 						while ($data_beratb = mysqli_fetch_array($beratb)) 
 						{
 							if ($data_beratb['beratb'] != '0') {
 							echo $data_beratb['beratb'].',';	
 							}
 						}
 					?>
 					]
 				},
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
							<th>800</th>
							<th>900</th>
							<th>800</th>
							<th>600</th>
							<th>500</th>
							<th>400</th>
							<th>300</th>
							<th width=500x>200</th>
						</tr>
					</thead>

	</div>


	
