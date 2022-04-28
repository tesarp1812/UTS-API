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
    $pendidikan = $_GET['pendidikan'];

    //string untuk query
    $sql = "SELECT * FROM tpegawai WHERE jk=$jk AND Pendidikan=$pendidikan AND NOT Kota=$kota ";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "nama"=>$row['nama'],
            "kota"=>$row['Kota'],
            "jenis kelamin"=>$row['jk'],
            "Pendidikan"=>$row['Pendidikan']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>