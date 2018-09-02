 <?php
    	include 'config.php';
        $query = mysqli_query($koneksi, "SELECT no FROM surat_keluar ORDER BY no DESC LIMIT 1");
        $data = mysqli_fetch_array($query);
        $no = $data['no']+1;


        $date = $_POST['tanggal'];
        $tanggal = date("Y-m-d", strtotime($date));
        $unit = $_POST['unit'];
        $tujuan = $_POST['tujuan'];
        $hal = $_POST['hal'];
        $output = "GRT/".$unit."/".$no."/".date('Y',strtotime($date));

        $query = mysqli_query($koneksi, "SELECT * FROM surat_keluar WHERE no = '".$hal."'"); // cek dulu takut di reload
        $sql = "INSERT INTO surat_keluar (tanggal,kd_unit,tujuan,hal,output) values ('".$tanggal."','".$unit."','".$tujuan."','".$hal."','".$output."')";
        $query = mysqli_query($koneksi, $sql);
    ?>