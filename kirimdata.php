<?php
	$konek = mysqli_connect("localhost", "root", "", "silansia");

	$beratb = $_GET['beratb'];
	$pbadan = $_GET['pbadan'];
	$tinggi = $_GET['tinggi'];

	// simpan ke tabel tb_sensor
	// atur ID SELalu dimulai dari 1
	mysqli_query($konek, "ALTER TABLE ttb_sensor AUTO_INCREMENT=1");

	// mysqli_query($konek, "UPDATE ttb_sensor SET pbadan='$pbadan'");

	//simpan nilai bbadan
	 $simpan = mysqli_query($konek, "insert into pengukuransensor(beratb, pbadan, tinggi)values('$beratb','$pbadan','$tinggi')");

	// echo $simpan;

	// berikan rspon ke nodemcu
	 if($simpan)
		echo"Berhasil disimpan";
	else
		echo"gaga";


?>

