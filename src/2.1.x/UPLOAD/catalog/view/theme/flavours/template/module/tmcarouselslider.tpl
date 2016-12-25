<div class="wow bounceInUp custom-slider">
    <div>
         <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"> 
          <ol class="carousel-indicators">
            <?php $cnt1 = 0; foreach ($slider as $slide) { ?>
              <li data-target="#carousel-example-generic" data-slide-to="<?php echo $cnt1 ?>" class="active"></li>
              <?php $cnt1++;}?>
            </ol>
           
                <?php if($slider) { ?>
                <div class="carousel-inner" role="listbox">
                  <?php $i=0; foreach($slider as $slide){ ?>   
                  
                  <div class="item <?php if($i==0) echo 'active';?>"> 
                    <a href="<?php echo $slide['link'];?>" target="_blank" title="<?php if($slide['title']) {echo $slide['title'];}?>">
                    <img  src="<?php echo $slide['image']?>" data-bgposition='left top'  data-bgfit='cover' data-bgrepeat='no-repeat' title="<?php if($slide['title']) {echo $slide['title'];}?>" alt="<?php if($slide['title']) {echo $slide['title'];}?>"/>
                    </a>
                    <div class="carousel-caption">
                      <h3>
                        <a href="<?php echo $slide['link'];?>" target="_blank" title="<?php if($slide['title']) {echo $slide['title'];}?>">
                          <?php if($slide['title']) {echo $slide['title'];}?>
                        </a>
                      </h3>
                      <p><?php if($slide['description']) { echo $slide['description'];}?></p>
                    </div>
                  </div>

                <?php $i++; } ?>
                </div>
                <?php } ?>
           
             
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> 
         </div>
    </div>
</div>


<script type='text/javascript'>
        jQuery(document).ready(function(){
            jQuery('#rev_slider_4').show().revolution({
                dottedOverlay: 'none',
                delay: 5000,
                startwidth: 1170,
                startheight: 580,

                hideThumbs: 200,
                thumbWidth: 200,
                thumbHeight: 50,
                thumbAmount: 2,

                navigationType: 'thumb',
                navigationArrows: 'solo',
                navigationStyle: 'round',

                touchenabled: 'on',
                onHoverStop: 'on',
                
                swipe_velocity: 0.7,
                swipe_min_touches: 1,
                swipe_max_touches: 1,
                drag_block_vertical: false,
            
                spinner: 'spinner0',
                keyboardNavigation: 'off',

                navigationHAlign: 'center',
                navigationVAlign: 'bottom',
                navigationHOffset: 0,
                navigationVOffset: 20,

                soloArrowLeftHalign: 'left',
                soloArrowLeftValign: 'center',
                soloArrowLeftHOffset: 20,
                soloArrowLeftVOffset: 0,

                soloArrowRightHalign: 'right',
                soloArrowRightValign: 'center',
                soloArrowRightHOffset: 20,
                soloArrowRightVOffset: 0,

                shadow: 0,
                fullWidth: 'on',
                fullScreen: 'off',

                stopLoop: 'off',
                stopAfterLoops: -1,
                stopAtSlide: -1,

                shuffle: 'off',

                autoHeight: 'off',
                forceFullWidth: 'on',
                fullScreenAlignForce: 'off',
                minFullScreenHeight: 0,
                hideNavDelayOnMobile: 1500,
            
                hideThumbsOnMobile: 'off',
                hideBulletsOnMobile: 'off',
                hideArrowsOnMobile: 'off',
                hideThumbsUnderResolution: 0,

                hideSliderAtLimit: 0,
                hideCaptionAtLimit: 0,
                hideAllCaptionAtLilmit: 0,
                startWithSlide: 0,
                fullScreenOffsetContainer: ''
            });
        });
        </script>