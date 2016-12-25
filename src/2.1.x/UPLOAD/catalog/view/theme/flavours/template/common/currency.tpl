<?php if (count($currencies) > 1) { ?>
<div class="dropdown block-currency-wrapper">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
    <ul class="currencies_list" role="menu">
    
    
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li>
      <a class="currency-select" style="cursor:pointer;" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?> <?php //echo $currency['title']; ?></a></li>
      <?php } else { ?>
      <li><a class="currency-select" style="cursor:pointer;" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?> <?php //echo $currency['title']; ?></a></li>
      <?php } ?>
      <?php } ?>
    
    
    </ul>

  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div><!-- dropdown block-currency-wrapper -->
<?php } ?>
