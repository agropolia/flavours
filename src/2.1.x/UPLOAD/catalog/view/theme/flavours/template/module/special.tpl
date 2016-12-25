<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">


<div class="box-product productbox-grid products-grid" id="special-grid">
  <?php global $config; foreach ($products as $product) { ?>
  <div class="item">
      <div class="item-inner">
       <div class="item-img">
        <div class="item-img-info"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
          <?php if($config->get('tmflavours_sale_label')==1) { 
                 if ($product['price'] && $product['special']) { ?>
          <div class="new-label new-top-left"><?php echo $config->get('tmflavours_sale_labeltitle'); ?></div>
          <?php } } ?>
          <div class="item-box-hover">
            <div class="box-inner">
              
              <?php if($this->config->get('tmflavours_quickview_button') == 1) { ?>
              <div class="product-detail-bnt">                                   
              <a class="button detail-bnt"  onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" title="<?php echo $text_quickview; ?>"><span>Quick View</span></a> 
              </div>
              <?php } ?>
              <div class="actions"><span class="add-to-links"><a style="cursor:pointer" class="link-wishlist" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span>Add to Wishlist</span></a> <a style="cursor:pointer" class="link-compare add_to_compare" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span>Add to Compare</span></a></span> </div>              
            </div>
          </div>
        </div>
      </div>

      <div class="item-info">
        <div class="info-inner">
          <div class="item-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
          <div class="item-content">            
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <div class="item-price">
                <?php if (!$product['special']) { ?>
                <div class="price-box"><span class="regular-price" ><span class="price"><?php echo $product['price']; ?></span> </span> </div>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php /*if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php }*/ ?>
              </div>
              <?php } ?>           
              <div class="add_cart">
                <button class="button btn-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span>Add to Cart</span></button>
              </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  <?php } ?>
</div>


</div>
</div>