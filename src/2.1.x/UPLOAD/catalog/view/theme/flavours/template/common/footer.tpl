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
  <!--footer-inner todo-->

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


     <?php foreach ($informations as $information) { ?>
         <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
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