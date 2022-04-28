<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //string untuk query
    $sql = "SELECT tbarang.jenis kdBarang, tjenisbarang.Jenis, COUNT(tjenisbarang.Jenis) AS jumlah FROM tbarang INNER JOIN tjenisbarang GROUP BY tjenisbarang.Jenis";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "kode"=>$row['kdBarang'],
            "jenis"=>$row['Jenis'],
            "jumlah"=>$row['jumlah']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>