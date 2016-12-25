<div class="main-col">
 <div class="container">
  <div class="row">
   <div class="product-grid-view">
    <div class="col-md-12">
     <div class="std">
      <div class="home-tabs">
       <div class="producttabs">
        <div id="flavours_producttabs1" class="flavours-producttabs">
         <div class="flavours-pdt-container">
          <div class="flavours-pdt-nav">
           <ul class="pdt-nav">
            <li class="item-nav tab-loaded tab-nav-actived" data-href="pdt_best_sales" data-orderby="best_sales" data-catid="" data-type="order">
             <span class="title-navi"><?php echo $heading_title_bestseller;?></span>
            </li>
            <li class="item-nav" data-href="pdt_new_arrivals" data-orderby="new_arrivals" data-catid="" data-type="order">
             <span class="title-navi"><?php echo $heading_title_new;?></span>
            </li>
            <li class="item-nav" data-type="order" data-catid="" data-orderby="new_arrivals" data-href="pdt_featured_pro"> <span class="title-navi"><?php echo $heading_title_featured;?></span> </li>

           </ul>
          </div>
          <div class="flavours-pdt-content wide-4">
          <?php global $config;
          if($bestseller_products) { ?> 
           <div class="pdt-content is-loaded pdt_best_sales tab-content-actived">
            <ul class="pdt-list products-grid zoomOut play">
             <?php $m=0; foreach ($bestseller_products as $product) { ?>
             <li class="item item-animate <?php if($m==0) echo 'wide-first'?> <?php if($m==3) echo 'last'?>">
              <div class="item-inner">
               <div class="item-img">
                <div class="item-img-info"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image"><img src="<?php echo $product['thumb']; ?>" alt="Retis lapen casen"></a>

                 <?php if($config->get('flavourscarera_sale_label')==1){ 
                  if ($product['price'] && $product['special']) { ?>
                  <div class="sale-label sale-top-right">
                   <?php echo $config->get('flavourscarera_sale_labeltitle'); ?> 
                  </div><?php } }?>


                  <div class="item-box-hover">
                  <div class="box-inner">                                        
                   <div class="actions">
                  <?php //if ($product['thumb']) { ?>
                   <div class="add_cart">
                      <button type="button" class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class=""><?php echo $button_cart; ?></span></button>
                    </div>
                    <?php if($config->get('tmflavours_quickview_button') == 1) { ?>
                    <div class="product-detail-bnt">
                        <a onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" data-fancybox-type="ajax" class="button detail-bnt"><span>Quick View</span></a>
                    </div> 
                    <?php } ?>
                    <span class="add-to-links">
                    <a class="link-wishlist" style="cursor:pointer" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></a>

                    <a class="link-compare" style="cursor:pointer" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></a>
                  
                    </span>         
                  
                  <?php //} ?>
                  </div>
                 </div>
                </div>
            </div></div>
                <div class="item-info">
                 <div class="info-inner">

                <div class="item-title"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a> </div>

                  <div class="item-content">

                   <?php //if ($product['rating']) { ?>
                   <div class="rating">
                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                    <?php if ($product['rating'] < $i) { ?>
                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } else { ?>
                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } ?>
                    <?php } ?>
                   </div>
                   <?php //} ?>

                   <?php if ($product['price']) { ?>
                   <div class="item-price">
                    <div class="price-box">
                     <?php if (!$product['special']) { ?>
                     <span class="regular-price"><span class="price"><?php echo $product['price']; ?></span></span>
                     <?php } else { ?>
                     <span class="old-price"><span class="price"><?php echo $product['price']; ?></span></span>
                     <span class="special-price"><span class="price"><?php echo $product['special']; ?></span></span>
                     <?php } ?>
                     <?php /* if ($product['tax']) { ?>
                     <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                     <?php } */?>
                   </div>
                  </div>
                  <?php } ?>

</div>
</div><!-- info-inner -->

 

</div>
</div><!-- item-inner -->
</li>

<?php if($m==3) { $m=0; } else { $m++; }
 } //end for each ?>
</ul>
</div>
<?php } ?>

