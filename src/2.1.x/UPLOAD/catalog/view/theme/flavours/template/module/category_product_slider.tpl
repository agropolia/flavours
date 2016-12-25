<?php global $config; if(isset($categorywise_products1)){ ?>
<div class="slider-items-products">
     <div class="container">
      <div class="row">
            <div class="new_title center">
              <h2><?php echo $category_name1; ?></h2>
            </div>
              <div class="category-banner"><a href="<?php echo $image_link; ?>"><img src="<?php echo HTTP_SERVER.'image/'.$cat_image1; ?>" alt="Shoes Category"></a></div>
            <div id="best-seller-slider" class="product-flexslider hidden-buttons">
              <div class="slider-items slider-width-col4 products-grid-home">              
                <?php foreach ($categorywise_products1 as $product) { ?>
                <!-- Item -->
                <div class="item">
                      <div class="item-inner">
                                <div class="item-img">
                                  <div class="item-img-info"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image"><img src="<?php echo $product['thumb']; ?>" alt="Retis lapen casen"></a>
                                    <div class="item-box-hover">
                                      <div class="box-inner">                                        
                                        <div class="actions">
                                        <div class="add_cart">
                                          <button class="button btn-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span>Add to Cart</span></button>
                                        </div>
                                        <div class="product-detail-bnt"><a class="button detail-bnt" data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" title="Quick View"><span>Quick View</span></a></div> <span class="add-to-links"><a style="cursor:pointer" class="link-wishlist" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span>Add to Wishlist</span></a> 
 <a style="cursor:pointer" class="link-compare add_to_compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span>Add to Compare</span></a></span> </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="item-info">
                                  <div class="info-inner">
                                    <div class="item-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a> </div>
                                    <div class="item-content">
                                      <div class="rating">
                                        <div class="ratings">                                        
											<?php for ($i = 1; $i <= 5; $i++) { ?>
											<?php if ($product['rating'] < $i) { ?>
											<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
											<?php } else { ?>
											<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
											<?php } ?>
											<?php } ?>									
                                          <p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
                                        </div>
                                      </div>
                                      <div class="item-price">
                                        <div class="price-box">

                                        <?php if (!$product['special']) { ?>
										<p class="regular-price"><span class="price-label">Regular Price:</span><span class="price"><?php echo $product['price']; ?></span></p>
										<?php } else { ?>
										<p class="old-price"><span class="price-label">Old Price:</span><span class="price"><?php echo $product['price']; ?></span></p>
										<p class="special-price"><span class="price-label">Special Price</span> <span class="price"><?php echo $product['special']; ?></span></p>
										<?php } ?>
										<?php /* if ($product['tax']) { ?>
										<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
										<?php } */?>
                                          
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                </div>
                <!-- End Item -->
                <?php } //end of foreach ?>
               
              </div>
            </div>
			</div>
			</div>
          </div>
<?php } else { ?>
<div class="slider-items-products">
	<?php echo "please add produsts for category ".$category_name1; ?>
</div>
<?php } ?>