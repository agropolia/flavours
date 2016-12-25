<div id="top">
<div class="container">
<div class="row">
  <ul>
    <?php if(isset($slider)){
       foreach ($slider as $slide) { ?>   
        <li>
          <div>
          <a href="<?php echo $slide['banner_link']?>" data-scroll-goto="1">
            <img src="<?php echo $slide['image']?>" alt="promotion-banner1">
          </a>
          </div>
        </li>
    <?php } 
    }
    ?>    
  </ul>
</div>
</div>
</div>  