
<?php if (count($languages) > 1) { ?>
<div class="dropdown block-language-wrapper">

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
    <ul class="lang">
      <?php foreach ($languages as $language) { ?>
      <li role="presentation"><a tabindex="-1" role="menuitem" href="<?php echo $language['code']; ?>"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php //echo $language['name']; ?></a></li>
      <?php } ?>
    </ul>
  
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>

</div>
<!-- dropdown block-language-wrapper -->
<?php } ?>
