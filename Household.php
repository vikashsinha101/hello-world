<?php
include('connection.php');
include('header.php');
include('menu.php');
include('sidebar.php');

$q="select * from product where p_category='Household'";
$res=mysqli_query($con,$q);
?>

<div class="agile_top_brands_grids">

		<?php
		while($arr=mysqli_fetch_assoc($res)){
			$discount=$arr['price']-$arr['sale_price'];
		?>
    	<form action="add.php" method="post">
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.html"><img title=" " alt=" " src="img/<?= $arr['image'];?>"></a>		
												<p><?= $arr['p_name'];?></p>
												<h4>Rs<?= $arr['sale_price'];?><span>Rs <?=$arr['price'];?></span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
											
													<fieldset>
													
														<input type="hidden" name="item" value="<?= $arr['p_name'];?>">
                                                        
														<input type="hidden" name="price" value="<?= $arr['sale_price'];?>">
                                                        
														<input type="submit" name="submit" value="Add to cart" class="button">
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
		<?php } ?>
				</div>
				
				


<nav class="numbering">
					<ul class="pagination paging">
						<li>
							<a href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li>
							<a href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!--- groceries --->
<?php
include('footer.php');
?>