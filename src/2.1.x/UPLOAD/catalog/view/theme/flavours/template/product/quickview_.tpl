
<script src="catalog/view/theme/flavours/js/cloud-zoom1.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link media="screen" rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css">
<link href="catalog/view/theme/flavours/js/fancybox/jquery.fancybox.css" rel="stylesheet">
<script src="catalog/view/theme/flavours/js/fancybox/jquery.fancybox.js" type="text/javascript"></script>
<link media="screen" rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/magnific/magnific-popup.css">



<div class="magik-quickview">
<div id="notification1"></div>

      <div class="product-view" itemscope="" itemtype="#" itemid="#product_base">
        <div class="row product-essential">
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>
        

        
      <?php if ($thumb || $images) { ?>
      <div class="product-img-box">      
      <!--   <div class="image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div> -->    
        
           <ul class="cloud_zoom" id="etalage">        
             <?php if ($thumb) { ?>
             <li class="zoom_img">
              <img src="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" class="zoom_img_image" />
             <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" class="zoom_source_image" />
             <span class="roll-over">Roll over image to zoom in</span>
             </li> 
             <?php } ?>
          <?php if ($images) { ?>
          <?php foreach ($images as $image) { ?>
          <li class="zoom_img">
            <img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="zoom_img_image" />
            <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="zoom_source_image" />
            <span class="roll-over">Roll over image to zoom in</span>
          </li>
          <?php } ?>
             <div class="zoom-control"> <a href="javascript:void(0)" class="zoom-prev" style="right: 69.5px;">Previous</a> <a href="javascript:void(0)" class="zoom-next" style="right: 69.5px;">Next</a> </div>
           <?php } ?>
          </ul>
      </div>
      <?php } ?>

        <?php /* ?>
        <div class="<?php echo $class; ?> product-img-box">
          

          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          

        </div><?php */ ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?> product-shop product-info">
          <div class="product-name"><h1><?php echo $heading_title; ?></h1></div>
          
          <div class="list-unstyled short-description">
            <?php if ($manufacturer) { ?>
            <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br>
            <?php } ?>
            <span><?php echo $text_model; ?></span> <?php echo $model; ?><br>
            <?php if ($reward) { ?>
            <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br>
            <?php } ?>
            <span><?php echo $text_stock; ?></span> <?php echo $stock; ?><br>
          </div>

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
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
           
            </div>
          </div>
          <?php } ?>

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
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="qty" class="form-control input-text" maxlength="12"/>
<button class="increase items-count" onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" type="button">
                    <i class="icon-plus"> </i>
                    </button>
                    
                    <button class="reduced items-count" onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) && qty > 0 ) result.value--;return false;" type="button">
                    <i class="icon-minus"> </i>
                    </button>
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block button btn-cart"><?php echo $button_cart; ?></button>
            </div>
            
<div class="email-addto-box">
<ul class="add-to-links">
<li><a class="link-wishlist tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');">
<span><?php echo $button_wishlist; ?></span>
</a></li>
<li><a class="link-compare tooltip"  title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');">
<span><?php echo $button_compare; ?></span>
</a></li>
</ul>
</div>

            
            
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>

            <!-- toggle-content -->

</div>
    
</div>
</div><!-- product-essential -->
</div>      
</div><!-- magik-quickview -->

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



<!-- here datetime picker -->

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
</script>

<script type="text/javascript">
    jQuery(document).ready(function(){
        var width = jQuery('.product-view .product-img-box').width() * 0.99;
        var src_img_width = 60;
        var src_img_height = 85;
        var ratio_width = 400;
        var ratio_height = 486;
        
        src_img_width = 100 * ratio_width / ratio_height;
        var height = width * ratio_height / ratio_width;

        jQuery('#etalage').cloud_zoom({
            thumb_image_width: width,
            thumb_image_height: height,
            source_image_width: src_img_width,
            source_image_height: src_img_height,
            zoom_area_width: width,
            zoom_area_height: height,
            zoom_enable: false,
            smallthumb_hide_single: false,
            smallthumbs_position: 'bottom',
            show_icon: false,
            autoplay: false
        });
        jQuery(".product-img-box .cloud_zoom li.zoom_img").zoom();
        jQuery('.product-view .product-img-box .zoom-control a').css('right',((jQuery('.zoom_small_thumbs img').first().width())/2-3)+"px");
        if(jQuery('.zoom_small_thumbs').width() == 0)
            jQuery('.product-view .product-img-box .zoom-control a').css('right',((jQuery('.zoom_small_thumbs img').first().width())/2-3)+"px");
        jQuery(window).resize(function(e){
            var width = jQuery('.product-view .product-img-box').width() * 0.99;
            var height = width * ratio_height / ratio_width;
            zoom_enabled = false;
            if(jQuery(window).width()<500)
                zoom_enabled = false;
            jQuery('#etalage').cloud_zoom({
                thumb_image_width: width,
                thumb_image_height: height,
                source_image_width: src_img_width,
                source_image_height: src_img_height,
                zoom_area_width: width,
                zoom_area_height: height,
                zoom_enable: zoom_enabled,
                smallthumb_hide_single: false,
                smallthumbs_position: 'bottom',
                show_icon: true,
                autoplay: false
            });
            jQuery('.product-view .product-img-box .zoom-control a').css('right',((jQuery('.zoom_small_thumbs').width())/2)+"px");
        });
        jQuery('.zoom-prev').on('click', function(){
            etalage_previous();
        });

        jQuery('.zoom-next').on('click', function(){
            etalage_next();
        });
    });
