<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA MHS PER NIM (id)
    $id = $_GET['id'];

    //string untuk query
    $sql = "SELECT * FROM tbarang INNER JOIN tsuplier 
            WHERE Kota = $id
            ORDER BY kota ASC";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "kode"=>$row['kdBarang'],
            "nama"=>$row['namabarang'],
            "suplier"=>$row['Nama'],
            "kota"=>$row['Kota']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>