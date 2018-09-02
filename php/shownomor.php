<?php
		
		include 'config.php';
		$query = mysqli_query($koneksi, "SELECT no_surat,output FROM surat_keluar ORDER BY no_surat DESC LIMIT 1");
        // if($data['no'] == )
        $data = mysqli_fetch_array($query);
        echo "<div class='align-center'";
        echo "<h3> NOMOR SURAT ANDA :</h3></br>";
        echo "<h1 style= 'font-size : 90px;'>".$data['no_surat']."<h1></br>";
        echo "<h4>".$data['output']."</h4>";
    	// }else{
    	// echo "TAI";
    	// }


?>