</script>

<style type="text/css">
.cloud_zoom .zoom_img {
  cursor: pointer;
  left: 135px;
}
/* Small thumbnails: */
.cloud_zoom .zoom_small_thumbs li {
  margin: 10px;
  margin-bottom: 8px !important;
  cursor: pointer;
}
.cloud_zoom, .zoom_img, .zoom_img_image, .zoom_source_image, .product_zoom_preview {
  display: none
}
.cloud_zoom, .cloud_zoom ul, .cloud_zoom li, .cloud_zoom img {
  margin: 0;
  padding: 0;
  border: 0;
  list-style: none
}
.cloud_zoom, .zoom_small_thumbs ul, ul .zoom_small_thumbs li, .product_zoom_area div, .pr_zoom_img {
  position: relative
}
.cloud_zoom img, .cloud_zoom li {
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -o-user-select: none;
  -webkit-user-drag: none;
  -moz-user-drag: none;
}
.cloud_zoom, .zoom_small_thumbs li {
  float: left
}
.zoom_right {
  float: right
}
.cloud_zoom li {
  position: absolute;
  margin-left: 0 !important;
}
.cloud_zoom img {
  vertical-align: bottom;
  max-width: none
}
.zoom_small_thumbs {
  overflow: hidden
}
.zoom_small_thumbs li.vertical {
  float: none
}
.product_zoom_area {
  z-index: 2
}
.product_zoom_area div {
  overflow: hidden;
  z-index: 997
}
.product_zoom_preview {
  position: absolute;
  z-index: 998
}
.pr_zoom_img {
  z-index: 999
}
.cloud_zoom {
  direction: ltr
}
.zoom-control a {
  position: absolute;
  left: auto;
  background-image: url(../image/pagenation.png);
  background-repeat: no-repeat;
  text-indent: -9999px;
  width: 26px;
  height: 26px;
  background-color: transparent;
}
.zoom-control a.zoom-prev {
  background-position: 0px 0px;
  top: -15px;
  left: 60px;
}
.zoom-control a.zoom-next {
  background-position: 0px -26px;
  bottom: -10px;
  left: 60px;
}
.zoom-control a.zoom-prev:hover {
  background-position: -26px 0px;
}
.zoom-control a.zoom-next:hover {
  background-position: -26px -26px;
}
.cloud_zoom .roll-over {
  position: absolute;
  bottom: 10px;
  left: 10px;
  font-size: 13px;
  color: #888;
  background: url(../image/roll_over.png) no-repeat 0 3px;
  text-indent: 20px;
}
.cloud_zoom .roll-over .roll-over-desc {
  margin-left: 20px;
}
.cloud_zoom .zoom_img {
  border: solid 0px #e0e0e0;
  width: 380px;
}
.cloud_zoom .zoom_small_thumb {
  border: solid 1px #e0e0e0;
}
.product-view {
  margin-top: 12px;
  margin: auto;
  position: relative;
  z-index: 0;
  overflow: hidden;
}
.product-essential {
  margin-top: 15px;
  background-color: #FFFFFF;
  overflow: hidden;
}
.product-collateral .box-collateral {
  margin: 0 0 15px;
}
.product-essential .product-image.no-gallery {
  margin-left: auto;
}
.product-essential .product-image img {
  height: auto;
  width: 350px;
}
.product-essential .button-viewall {
  position: absolute;
  left: 5px;
  bottom: 5px;
  text-indent: -999em;
  z-index: 9999;
}
.more-views {
  margin: 18px auto 0;
  width: 340px;
  clear: both;
}
.more-views li {
  float: left;
  margin: 0 10px 0 0;
}
.more-views li a {
  display: block;
  text-align: center;
  width: 75px;
  border: 1px #ddd solid;
  height: 75px;
}
.more-views li a img {
  padding: 0px;
  width: 75px;
  height: 75px;
}
.more-views .jcarousel-next:before {
  content: "\f105";
  font-family: FontAwesome;
  font-size: 26px;
  padding-right: 5px;
  vertical-align: top;
  right: -20px;
  top: 20px;
  display: inline-block!important;
  position: absolute;
  cursor: pointer;
}
.more-views .jcarousel-prev:before {
  content: "\f104";
  font-family: FontAwesome;
  font-size: 26px;
  padding-right: 5px;
  vertical-align: top;
  left: -20px;
  top: 20px;
  display: inline-block!important;
  position: absolute;
  cursor: pointer;
}
.more-views .jcarousel-clip {
  overflow: hidden;
}
</style>