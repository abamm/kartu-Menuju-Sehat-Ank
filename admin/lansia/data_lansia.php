<!-- <script>
		var table = $('#example1').DataTable();

$('.dataTables_filter input').unbind().bind('keyup', function() {
   var searchTerm = this.value.toLowerCase(),
       regex = '\\b' + searchTerm + '\\b';
   table.rows().search(regex, true, false).draw();
})
	</script> -->
<div class="card card-info">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-table"></i> Data Anak
		</h3>
	</div>
	<!-- /.card-header -->
	<div class="card-body">
		<?php
		if ($data_level == "Administrator") {
		?>

			<div class="table-responsive">
				<div>
					<a href="?page=add-lansia" class="btn btn-primary">

						<i class="fa fa-edit"></i> Tambah Data Anak</a>
					<a target="_blank" href="export.php" class="btn btn-primary">Export</a>
				</div>

				<br>

				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>Nama Anak</th>
							<th width=85px>NIK Anak</th>
							<th width=50px>Jenis Kelamin</th>
							<th width=65px>Nama Ibu</th>
							<th>Alamat</th>
							<th>No Telepon Ibu</th>
							<th width=85x>Aksi</th>
						</tr>
					</thead>
					<tbody>
					    <?php
					    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
					    $no = 1;
					    $sql = $koneksi->query("SELECT p.id_pasien, p.nama_anak, p.nik_anak, p.nama_ibu, p.jekel, p.nik_ibu, p.alamat, p.rt, p.rw, p.no_telepon, a.id_kk, k.no_kk, k.kepala from tb_pasien p left join tb_anggota a on p.id_pasien=a.id_pasien left join tb_kk k on a.id_kk=k.id_kk where status!='Meninggal'");
					    while ($data = $sql->fetch_assoc()) {
					        ?>
					        <tr>
					            <td><?php echo $no++; ?></td>
					            <td><?php echo $data['nama_anak']; ?></td>
					            <td><?php echo $data['nik_anak']; ?></td>
					            <td><?php echo $data['jekel']; ?></td>
					            <td><?php echo $data['nama_ibu'] ?></td>
					            <td><?php echo $data['alamat']; ?></td>
					            <td><?php echo $data['no_telepon']; ?></td>

					            <?php
					            $btn_class = '';
					            $btn_color = '';

					            if ($data['jekel'] == 'Laki-laki') {
					                $btn_class = 'btn-L';
					                $btn_color = 'blue';
					            } elseif ($data['jekel'] == 'Perempuan') {
					                $btn_class = 'btn-P';
					                $btn_color = 'pink';
					            }
					            ?>

					            <style>
					                .btn-L {
					                    background-color: blue; /* Warna bingkai untuk jenis kelamin laki-laki */
					                    border-color: blue; /* Warna bingkai untuk jenis kelamin laki-laki */
					                    color: white; /* Warna teks untuk jenis kelamin laki-laki */
					                }

					                .btn-P {
					                    background-color: pink; /* Warna bingkai untuk jenis kelamin perempuan */
					                    border-color: pink; /* Warna bingkai untuk jenis kelamin perempuan */
					                    color: white; /* Warna teks untuk jenis kelamin perempuan */
					                }

					                .btn-L svg {
					                    fill: white; /* Warna ikon untuk jenis kelamin laki-laki */
					                }

					                .btn-P svg {
					                    fill: white; /* Warna ikon untuk jenis kelamin perempuan */
					                }
					            </style>

					            <td>
					                <a href="?page=view-lansia&kode=<?php echo $data['id_pasien']; ?>" title="Detail" class="btn btn-info btn-sm">
					                    <i class="fa fa-user"></i>
					                </a>
					                <a href="?page=edit-lansia&kode=<?php echo $data['id_pasien']; ?>" title="Ubah" class="btn btn-success btn-sm">
					                    <i class="fa fa-edit"></i>
					                </a>
					                <a href="<?php echo ($data['jekel'] == 'Perempuan') ? '?page=KMSPEREMPUAN&kode='.$data['id_pasien'] : '?page=KMSLAKI&kode='.$data['id_pasien']; ?>" title="KMS" class="btn <?php echo $btn_class; ?> btn-sm">
					                    <i class="bi bi-bar-chart-fill"></i>
					                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bar-chart-fill" viewBox="0 0 16 16">
					                        <path d="M1 11a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1zm5-4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1z"/>
					                    </svg>
					                </a>
					                <a href="?page=del-lansia&kode=<?php echo $data['id_pasien']; ?>" onclick="return confirm('Apakah anda yakin hapus data ini ?')" title="Hapus" class="btn btn-danger btn-sm">
					                    <i class="fa fa-trash"></i>
					                </a>
					            </td>
					        </tr>
					        <?php
					    }
					    ?>
					</tbody>

					</tfoot>
				</table>
			</div>

		<?php
		} elseif ($data_level == "User") {
		?>
			<div class="table-responsive">
				<div>
					<a href="?page=add-lansia" class="btn btn-primary">
						<i class="fa fa-edit"></i> Tambah Data Anak</a>
					<a target="_blank" href="export.php" class="btn btn-primary">Export</a>
				</div>
				<br>
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>NIK</th>
							<th width=85px>Nama</th>
							<th width=50px>Jenis Kelamin</th>
							<th width=65px>RT/RW</th>
							<th>Alamat</th>
							<th>No Telepon</th>
							<th width=85x>Aksi</th>
						</tr>
					</thead>
					<tbody>

						<?php
						mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
						$no = 1;
						$sql = $koneksi->query("SELECT p.id_pasien, p.nik, p.nama, p.jekel, p.pekerjaan, p.alamat, p.alamat, p.rt, p.rw, p.no_telepon, a.id_kk, k.no_kk, k.kepala from 
			  tb_pasien p left join tb_anggota a on p.id_pasien=a.id_pasien 
			  left join tb_kk k on a.id_kk=k.id_kk where status!='Meninggal'");
						while ($data = $sql->fetch_assoc()) {
						?>

							<tr>
								<td>
									<?php echo $no++; ?>
								</td>
								<td>
									<?php echo $data['nik']; ?>
								</td>
								<td>
									<?php echo $data['nama']; ?>
								</td>
								<td>
									<?php echo $data['jekel']; ?>
								</td>
								<td>
									<?php
									if ($data['rt'] != NULL) {
										echo "RT";
									}
									?> <?php echo $data['rt']; ?> <?php
																	if ($data['rw'] != NULL) {
																		echo "RW";
																	}
																	?> <?php echo $data['rw']; ?>
								</td>
								<td>
									<?php echo $data['alamat']; ?>
								</td>
								<td>
									<?php echo $data['no_telepon']; ?>
								</td>

								<td>
									<a href="?page=view-lansia&kode=<?php echo $data['id_pasien']; ?>" title="Detail" class="btn btn-info btn-sm">
										<i class="fa fa-user"></i>
									</a>
									<!-- <a href="?page=edit-lansia&kode=<?php echo $data['id_pasien']; ?>" title="Ubah" class="btn btn-success btn-sm">
									<i class="fa fa-edit"></i>
								</a> -->
									<!-- <a href="?page=del-lansia&kode=<?php echo $data['id_pasien']; ?>" onclick="return confirm('Apakah anda yakin hapus data ini ?')" title="Hapus" class="btn btn-danger btn-sm">
									<i class="fa fa-trash"></i>
								</a> -->
								</td>
							</tr>

						<?php
						}
						?>
					</tbody>
					</tfoot>
				</table>
			<?php
		}
			?>
			</div>
	</div>
	
	<!-- <script>
		$(document).ready(function() {
			$('#example1').DataTable({
				initComplete: function() {
					this.api()
						.columns()
						.every(function() {
							var column = this;
							var select = $('<select><option value=""></option></select>')
								.appendTo($(column.footer()).empty())
								.on('change', function() {
									var val = $.fn.dataTable.util.escapeRegex($(this).val());

									column.search(val ? '^' + val + '$' : '', true, false).draw();
								});

							column
								.data()
								.unique()
								.sort()
								.each(function(d, j) {
									select.append('<option value="' + d + '">' + d + '</option>');
								});
						});
				},
			});
		});
	</script> -->

	<!-- <script>
		$(document).ready(function() {
			$('#example1').DataTable({
				dom: 'Bfrtip',
				buttons: [{
						extend: 'copyHtml5',
						exportOptions: {
							columns: [0, 1, 2, 3, 4, 5]
						}
					},
					{
						extend: 'excelHtml5',
						exportOptions: {
							columns: [0, 1, 2, 3, 4, 5]
						}
					},
					{
						extend: 'pdfHtml5',
						exportOptions: {
							columns: [0, 1, 2, 3, 4, 5]
						}
					},
					{
						extend: 'print',
						exportOptions: {
							columns: [0, 1, 2, 3, 4, 5]
						}
					}
				]
			});
		});
	</script> -->
	<!-- /.card-body -->