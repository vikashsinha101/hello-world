<?php

include('connection.php');
$q="select category_name from category";
$res=mysqli_query($con,$q);


?>
<!-- navigation -->
	<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li class="active"><a href="index.php" class="act">Home</a></li>	
									<!-- Mega Menu -->
									
									<?php
									while($arr=mysqli_fetch_assoc($res)){ 
									$t=$arr['category_name'];
									?>
									
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown"><?= $t;?><b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>All <?= $t;?></h6>
														<?php
														$subqry="select * from subcategory where cat_name= '$t'";
														$subres=mysqli_query($con,$subqry);
														while($sa=mysqli_fetch_assoc($subres)){
															$y=$sa['sub_cat_name'];
														?>
														<li><a href='<?=$t; ?>.php	'><?=$y; ?></a></li>
														<?php } ?>
													</ul>
												</div>	
												
											</div>
										</ul>
									</li>
									<?php } ?>
								</ul>
							</div>
							</nav>
			</div>
		</div>
		
<!-- //navigation -->