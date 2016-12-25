<div class="side-nav-categories">
  <div class="block-title"> <?php echo $heading_title; ?></div>
  <div class="box-content box-category">
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li>
        <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
        <?php if ($category['children']) { ?>
        <span class="subDropdown <?php if ($category['category_id'] == $category_id){ ?>minus<?php } else { ?>plus<?php } ?>"></span>
        <ul class="level0_415" <?php if ($category['category_id'] == $category_id){ ?>style="display: block;"<?php } else { ?>style="display: none;"<?php } ?> >
          <?php foreach ($category['children'] as $child) { ?>
          <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
<script type="text/javascript">
/*jQuery(document).ready(function(){     
 
  if(jQuery('.subDropdown')[0]){
          jQuery('.subDropdown').click(function(){
                  jQuery(this).toggleClass('plus');
                  jQuery(this).toggleClass('minus');
                  jQuery(this).parent().find('ul').slideToggle();
          });
  }

});*/
</script>