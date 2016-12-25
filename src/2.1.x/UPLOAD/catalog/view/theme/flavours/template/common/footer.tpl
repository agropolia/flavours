<?php global $config; 

$facebookurl=$config->get('tmflavours_fb');
$twitterurl=$config->get('tmflavours_twitter');
$gplusurl=$config->get('tmflavours_gglplus');
$rssurl=$config->get('tmflavours_rss');
$pintresturl=$config->get('tmflavours_pinterest');
$linkedinurl=$config->get('tmflavours_linkedin');
$youtubeurl=$config->get('tmflavours_youtube');

if (isset($this->request->get['route'])) { 
        $route = $this->request->get['route']; 
    } else { 
        $route = 'common/home'; 
    }
?>
<?php if($route=='common/home' || $route=='home') { ?>
<div class="brand-logo wow bounceInUp animated">
  <div class="container">
    <div class="row">
    <div class="logo-brand col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <div class="new_title">
      <h2>Brand Logo</h2>
    </div>
      <div class="slider-items-products">
        <div id="brand-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col6">
            <?php $i=0; foreach ($tmmanufacturers as $tmmanufacturer){ ?>
               <?php if($i==0) { ?> 
               <div class="item"> 
               <?php } ?> 
                <div class="logo-item"><a href="<?php echo str_replace('&', '&amp;', $tmmanufacturer['href']); ?>" title="<?php echo $tmmanufacturer['tmname']; ?>"><img src="<?php echo $tmmanufacturer['tmmanufacturer_image']; ?>" title="<?php echo $tmmanufacturer['tmname']; ?>" alt="<?php echo $tmmanufacturer['tmname']; ?>"/></a>
                </div>
               <?php if($i==1) { $i=0; ?>  
               </div>               
               <?php } else { $i++; } ?>
            <?php 
             } ?>                 
          </div>
        </div>
      </div>
      </div>
      <?php echo $footer_right; ?>
    </div>
  </div>
</div>
<?php } ?>

<?php //echo $footer_bottom; ?>

<?php if ($config->get('tmflavours_footer_cb')) { ?>       
<?php echo html_entity_decode($config->get('tmflavours_footer_cbcontent'));?>
<?php } ?>


<footer>
  <!-- BEGIN INFORMATIVE FOOTER -->
