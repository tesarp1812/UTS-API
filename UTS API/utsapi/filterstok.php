<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA MHS PER NIM (id)
    $stok = $_GET['stok'];

    //string untuk query
    $sql = "SELECT * FROM tbarang WHERE stok <= $stok ";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "kode barang"=>$row['kdBarang'],
            "nama barang"=>$row['namabarang'],
            "stok"=>$row['stok']    
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>