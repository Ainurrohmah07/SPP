<?php
session_start();
if( empty( $_SESSION['iduser'] ) ){
	//session_destroy();
	$_SESSION['err'] = '<strong>ERROR!</strong> Anda harus login terlebih dahulu.';
	header('Location: ./');
	die();
} else {
	include "koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>phpBayar</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

	<style type="text/css">
	body {
	  min-height: 200px;
	  padding-top: 70px;
	}
   @media print {
      .noprint {
         display: none;
      }
   }
	</style>

  </head>

  <body>

    <?php include "menu.php"; ?>

    <div class="container">
	
	<?php
	if( isset($_REQUEST['hlm'] )){
		
		$hlm = $_REQUEST['hlm'];
		
		switch( $hlm ){
			case 'bayar':
				include "pembayaran.php";
				break;
			case 'laporan':
				include "laporan.php";
				break;
			case 'master':
				include "master.php";
				break;
			case 'user':
				include "profil.php";
				break;
		}
	} else {
	?>
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron" style="background-color: yellow; color: green; height: 320px;">
        <center><h2 style="color: green; margin-top: 80px;">Aplikasi Pembayaran SMK Putra Gununghalu</h2>
        <br>
        <p>Selamat Datang Administrator</p></center>
      </div>
	<?php
	}
	?>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript, Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(".force-logout").alert().delay(3000).slideUp('slow', function(){
			window.location = "./logout.php";
		});
      function fnCetak() {
         window.print();
      }
	</script>
  </body>

</html>
<?php
}
?>