<div class="footer-inner">
  <div class="newsletter-row">
    <div class="container">
      <div class="row"> 
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 col"> 
          <!-- Footer Payment Link -->
          <div class="payment-accept">
            <div><img src="catalog/view/theme/flavours/image/payment-1.png" alt="payment1"> <img src="catalog/view/theme/flavours/image/payment-2.png" alt="payment2"> <img src="catalog/view/theme/flavours/image/payment-3.png" alt="payment3"> <img src="catalog/view/theme/flavours/image/payment-4.png" alt="payment4"></div>
          </div>
        </div>
        <!-- Footer Newsletter -->
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 col1">
         <?php if($this->config->get('newslettersubscription_status')==1) {
                echo $newslettersubscription; 
            }    
         ?>
        </div>        
      </div>
    </div>
    <!--footer-column-last--> 
  </div>
    <div class="container">
      <div class="row">
        <div class="col-sm-4 col-xs-12 col-lg-4">
          <div class="co-info">
            <div>
             <a href="index.html"><img src="catalog/view/theme/flavours/image/logo.png" alt="footer logo"></a>          
            </div>
            <address>
            <?php if ($config->get('tmflavours_address')):?>            
            <div><em class="icon-location-arrow"></em> <span><?php echo $config->get('tmflavours_address'); ?></span></div>            
            <?php endif; ?>
            <?php if ($config->get('tmflavours_phone')) : ?>
            <div> <em class="icon-mobile-phone"></em><span><?php echo $config->get('tmflavours_phone'); ?></span></div>
            <?php endif; ?>
            <?php if ($config->get('tmflavours_email')): ?>
            <div> <em class="icon-envelope"></em><span><a href="mailto:<?php echo $config->get('tmflavours_email');?>"><?php echo $config->get('tmflavours_email'); ?></a><span></span></div>
            <?php endif; ?>
            </address>

            <div class="social">
              <ul class="link">
                <?php if($facebookurl!='') { ?>
                <li class="fb pull-left"><a href="<?php echo $facebookurl; ?>" target="_blank"></a></li>
                <?php } ?>
                <?php if($twitterurl!='') { ?>
                <li class="tw pull-left"><a href="<?php echo $twitterurl; ?>" target="_blank"></a></li>
                <?php } ?>
                <?php if($gplusurl!='') { ?>
                <li class="googleplus pull-left"><a href="<?php echo $gplusurl; ?>" target="_blank"></a></li>
                <?php } ?>
                <?php if($rssurl!='') { ?>
                <li class="rss pull-left"><a href="<?php echo $rssurl; ?>" target="_blank"></a></li>
                <?php } ?>
                <?php if($pintresturl!='') { ?>
                <li class="pintrest pull-left"><a href="<?php echo $pintresturl; ?>" target="_blank"></a></li>
                <?php } ?>
                <?php if($linkedinurl!='') { ?>
                <li class="linkedin pull-left"><a href="<?php echo $linkedinurl; ?>" target="_blank"></a></li>
                <?php } ?>
                <?php if($youtubeurl!='') { ?>
                <li class="youtube pull-left"><a href="<?php echo $youtubeurl; ?>" target="_blank"></a></li>
                <?php } ?>                
              </ul>
            </div>
          </div>
    </div>
    
     <div class="col-sm-8 col-xs-12 col-lg-8">
          <div class="footer-column">
            <h4><?php echo $text_service; ?></h4>
            <ul class="links">
              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
              <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
              <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            </ul>
          </div>
          <div class="footer-column">
            <h4><?php echo $text_extra; ?></h4>
            <ul class="links">
              <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
              <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
              <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
              <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
            </ul>
          </div>
          <?php if ($informations) { ?>
          <div class="footer-column">
            <h4><?php echo $text_information; ?></h4>
            <ul class="links">
              <?php foreach ($informations as $information) { ?>
                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <?php } ?>
    
    
        </div>
   
        <!--col-sm-12 col-xs-12 col-lg-8-->
        <!--col-xs-12 col-lg-4-->
      </div>
      <!--row-->
  
    </div>
  
    <!--container-->
  </div>
  <!--footer-inner-->
  
  <div class="footer-middle">
    <div class="container">
      <div class="row">
        <div class="row"> </div>
      </div>
      <!--row-->
    </div>
    <!--container-->
  </div>
  <!--footer-middle-->
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-xs-12 coppyright">
        <?php  
        if(trim($config->get('tmflavours_powerby')) != '') {
          echo html_entity_decode($config->get('tmflavours_powerby'));
        } else {
          echo $powered;
        }
        ?>
        </div>
       
      </div>
      <!--row-->
    </div>
    <!--container-->
  </div>
  <!--footer-bottom-->
  <!-- BEGIN SIMPLE FOOTER -->
  <div id="mgkquickview">
<div id="magikloading" style="display:none;text-align:center;margin-top:400px;"><img src="catalog/view/theme/flavours/image/loading.gif" alt="loading">
</div></div>

</footer>
<!-- End For version 1,2,3,4,6 -->
</div><!-- page -->

<div id="mobile-menu">
  <ul>
    <?php if($config->get('tmflavours_home_option')==1){ ?>
      <li>
        <div class="home"><a href="<?php echo $home;?>" class="active"><i class="icon-home"></i>Home</a></div>
      </li><?php }?>

      <?php foreach ($categories1 as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php if ($category['children']) { ?>
        <ul>
          <?php for($i=0;$i<count($category['children']);$i++){ ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
              <?php if($category['children'][$i]['children']) {?>
              <ul>
                <?php for($j=0;$j<count($category['children'][$i]['children']);$j++) { ?>
                <li><a href="<?php echo $category['children'][$i]['children'][$j]['href']; ?>"><?php echo $category['children'][$i]['children'][$j]['name']; ?></a></li>
                <?php }?>
              </ul>
              <?php }?> 
          </li>
          <?php }?>
        </ul>
        <?php }?>
      </li>
      <?php } ?>
  </ul>
</div><!-- mobile-menu -->

<?php if($config->get('tmflavours_scroll_totop') == 1) { ?>   
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<!-- child of the body tag -->
<span id="top-link-block" class="hidden">
    <a href="#top" class="well well-sm" onclick="$('html,body').animate({scrollTop:0},'slow');return false;">
        <i class="glyphicon glyphicon-chevron-up"></i> Back to Top
    </a>
</span><!-- /top-link-block -->
<script>
// Only enable if the document has a long scroll bar
// Note the window height + offset
if ( ($(window).height() + 100) < $(document).height() ) {
    $('#top-link-block').removeClass('hidden').affix({
        // how far to scroll down before link "slides" into view
        offset: {top:100}
    });
}
</script>

<?php } ?>
<div id="tmquickview" style="display:none;">
<div id="tmloading" style="text-align:center;margin-top:400px;"><img src="catalog/view/theme/flavours/image/loading.gif" alt="loading">
</div></div>

</body></html>