 <?php
    	include 'config.php';
        
        $date = $_POST['tanggal'];
        $tanggal = date("Y-m-d", strtotime($date));
        $unit = $_POST['unit'];
        $tujuan = $_POST['tujuan'];
        $hal = $_POST['hal'];
        
        $query = mysqli_query($koneksi, "SELECT no_surat FROM surat_keluar ORDER BY no_surat DESC LIMIT 1");
        $data = mysqli_fetch_array($query);
        $no = $data['no_surat']++;
        $output = "GRT/".$unit."/".$no."/".date('Y',strtotime($date));
        if(isset($date,$tanggal,$unit,$tujuan,$hal,$no)){
        $sql = "INSERT INTO surat_keluar (no_surat,tanggal,kd_unit,tujuan,hal,output) values ('".$no."','".$tanggal."','".$unit."','".$tujuan."','".$hal."','".$output."')";
        $query = mysqli_query($koneksi, $sql);
        }
    ?>