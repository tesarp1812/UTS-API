<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //string untuk query
    $sql = "SELECT * FROM tbarang INNER JOIN tsuplier ON tbarang.SUPLIER=tsuplier.kdSuplier";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "kode"=>$row['kdBarang'],
            "nama"=>$row['namabarang'],
            "suplier"=>$row['Nama'],
            "kota suplier"=>$row['Kota'],
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>