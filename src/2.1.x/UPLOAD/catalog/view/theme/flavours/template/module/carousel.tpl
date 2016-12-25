<div id="carousel<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	autoplay : true,
  items : 6, //10 items above 1000px browser width
  itemsDesktop : [1024,4], //5 items between 1024px and 901px
  itemsDesktopSmall : [900,3], // 3 items betweem 900px and 601px
  itemsTablet: [600,2], //2 items between 600 and 0;
  itemsMobile : [320,1],
  navigation : true,
  navigationText : ["<a class=\"flex-prev\"></a>","<a class=\"flex-next\"></a>"],
  slideSpeed : 500,
  pagination : true  
});
--></script>