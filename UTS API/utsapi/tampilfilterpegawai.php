<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA MHS PER NIM (id)
    $kota = $_GET['kota'];
    $jk = $_GET['jk'];

    //string untuk query
    $sql = "SELECT * FROM tpegawai WHERE kota=$kota AND jk=$jk ";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "nama"=>$row['nama'],
            "kota"=>$row['Kota'],
            "jenis kelamin"=>$row['jk']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>
