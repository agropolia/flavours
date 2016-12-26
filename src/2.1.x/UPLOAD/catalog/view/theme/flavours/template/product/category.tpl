<?php echo $header; global $config; ?>
<div class="page-heading">
  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <?php $b_i=0; $b_cnt=count($breadcrumbs); foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><?php if($b_i!=0) {?><span>—› </span><?php } ?>
              <?php if($b_i==($b_cnt-1)){ ?>
              <strong><?php echo $breadcrumb['text']; ?></strong><?php } 
              else { ?>
              <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
              <?php }?>
            </li>
            <?php $b_i++ ;} ?>
          </ul>
        </div>
        <!--col-xs-12--> 
      </div>
      <!--row--> 
    </div>
    <!--container--> 
  </div>
  <div class="page-title">
    <h1><?php echo $heading_title; ?></h1>
  </div>
</div>

<section class="main-container col2-left-layout">
  <div class="main container">
      <div class="row">
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-main col-sm-9 wow bounceInUp animated'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?> col-main"><?php //echo $content_top; ?>
      <!-- section start -->      
         <div class="pro-coloumn">
          <article class="col-main">
          <?php  if ($categories) { ?>
          <div class="category-list">
          <h3><?php echo $text_refine; ?></h3>
          <?php //if (count($categories) <= 5) { ?>
          <div class="row">
          <div class="col-sm-12">
          <ul>
          <?php foreach ($categories as $category) { ?>
          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
          </ul>
          </div>
          </div>
          <?php /*} else { ?>
          <div class="row">
          <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
          <div class="col-sm-3">
          <ul>
          <?php foreach ($categories as $category) { ?>
          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
          </ul>
          </div>
          <?php } ?>
          </div>
          <?php } */ ?> 
          </div>
          <?php }  ?>

           <div class="category-products">
           

        <?php if ($products) { ?>
                <div class="toolbar">
        <div class="sorter">
          <div class="view-mode">
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>

            <a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a>
          </div>
        </div>

      </div><!-- toolbar -->
                <div class="row products-grid">
                <?php foreach ($products as $product) { ?>
                 <div class="product-layout product-list col-xs-12">
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
                </div>
                <?php } ?>
              </div>
                <?php } ?>
                
          </div><!-- CATEGORY PRODUCT END -->

              <div class="category-description std">
                <div class="item">
                <?php if ($thumb) { ?>
                <img src="<?php echo $thumb; ?>">
                <?php }?>

                <?php if ($description) { ?>
                 <div class="col-sm-12"><?php echo $description; ?></div>
                <?php } ?>
                </div>
              </div><!-- category-description std -->


         <?php if ( !$products) { ?>
          <p><?php echo $text_empty; ?></p>
          <div class="buttons">
            <div class="pull-right"><a href="<?php echo $continue; ?>"><button type="button" class="button"><?php echo $button_continue; ?></button></a></div>
          </div>
          <?php } ?>


          </div><!-- content -->
        </article>
      </div>    
      </div><!-- row -->
  </div><!-- container -->
</section>


<?php echo $footer; ?>