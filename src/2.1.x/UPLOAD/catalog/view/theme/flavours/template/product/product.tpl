<?php echo $header; ?>

<div class="page-heading">
  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <?php $b_i=0; $b_cnt=count($breadcrumbs); foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><?php if($b_i!=0) { ?><span>—› </span><?php } ?>
              <?php if($b_i!=($b_cnt-1)){ ?>
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

<div class="main-container col1-layout">
  <div class="main">
    <div class="col-main">
    <!-- <div class="row"> -->
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php //echo $class; ?>">
      <?php //echo $content_top; ?>
      
      <div class="product-view wow bounceInUp animated">
        <div class="product-essential container">
          
          <?php if ($thumb || $images) { ?>
            <div class="product-img-box col-sm-6 col-xs-12">
            <?php global $config;if($config->get('tmflavours_sale_label')==1)
            { if ($price && $special) { ?>
            <div class="new-label new-top-left"><?php echo $config->get('tmflavours_sale_labeltitle'); ?> </div> <?php } } ?>

            <div class="product-image">
            <div class="large-image"><!--  <a href="products-images/p15.jpg" class="cloud-zoom" id="zoom1" rel="useWrapper: false, adjustY:0, adjustX:20"> <img src="products-images/p15.jpg"> </a>  -->

            <a style="position: relative; display: block;" href="<?php echo $popup; ?>" class="cloud-zoom" id="zoom1" rel="useWrapper: false, adjustY:0, adjustX:20"> 
                <img style="display: block;" src="<?php echo $popup; ?>" alt="" title="" class="zoom_img_image"> 
            </a> 
                          
            </div>
            <div class="flexslider flexslider-thumb">
              <ul class="previews-list slides">
                <?php foreach ($images as $image) { ?>
                <li><a href='<?php echo $image['popup']; ?>' class='cloud-zoom-gallery' title='Thumbnail 1'
                rel="useZoom: 'zoom1', smallImage: '<?php echo $image['popup']; ?>' ">
                <img src="<?php echo $image['popup']; ?>" alt = "Thumbnail 1"/></a></li>
                <?php } ?>               
              </ul>
            </div>
            </div>
            <!-- end: more-images -->
            </div>

          <!--div class="product-img-box col-lg-5 col-sm-5 col-xs-12">
            <?php global $config;if($config->get('tmflavours_sale_label')==1)
                { if ($product['price'] && $product['special']) { ?>
                  <div class="new-label new-top-left"><?php echo $config->get('tmflavours_sale_labeltitle'); ?> </div> <?php } } ?>
            <div class="product-image">
              <div class="largeImg_wrap">
                    <div id="wrap" style="top:0px;z-index:700;position:relative;">
                      <a style="position: relative; display: block;" href="<?php echo $popup; ?>" class="cloud-zoom" id="zoom1" rel="position: 'inside'"> 
                        <img style="display: block;" src="<?php echo $popup; ?>" alt="" title="" class="zoom_img_image"> 
                      </a> 
                     
                    </div>
                  </div>
            </div> 

                  <div class="more-views">
                  <div class="slider-items-products">
                    <div id="more-views-slider" class="product-flexslider hidden-buttons">
                      <div class="slider-items slider-width-col3"> 
                      <?php foreach ($images as $image) { ?>
                        <a href='<?php echo $image['popup']; ?>' class='cloud-zoom-gallery' title='Thumbnail 1'
                        rel="useZoom: 'zoom1', smallImage: '<?php echo $image['popup']; ?>' ">
                        <img src="<?php echo $image['popup']; ?>" alt = "Thumbnail 1"/></a>
                        <?php } ?>  
                       </div>
                    </div>
                  </div>
                </div>

          </div--><!-- product-img-box -->
          <?php } ?>
          
          <div class="product-shop col-sm-6 col-xs-12">
            <div class="product-name"><h2><?php echo $name; ?></h2></div>

            <?php if ($review_status) { ?>
            <div class="ratings">
            <div class="rating">
            <p>
            <?php for ($i = 1; $i <= 5; $i++) { ?>
            <?php if ($rating < $i) { ?>
            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
            <?php } else { ?>
            <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
            <?php } ?>
            <?php } ?>
            <a href="" onclick="$('a[href=\'#reviews_tabs\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#reviews_tabs\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>

            </div>
            </div>
            <?php } ?>

            <!-- <div class="availability in-stock pull-right">
              <?php echo $stock; ?>
            </div> -->
            <div class="price-block">    
          <?php if ($price) { ?>
          <div class="list-unstyled price-box">
            
            <?php if (!$special) { ?>
            <span class="price-new price"><?php echo $price; ?></span>
            <?php } else { ?>
            <span class="price-old price"><?php echo $price; ?></span>
            <span class="price-new price"><?php echo $special; ?></span>
            <?php } ?>
            
            <?php if ($tax) { ?>
            <div class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></div>
            <?php } ?>
            
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            
            <?php if ($discounts) { ?>
            <li>
            <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </div>
          <?php } ?>

          <p class="availability in-stock">
          <link itemprop="availability" href="http://schema.org/InStock">
          <span><?php echo $stock; ?></span>
          </p>
          </div>

           <div class="list-unstyled short-description">
            <?php if ($manufacturer) { ?>
            <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br>
            <?php } ?>
            <span><?php echo $text_model; ?></span> <?php echo $model; ?><br>
            <?php if ($reward) { ?>
            <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br>
            <?php } ?>
            
            </div>

            <div id="product">

                <?php if ($options) { ?>
                <hr>
                <h3><?php echo $text_option; ?></h3>
                <?php foreach ($options as $option) { ?>
                <?php if ($option['type'] == 'select') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
                </select>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'radio') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label"><?php echo $option['name']; ?></label>
                <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                <label>
                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                <?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </label>
                </div>
                <?php } ?>
                </div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'checkbox') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label"><?php echo $option['name']; ?></label>
                <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                <label>
                <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                <?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </label>
                </div>
                <?php } ?>
                </div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'image') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label"><?php echo $option['name']; ?></label>
                <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                <label>
                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </label>
                </div>
                <?php } ?>
                </div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'text') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'textarea') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'file') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label"><?php echo $option['name']; ?></label>
                <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'date') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'datetime') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'time') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
                </div>
                <?php } ?>
                <?php } ?>
                <?php } ?> 

                <?php if ($recurrings) { ?>
                <hr>
                <h3><?php echo $text_payment_recurring ?></h3>
                <div class="form-group required">
                <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
                </select>
                <div class="help-block" id="recurring-description"></div>
                </div>
                <?php } ?>

                <?php if ($minimum > 1) { ?>
                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                <?php } ?>

         
          <div class="add-to-box">
                       
            <div class="add-to-cart">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <div class="pull-left">
                <div class="custom pull-left">
                    <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="qty" class="input-text qty" maxlength="12"/>
                    
                    <button class="increase items-count" onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" type="button">
                    <i class="icon-plus"> </i>
                    </button>
                    
                    <button class="reduced items-count" onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) && qty > 0 ) result.value--;return false;" type="button">
                    <i class="icon-minus"> </i>
                    </button>
                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                </div>
                </div> 

                <div class="pull-left">
                  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="button btn-cart"><span><?php echo $button_cart; ?></span></button>
                </div>
              
            </div>
            
          <div class="email-addto-box">
          <ul class="add-to-links">
          <li><a class="link-wishlist" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');">
          <span><?php echo $button_wishlist; ?></span>
          </a></li>
          <li><a class="link-compare"  title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');">
          <span><?php echo $button_compare; ?></span>
          </a></li>
          </ul>
          </div>

          </div>


          <?php if ($review_status) { ?>
          <hr>
          <!-- AddThis Button BEGIN -->
          <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
          <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script> 
          <!-- AddThis Button END --> 
          <?php }  ?>

            </div><!-- product -->
          </div><!-- product-shop -->

        </div><!-- product-essential -->
      </div><!-- product-view -->

    <div class="product-collateral container wow bounceInUp animated">
          <!-- <div class="col-sm-12"> -->
            <ul id="product-detail-tab" class="nav nav-tabs product-tabs">
              <li> <a href="#product_tabs_description" data-toggle="tab"><?php echo $tab_description; ?></a> </li>
              
              <?php if ($attribute_groups) { ?>
              <li class="active"> <a href="#attribute_groups" data-toggle="tab"><?php echo $tab_attribute; ?></a> </li>
              <?php } ?>
              
              <?php if ($tags) { ?>
              <li><a href="#product_tabs_tags" data-toggle="tab"><?php echo $text_tags; ?></a></li>
              <?php }?>

              <?php if ($review_status) { ?>
              <li><a href="#reviews_tabs" data-toggle="tab"><?php echo $tab_review; ?></a></li>
              <?php } ?>

              <?php global $config; if ($config->get('tmflavours_product_ct')) { ?>
              <li><a href="#product_tabs_custom" data-toggle="tab"><?php echo $config->get('tmflavours_product_cttitle'); ?></a></li>
              <?php }?>

              <?php if ($config->get('tmflavours_product_ct2')) { ?>
              <li><a href="#product_tabs_custom1" data-toggle="tab"><?php echo $config->get('tmflavours_product_ct2title'); ?></a></li>
              <?php }?>
              
            </ul>

          <div id="productTabContent" class="tab-content">
            
            <div class="tab-pane fade" id="product_tabs_description">
                <div class="std"><?php echo $description; ?></div>
            </div>

            <?php if ($attribute_groups) { ?>
            <div class="tab-pane fade in active" id="attribute_groups">
              <table class="table table-bordered">
              <?php foreach ($attribute_groups as $attribute_group) { ?>
              <thead>
              <tr>
              <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
              </tr>
              </thead>
              <tbody>
              <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
              <tr>
              <td><?php echo $attribute['name']; ?></td>
              <td><?php echo $attribute['text']; ?></td>
              </tr>
              <?php } ?>
              </tbody>
              <?php } ?>
              </table>
            </div>
            <?php } ?>

            <?php if ($tags) { ?>
            <div class="tab-pane fade" id="product_tabs_tags">
              <table class="table table-bordered">
                <?php for ($i = 0; $i < count($tags); $i++) { ?>
                <?php if ($i < (count($tags) - 1)) { ?>
                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                <?php } else { ?>
                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                <?php } ?>
                <?php } ?>
              </table> 
            </div>
            <?php } ?>

            <?php if ($review_status) { ?>
            <div class="tab-pane fade" id="reviews_tabs">
                <form class="form-horizontal">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                <div class="col-sm-12">
                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                <input type="text" name="name" value="" id="input-name" class="form-control" />
                </div>
                </div>
                <div class="form-group required">
                <div class="col-sm-12">
                <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                <div class="help-block"><?php echo $text_note; ?></div>
                </div>
                </div>
                <div class="form-group required">
                <div class="col-sm-12">
                <label class="control-label"><?php echo $entry_rating; ?></label>
                &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                <input type="radio" name="rating" value="1" />
                &nbsp;
                <input type="radio" name="rating" value="2" />
                &nbsp;
                <input type="radio" name="rating" value="3" />
                &nbsp;
                <input type="radio" name="rating" value="4" />
                &nbsp;
                <input type="radio" name="rating" value="5" />
                &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>                
                <div class="buttons">
                <div class="">
                <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="button continue btn btn-primary"><?php echo $button_continue; ?></button>
                </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
                </form>
            </div>
            <?php } ?>

            <?php if ($config->get('tmflavours_product_ct')) { ?>
            <div class="tab-pane fade" id="product_tabs_custom">
            <?php echo html_entity_decode($config->get('tmflavours_product_ctcontent'));?>
            </div>
            <?php } ?>

            <?php if ($config->get('tmflavours_product_ct2')) { ?>
            <div class="tab-pane fade" id="product_tabs_custom1">
            <?php echo html_entity_decode($config->get('tmflavours_product_ct2content'));?>
            </div>
            <?php } ?> 

          </div><!-- productTabContent -->
          <!-- </div> -->
    </div><!-- product-collateral --><?php //echo $column_right; ?>
    </div><!-- content -->
   <!-- </div> --><!-- row -->
  </div><!-- col-main -->
</div><!-- main container -->
</div><!-- main-container col1-layout -->


<?php if ($products) { ?>
<div class="box-additional">
<div class="related-pro container">
<div class="slider-items-products wow bounceInDown animated">
  <div class="new_title center">
    <h2><?php echo $text_related; ?></h2>
  </div> 
  <div class="container">
    <div class="slider-items-products">  

      <div id="related-slider" class="product-flexslider hidden-buttons">
        <div class="slider-items slider-width-col4 products-grid">
          <?php foreach ($products as $product) { ?>
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
      </div><!-- related-products-slider -->

    </div><!-- slider-items-products -->
  </div><!-- container -->
</div><!-- slider-items-products wow bounceInDown animated -->
</div>
</div>
<?php } ?>  
<?php echo $content_bottom; ?>    

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			
			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			
			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow');
				
				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
	$('#form-upload input[name=\'file\']').trigger('click');
	
	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
			
			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();
					
					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}
					
					if (json['success']) {
						alert(json['success']);
						
						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
			$('#captcha').attr('src', 'index.php?route=tool/captcha#'+new Date().getTime());
			$('input[name=\'captcha\']').val('');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();
			
			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}
			
			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
				
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script> 

<?php echo $footer; ?>