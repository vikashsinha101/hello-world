<?php

include('connection.php');
?>
<!-- breadcrumbs -->
	<!--<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Groceries</li>
			</ol>
		</div>
	</div>-->
<!-- //breadcrumbs -->

<!--- groceries --->
	<div class="products">
		<div class="container">
			<div class="col-md-4 products-left">
				<div class="categories">
					<h2>Categories</h2>
					<ul class="cate">
					<?php
					$q="select * from category";
					$res=mysqli_query($con,$q);
					while($arr=mysqli_fetch_assoc($res)){
						$cat=$arr['category_name'];
					?>
						<li><a href="<?= $cat; ?>.php"><i class="fa fa-arrow-right" aria-hidden="true"></i><?= $arr['category_name']; ?></a></li>
							<ul>
							<?php
							$qq="select * from subcategory where cat_name='$cat'";
							$rr=mysqli_query($con,$qq);
							while($aaa=mysqli_fetch_assoc($rr)){
							?>
							<li><a href="<?=$cat;?>.php"><i class="fa fa-arrow-right" aria-hidden="true"></i><?=$aaa['sub_cat_name']; ?></a></li>
							<?php } ?>
							</ul>
					<?php } ?>
					</ul>
				</div>																																												
			</div>
			<div class="col-md-8 products-right">
				<div class="products-right-grid">
					<div class="products-right-grids">
						<div class="sorting">
							<select id="country" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Default sorting</option>
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sort by popularity</option> 
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sort by average rating</option>					
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sort by price</option>								
							</select>
						</div>
						<div class="sorting-left">
							<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Item on page 9</option>
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Item on page 18</option> 
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Item on page 32</option>					
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>All</option>								
							</select>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				
					
				