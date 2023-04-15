<!--Banner-->
<div class="banner">
	<div id="example1" class="core-slider core-slider__carousel">
		<h4 class="well"><center>Erago merupakan produk fashion yang berasal dari Indonesia.
			Erago sangat mengedepankan kualitas dan desain tinggi untuk mendukung kebutuhan perjalanan sehari - hari Anda.
			Erago menawarkan produk fashion dengan desain kasual, trendi, dan simple khas street style.</center></h4>
		<div class="core-slider_viewport">
			<div class="core-slider_list">
				<div class="core-slider_item">
					<img src="../assets/img/1 header.png" alt="">
				</div>
				<div class="core-slider_item">
					<img src="../assets/img/2 header.png" alt="">
				</div>
				<div class="core-slider_item">
					<img src="../assets/img/3 header.png" alt="">
				</div>
				<div class="core-slider_item">
					<img src="../assets/img/4 header.png" alt="">
				</div>
			</div>
		</div>
		<div class="core-slider_nav">
			<div class="core-slider_arrow core-slider_arrow__right"></div>
			<div class="core-slider_arrow core-slider_arrow__left"></div>
		</div>
		<div class="core-slider_control-nav"></div>
	</div>
	<iframe class="well" width="100%" height="350" src="../assets/video/erago.mp4" frameborder="0" allowfullscreen></iframe>
</div>
<div class="clearfix"></div>

<!-- Services -->
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h2 class="text-center text1">Layanan Kami</h2>
		</div>
		<div class="col-lg-3 col-sm-4 text-center">
			<div class="circle">
				<i class="fa fa-truck"></i>
			</div>
			<h4 class="text2"><b>Gratis Biaya Pengiriman</b></h4>
			<p>Gratis biaya ongkos kirim produk erago ke seluruh Indonesia.</p>
		</div>
			
		<div class="col-lg-3 col-sm-4 text-center">
			<div class="circle">
				<i class="fa fa-gift"></i>
			</div>
			<h4 class="text2"><b>Belanja Dapat Point Rewards</b></h4>
			<p>Kumpulkan point rewards setiap belanja minimal Rp 50.000 berlaku kelipatan.</p>
		</div>
			
		<div class="col-lg-3 col-sm-4 text-center">
			<div class="circle">
				<i class="fa fa-shopping-cart"></i>
			</div>
			<h4 class="text2"><b>Garansi Gratis 30 Hari Pengembalian</b></h4>
			<p>Apabila produk yang dikirimkan kurang sesuai keinginan pelanggan, produk dapat ditukar.</p>
		</div>

		<div class="col-lg-3 col-sm-4 text-center">
			<div class="circle">
				<i class="fa fa-users"></i>
			</div>
			<h4 class="text2"><b>Erago Rewards Member</b></h4>
			<p>Hemat 10% untuk transaksi Rp 200.000 berlaku hingga 31 Desember 2022.</p>
		</div>
	</div>
</div>
<div class="clearfix"></div>

<!--All Products-->
<div class="top-products">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="text-center text1">Semua Produk</h2>
			</div>
		</div>
		<div class="row product">
				<?php
				$perpage = 20;
				$page = isset($_GET['page']) ? $_GET['page'] : "";
				
				if(empty($page)){
					$num = 0;
					$page = 1;
				}else{
					$num = ($page - 1) * $perpage;
				}
				
				$query = "SELECT * FROM items WHERE available = 'Ada' ORDER by item_id ASC LIMIT $num, $perpage";
				$result = mysqli_query($conn, $query);
				while($row = mysqli_fetch_array($result)){
					$totalDisc = $row['price']-($row['price'] * $row['discount']/100);
				?>
				<div class="col-md-3 col-xs-6 product-left">
					<div class="p-one">
						<a href="#">
							<img src="../miiadmin/img/<?php echo $row['bgimg']; ?>"/>
							<div class="mask">
								<a href="../index.php?p=single&id=<?php echo $row['item_id']; ?>"><span>Lihat Detail</span></a>
							</div>
						</a>
						<h4><?php echo $row['item_name']; ?></h4>
						<?php
						if($row['discount'] == "0"){
							echo '
							<div class="item_price">
								<p>
									<span>Rp '.number_format($row['price'],0,".",".").'</span>
								</p>
							</div>
							';
						}else{
							echo '
							<div class="item_price">
								<p>
									<i>Rp '.number_format($row['price'],0,".",".").'</i>
									<span>Rp '.number_format($totalDisc,0,".",".").'</span>
								</p>
							</div>
							';
						}
						?>
					</div>
				</div>
					
				<?php
				}
				$sql = mysqli_query($conn, "SELECT * FROM items");
				$total_record = mysqli_num_rows($sql);
				$total_page = ceil($total_record / $perpage);
				?>
				<div class="col-lg-12 col-xs-12">
					<nav class="text-center">
						<ul class="pagination">
							<?php
							if($page > 1){
								$prev = "<a href='../index.php?p=home&page=1'><span aria-hidden='true'>Pertama</span></a>";
							}else{
								$prev = "<a href=''><span aria-hidden='true'>Pertama</span></a>";
							}
							$number = '';
							for($i=1; $i<=$total_page; $i++){ 
								if($i == $page){
									$number .= "<a href='../index.php?p=home&page=$i'>$i</a>";
								}else{
									$number .= "<a href='../index.php?p=home&page=$i'>$i</a>";
								}
							}
							if($page < $total_page){
								$link = $page + 1;
								$next = "<a href='../index.php?p=home&page=$total_page'><span aria-hidden='true'>Kedua</span></a>";
							}else{
								$next = "<a href=''><span aria-hidden='true'>Kedua</span></a>";
							}
							?>
							<li><?php echo $prev; ?></li>
							<li><?php echo $number; ?></li>
							<li><?php echo $next; ?></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>

<!-- All Brands -->
<div class="container-fluid brands"><!-- <div class="container-fluid hidden-xs"> -->
	<!-- <div class="row">
		<div class="col-md-12 text-center"><h2 class="text-center text1">Brand</h2></div>
		<div class="col-md-10 col-md-offset-1"> -->
			<!-- <div class="carousel carousel-show slide" id="myCarousel">
				<div class="carousel-inner"> -->
				<?php
				// $query = mysqli_query($conn, "SELECT * FROM brands");
				// $i = 1;
				// $active = 1;
				// while($row = mysqli_fetch_array($query)){
				// 	if($i == 1) {
				// 		if($active == 1) {
				// 			echo '<div class="item active">';
				// 		}else{
				// 			echo '<div class="item">';
				// 		}
				// 		echo '<div style="margin-left: 42%;" class=" translate-middle col-md-2 col-sm-6 col-xs-12"><span><img src="../miiadmin/logo/'.$row['logo'].'" class="img-responsive"></span></div>';
				// 	}
				// 	$i = 0;
				// 	echo '</div>';
				// 	$i++;
				// 	$active++;
				// }
				?>	
				</div>
				<!-- <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a> -->
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>