<?php if($latest_products){ ?>
  <div class="pdt-content pdt_new_arrivals is-loaded">
   <ul class="pdt-list products-grid zoomOut play">
             <?php $j=0; foreach ($latest_products as $product) { ?>
             <li class="item item-animate <?php if($j==0) echo 'wide-first'?> <?php if($j==3) echo 'last'?>">
              <div class="item-inner">
               <div class="item-img">
                <div class="item-img-info"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image"><img src="<?php echo $product['thumb']; ?>" alt="Retis lapen casen"></a>

                 <?php if($config->get('flavourscarera_sale_label')==1){ 
                  if ($product['price'] && $product['special']) { ?>
                  <div class="sale-label sale-top-right">
                   <?php echo $config->get('flavourscarera_sale_labeltitle'); ?> 
                  </div><?php } }?>


                  <div class="item-box-hover">
                  <div class="box-inner">                                        
                   <div class="actions">
                  <?php //if ($product['thumb']) { ?>
                   <div class="add_cart">
                      <button type="button" class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class=""><?php echo $button_cart; ?></span></button>
                    </div>
                    <?php if($config->get('tmflavours_quickview_button') == 1) { ?>
                    <div class="product-detail-bnt">
                        <a onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" data-fancybox-type="ajax" class="button detail-bnt"><span>Quick View</span></a>
                    </div> 
                    <?php } ?>
                    <span class="add-to-links">
                    <a class="link-wishlist" style="cursor:pointer" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></a>

                    <a class="link-compare" style="cursor:pointer" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></a>
                  
                    </span>         
                  
                  <?php //} ?>
                  </div>
                 </div>
                </div>
            </div></div>
                <div class="item-info">
                 <div class="info-inner">

                <div class="item-title"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a> </div>

                  <div class="item-content">

                   <?php //if ($product['rating']) { ?>
                   <div class="rating">
                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                    <?php if ($product['rating'] < $i) { ?>
                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } else { ?>
                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } ?>
                    <?php } ?>
                   </div>
                   <?php //} ?>

                   <?php if ($product['price']) { ?>
                   <div class="item-price">
                    <div class="price-box">
                     <?php if (!$product['special']) { ?>
                     <span class="regular-price"><span class="price"><?php echo $product['price']; ?></span></span>
                     <?php } else { ?>
                     <span class="old-price"><span class="price"><?php echo $product['price']; ?></span></span>
                     <span class="special-price"><span class="price"><?php echo $product['special']; ?></span></span>
                     <?php } ?>
               
                   </div>
                  </div>
                  <?php } ?>
</div>
</div><!-- info-inner -->

 

</div>
</div><!-- item-inner -->
</li>

<?php if($j==3) $j=0; else $j++; } ?>
</ul>
  </div>
<?php } ?>

<?php if($products){ ?>
  <div class="pdt-content pdt_featured_pro is-loaded">
   <ul class="pdt-list products-grid zoomOut play">
             <?php $k=0; foreach ($products as $product) { ?>
             <li class="item item-animate <?php if($k==0) echo 'wide-first'?> <?php if($k==3) echo 'last'?>">
              <div class="item-inner">
               <div class="item-img">
                <div class="item-img-info"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image"><img src="<?php echo $product['thumb']; ?>" alt="Retis lapen casen"></a>

                 <?php if($config->get('flavourscarera_sale_label')==1){ 
                  if ($product['price'] && $product['special']) { ?>
                  <div class="sale-label sale-top-right">
                   <?php echo $config->get('flavourscarera_sale_labeltitle'); ?> 
                  </div><?php } }?>


                  <div class="item-box-hover">
                  <div class="box-inner">                                        
                   <div class="actions">
                  <?php //if ($product['thumb']) { ?>
                   <div class="add_cart">
                      <button type="button" class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class=""><?php echo $button_cart; ?></span></button>
                    </div>
                    <?php if($config->get('tmflavours_quickview_button') == 1) { ?>
                    <div class="product-detail-bnt">
                        <a onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" data-fancybox-type="ajax" class="button detail-bnt"><span>Quick View</span></a>
                    </div> 
                    <?php } ?>
                    <span class="add-to-links">
                    <a class="link-wishlist" style="cursor:pointer" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></a>

                    <a class="link-compare" style="cursor:pointer" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></a>
                  
                    </span>         
                  
                  <?php //} ?>
                  </div>
                 </div>
                </div>
            </div></div>
                <div class="item-info">
                 <div class="info-inner">

                <div class="item-title"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a> </div>

                  <div class="item-content">

                   <?php //if ($product['rating']) { ?>
                   <div class="rating">
                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                    <?php if ($product['rating'] < $i) { ?>
                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } else { ?>
                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } ?>
                    <?php } ?>
                   </div>
                   <?php //} ?>

                   <?php if ($product['price']) { ?>
                   <div class="item-price">
                    <div class="price-box">
                     <?php if (!$product['special']) { ?>
                     <span class="regular-price"><span class="price"><?php echo $product['price']; ?></span></span>
                     <?php } else { ?>
                     <span class="old-price"><span class="price"><?php echo $product['price']; ?></span></span>
                     <span class="special-price"><span class="price"><?php echo $product['special']; ?></span></span>
                     <?php } ?>
                    
                   </div>
                  </div>
                  <?php } ?>
</div>
</div><!-- info-inner -->

 

</div>
</div><!-- item-inner -->
</li>

<?php if($k==3) $k=0; else $k++; } ?>
</ul>
  </div>
<?php } ?>

</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>