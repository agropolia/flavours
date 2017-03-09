  <div class="latest-blog container wow bounceInUp animated">
    <div class="new_title">
      <h2><?php echo $heading_title; ?></h2>
    </div>

    <?php if($postList) { ?>
      <?php foreach ($postList as $_postList) { ?>
      <!-- <div class="col-xs-12 col-sm-4 wow bounceInLeft animated"> -->
      <div class="col-lg-4 col-md-4 col-xs-12 col-sm-4 blog-post">
          <div class="blog_inner">    
          <?php if(!$hideimage) { ?>
          <div class="blog-img"> 
            <a href="<?php echo $_postList['href']; ?>">
            <img src="<?php echo $_postList['thumb']; ?>" alt="<?php echo $_postList['name']; ?>" title="<?php echo $_postList['name']; ?>" class="img-responsive" />
            </a>
          </div>
          <?php } ?>

          <div class="blog-info">
            <?php if(!$hidedate) { ?>
            <div class="post-date"><?php echo date('d F',strtotime($_postList['publish_date'])); ?></div>
            <?php } ?>

            <?php if(!$hidetitle) { ?>
            <h3><a href="<?php echo $_postList['href']; ?>"><?php echo $_postList['name']; ?></a> </h3>
            <?php } ?>

            <?php if(!$hidedescription) { ?>  
            <p><?php echo $_postList['description']; ?></p>
            <?php } ?>

            <a class="readmore" href="<?php echo $_postList['href']; ?>"><?php echo $text_read_more; ?></a>

          </div>
        </div>
      </div>
      <?php } ?>
    <?php } ?>
  </div><!-- latest blog -->