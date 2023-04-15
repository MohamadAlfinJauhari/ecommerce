<!-- header one-->
<header class="page-header-one">
	<!-- <div class="container-fluid">
		<div class="top-right text-center">
			<ul>
				<?php 
				if(empty($_SESSION['email']) && empty($_COOKIE['email'])){
				?>
				<li><a href="../index.php?p=login">Masuk</a></li>
				<li><a href="../index.php?p=register">Daftar</a></li>
				<?php 
				}else{ 
					if(isset($_SESSION['email'])){
						$member = $_SESSION['member_id'];
						$queryname = mysqli_query($conn, "SELECT * FROM members WHERE member_id = '".$member."'");
						$name = mysqli_fetch_array($queryname);
						echo '<li>'.$name['fullname'].'</li>';
					}else{
						$member = $_COOKIE['member_id'];
						$queryname = mysqli_query($conn, "SELECT * FROM members WHERE member_id = '".$member."'");
						$name = mysqli_fetch_array($queryname);
						echo '<li>'.$name['fullname'].'</li>';
					}
				?>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown">Pengaturan<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="../index.php?p=profil">Profil Saya</a></li>
						<li><a href="../index.php?&p=logout">Keluar</a></li>
					</ul>
				</li>
				<?php } ?>
			</ul>
		</div>
	</div> -->
<!-- </header> -->

<!-- header two-->
<header class="page-header-two">
	<div class="container-fluid text-center">
		<!-- <div class="col-md-4 top-header-left">
			<div class="search-bar">
				<input type="text" id="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
			</div>
		</div> -->
		<div class="row justify-content-center">
			<div class="col-4">
				<img class="logo-header" src="../logo/logo-erago.png" />
			</div>
 	 	</div>
	</div>
</header>

<!-- navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle Navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
			
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav top-nav-info">
				<!-- <li><a href="../index.php?p=company">Profil Erago Official Shop</a></li> -->
				<li><a href="../index.php">Beranda</a></li>
				<li class="dropdown mega-dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">T-Shirt<span class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-2">
							<ul>
								<li class="dropdown-header">T-Shirt</li>
								<li><a href="../index.php?p=longshirt">Long Shirt</a></li>
								<li><a href="../index.php?p=shortshirt">Short Shirt</a></li>
								<li><a href="../index.php?p=newworkshirt">New Work Shirt</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="dropdown mega-dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Jacket<span class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-2">
							<ul>
								<li class="dropdown-header">Jacket</li>
								<li><a href="../index.php?p=varsityjacket">Varsity Jacket</a></li>
								<li><a href="../index.php?p=coachjacket">Coach Jacket</a></li>
								<li><a href="../index.php?p=hoodiejacket">Hoodie Jacket</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="dropdown mega-dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Pants<span class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-2">
							<ul>
								<li class="dropdown-header">Pants</li>
								<li><a href="../index.php?p=joggerpants">Jogger Pants</a></li>
								<li><a href="../index.php?p=shortpants">Short Pants</a></li>
								<li><a href="../index.php?p=chinopants">Chino Pants</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="../index.php?p=chat">Pesan</a></li>
				<li class="nav navbar-nav top-nav-info">
					<a href="../index.php?p=cart">
						<span class="fa fa-shopping-cart"></span>
						<!-- <h4 class="items"> -->
						<?php 
							if(isset($_SESSION['cart'])) { 
								echo count($_SESSION['cart']) ; 
							}else{
								echo '0'; 
							} 
						?>
						</h4>
					</a>
				</li>
				<li class="dropdown mega-dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Profil<span class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-2">
							<ul>
								<li><a href="../index.php?p=login">Masuk Akun</a></li>
								<li><a href="../index.php?p=register">Daftar Akun</a></li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>
