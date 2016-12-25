<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/flavours/js/default-common.js" type="text/javascript"></script>
<script src="catalog/view/theme/flavours/js/common.js" type="text/javascript"></script>
<script type="text/javascript" src="catalog/view/theme/flavours/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/flavours/js/fancybox/jquery.fancybox.js"></script>
<script type="text/javascript" src="catalog/view/theme/flavours/js/jquery.mobile-menu.min.js"></script>
<script src="catalog/view/theme/flavours/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/flavours/js/parallax.js" type="text/javascript"></script>
<script src="catalog/view/theme/flavours/js/cloud-zoom.js" type="text/javascript"></script>
<script type="text/javascript" src="catalog/view/theme/flavours/js/jquery.flexslider.js"></script>
<script src="catalog/view/theme/flavours/js/jquery.growl.js" type="text/javascript"></script>

<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<!--link href="catalog/view/theme/flavours/stylesheet/stylesheet.css" rel="stylesheet"-->
<link href="catalog/view/theme/flavours/stylesheet/owl.carousel.css" rel="stylesheet">
<link href="catalog/view/theme/flavours/stylesheet/owl.theme.css" rel="stylesheet">
<!--link href="catalog/view/theme/flavours/stylesheet/animate.css" rel="stylesheet"-->
<link href="catalog/view/theme/flavours/stylesheet/jquery.mobile-menu.css" rel="stylesheet" type="text/css" >
<link href="catalog/view/theme/flavours/stylesheet/jquery.bxslider.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="catalog/view/theme/flavours/js/fancybox/jquery.fancybox.css">
<link href="catalog/view/theme/flavours/stylesheet/font-awesome.css" rel="stylesheet">
<link href="catalog/view/theme/flavours/stylesheet/style.css" rel="stylesheet">

<link type="text/css" rel="stylesheet" href="catalog/view/theme/flavours/stylesheet/jquery.growl.css">

<?php 
global $config;
?>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link href="catalog/view/theme/flavours/stylesheet/responsive.css" rel="stylesheet">

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php //echo $google_analytics; ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

<style type="text/css">
<?php if($config->get('tmflavours_fonttransform')!=''){?>
/*  update google Font */
body{font-family:'<?php echo $config->get('tmflavours_fonttransform'); ?>', sans-serif !important; }
<?php } ?>

/* sale label */
.new-label {background:<?php echo "#".$config->get('tmflavours_sale_labelcolor'); ?>}

/*Main color section */
<?php if($config->get('tmflavours_body_bg_ed')==1) { ?>
body {background:<?php echo "#".$config->get('tmflavours_body_bg'); ?> } <?php } ?>

<?php if($config->get('tmflavours_fontcolor_ed')==1) { ?>
body {color:<?php echo "#".$config->get('tmflavours_fontcolor'); ?> } <?php } ?>

<?php if($config->get('tmflavours_linkcolor_ed')==1) { ?>
a,a:visited {color:<?php echo "#".$config->get('tmflavours_linkcolor'); ?>} <?php } ?>

<?php if($config->get('tmflavours_linkhovercolor_ed')==1) { ?>
a:hover {color:<?php echo "#".$config->get('tmflavours_linkhovercolor'); ?>} <?php } ?>


/* header color section */ 
<?php if($config->get('tmflavours_headerbg_ed')==1) { ?>
.header-container { background-color: <?php echo "#".$config->get('tmflavours_headerbg'); ?>;} <?php } ?>

<?php if($config->get('tmflavours_headerlinkcolor_ed')==1) { ?>
header .toplinks div.links div a{color:<?php echo "#".$config->get('tmflavours_headerlinkcolor'); ?>;} <?php } ?>

<?php if($config->get('tmflavours_headerlinkhovercolor_ed')==1) { ?>
header .toplinks div.links div a:hover{color:<?php echo "#".$config->get('tmflavours_headerlinkhovercolor'); ?>;} <?php } ?>

<?php if($config->get('tmflavours_headerclcolor_ed')==1) { ?>
.block-currency,.block-language{color:<?php echo "#".$config->get('tmflavours_headerclcolor')."! important"; ?>;} <?php } ?>

/*buttons*/
<?php if($config->get('tmflavours_buttoncolor_ed')==1) { ?>
button.button{background-color:<?php echo "#".$config->get('tmflavours_buttoncolor'); ?> } <?php } ?>
<?php if($config->get('tmflavours_buttonhovercolor_ed')==1) { ?>
button.button:hover,.button:hover, .button:focus, .btn:hover, .btn:focus, .button-inverse, .button-vote:hover, .sidebar .button:hover, .sidebar .button:focus, .sidebar .btn:hover, .sidebar .btn:focus, .form-list .bootstrap-select.btn-group .btn:hover .caret, .form-list .bootstrap-select.btn-group .btn:focus .caret, .buttons-set .back-link a:hover, .buttons-set .back-link a:focus, .scrolltop, .button-tabs li a:hover, .button-tabs li a:focus{background-color: <?php echo "#".$config->get('tmflavours_buttonhovercolor'); ?>} <?php } ?>


/*price*/
<?php if($config->get('tmflavours_pricecolor_ed')==1) { ?>
.regular-price .price{ color:<?php echo "#".$config->get('tmflavours_pricecolor'); ?> } <?php } ?>

<?php if($config->get('tmflavours_oldpricecolor_ed')==1) { ?>
.old-price .price{ color:<?php echo "#".$config->get('tmflavours_oldpricecolor')."! important"; ?> } <?php } ?>

<?php if($config->get('tmflavours_newpricecolor_ed')==1) { ?>
.special-price .price{ color:<?php echo "#".$config->get('tmflavours_newpricecolor'); ?> } <?php } ?>


/*footer*/
<?php if($config->get('tmflavours_footerbg_ed')==1) { ?>
.footer{background:<?php echo "#".$config->get('tmflavours_footerbg'); ?> } <?php } ?>

<?php if($config->get('tmflavours_footerlinkcolor_ed')==1) { ?>
footer .footer-middle .links li a, footer .footer-column a:before{color: <?php echo "#".$config->get('tmflavours_footerlinkcolor'); ?>} 
<?php } ?>

<?php if($config->get('tmflavours_footerlinkhovercolor_ed')==1) { ?>
footer .footer-middle .links li a:hover, footer .footer-column a:hover{color: <?php echo "#".$config->get('tmflavours_footerlinkhovercolor'); ?>} <?php } ?>
<?php if($config->get('tmflavours_powerbycolor_ed')==1) { ?>
.powered-by{color: <?php echo "#".$config->get('tmflavours_powerbycolor'); ?> !important; } <?php } ?>

</style>
</head>
<body class="<?php echo $class; ?> <?php //echo $bodyclass; ?>">
<div id="page">
<header>  
<?php if($config->get('tmflavours_header_offer')==1){
echo html_entity_decode($config->get('tmflavours_header_offer_content'));
}?>
<div id="header">
  <div class="header-container container">
    <div class="row">
      <div class="logo">
        <?php if ($logo) { ?>
        <a href="<?php echo $home; ?>" title="<?php echo $name; ?>">
          <div><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"/></div>
        </a>
        <?php } else { ?>
        <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
        <?php } ?>  
      </div>

<!-- menu bar code-->
<?php 
if(isset($this->request->get['path'])) {
    $path = $this->request->get['path'];
    $cats = explode('_', $path);
    $cat_id = $cats[0];
} 
else{
  $cat_id = 0;
}?>

<?php 
$this->load->model('setting/setting');
$cbim=$this->model_setting_setting->getSetting('custom_block_inside_menu');
//echo "<prE>";
function search($array, $key, $value)
{
    $results = array();

    if (is_array($array)) {
        if (isset($array[$key]) && $array[$key] == $value) {
            $results[] = $array;
        }

        foreach ($array as $subarray) {
            $results = array_merge($results, search($subarray, $key, $value));
        }
    }

    return $results;
}
if($cbim=='' || $cbim==null){$cbim=0;}
?>
<!-- code end -->

<div class="fl-nav-menu">
<nav>
    <div class="mm-toggle-wrap">
          <div class="mm-toggle"><i class="icon-reorder"></i><span class="mm-label"><?php echo $text_menu;?></span> </div>
    </div><!-- mm-toggle-wrap -->
    <div class="nav-inner">  

    <?php 
    if ($categories) { ?>
    <ul class="hidden-xs" id="nav">
      <?php if($config->get('tmflavours_home_option')==1){ ?>
      <li class="level0 parent drop-menu"><a class="active level-top" id="tab_home" href="<?php echo $home;?>"><span>Home</span></a></li><?php }?>

      <?php foreach ($categories1 as $category) { ?>
      <li class="mega-menu">
      <a class="level-top <?php if($category['category_id']==$cat_id) {echo 'active';}?>" href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span>  
      </a>
      <?php if($category['category_id']==$cat_id) {?>
      <script>jQuery("#tab_home").removeClass('active');
      </script>
      <?php }?>
      
      <?php if ($category['children']) { ?>
      <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">
        <div class="container">
        <div class="level0-wrapper2">     
       <?php 

       $customDataMenu=search($cbim['custom_block_inside_menu_module'], 'category_id', $category['category_id']);
       if(!empty($customDataMenu)) {
          $pos=$customDataMenu[0]['position'];
          if($pos=='right') { ?> 
            <div class="col-1">       
                <div class="nav-block nav-block-center">
                <?php for ($i = 0; $i < count($category['children']);) { ?>
                <ul class="level0">
                <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                <?php for (; $i < $j; $i++) { ?>
                <?php if (isset($category['children'][$i])) { ?>
                <li class="level1 nav-6-1 parent item"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
                <?php if(count($category['children'][$i]['children']) ){?>
                <ul class="level1">
                <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){?>
                <li class="level2 nav-6-1-1"><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><span><?php echo $category['children'][$i]['children'][$m]['name']?></span></a></li>
                <?php  }?>
                </ul>
                <?php }?>
                </li>
                <?php } ?>
                <?php } ?>
                </ul>
                <?php } ?>
                </div>
            </div>
            <div class="col-2">    
              <?php echo html_entity_decode($customDataMenu[0]['content']); ?>
            </div>
        <?php } elseif ($pos=='top' || $pos=='bottom') { 

                if($pos=='top'){ ?> 
                <div class="nav-add">
                  <?php echo html_entity_decode($customDataMenu[0]['content']); ?>
                </div>
                <?php } ?>

                <div class="nav-block nav-block-center">
                <?php for ($i = 0; $i < count($category['children']);) { ?>
                <ul class="level0">
                <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                <?php for (; $i < $j; $i++) { ?>
                <?php if (isset($category['children'][$i])) { ?>
                <li class="level1 nav-6-1 parent item"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
                <?php if(count($category['children'][$i]['children']) ){?>
                <ul class="level1">
                <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){?>
                <li class="level2 nav-6-1-1"><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><span><?php echo $category['children'][$i]['children'][$m]['name']?></span></a></li>
                <?php  }?>
                </ul>
                <?php }?>
                </li>
                <?php } ?>
                <?php } ?>
                </ul>
                <?php } ?>
                </div>

                <?php if($pos=='bottom'){ ?> 
                <div class="nav-add">
                  <?php echo html_entity_decode($customDataMenu[0]['content']); ?>
                </div>
            <?php } }  ?>      
     
      <?php } else { // end of not empty array  ?>
          <div class="nav-block nav-block-center">
            <?php for ($i = 0; $i < count($category['children']);) { ?>
            <ul class="level0">
            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
            <?php for (; $i < $j; $i++) { ?>
            <?php if (isset($category['children'][$i])) { ?>
            <li class="level1 nav-6-1 parent item"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
            <?php if(count($category['children'][$i]['children']) ){?>
            <ul class="level1">
            <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){?>
            <li class="level2 nav-6-1-1"><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><span><?php echo $category['children'][$i]['children'][$m]['name']?></span></a></li>
            <?php  }?>
            </ul>
            <?php }?>
            </li>
            <?php } ?>
            <?php } ?>
            </ul>
            <?php } ?>
            </div>           
      <?php } ?>
      </div>
      </div><!-- container -->
      </div>  
      <?php } ?>
      </li>
    <?php } ?>
    
    <?php if($this->config->get('tmflavours_menubar_cb') == 1)
    { echo '<li class="fl-custom-tabmenulink mega-menu"><a class="level-top"><span>'.$config->get('tmflavours_menubar_cbtitle').'</span></a><div class="level0-wrapper fl-custom-tabmenu" style="left: 0px; display: none;"><div class="container"><div class="header-nav-dropdown-wrapper clearer container">'.html_entity_decode($config->get('tmflavours_menubar_cbcontent')).'</div></div></div></li>';
    }?>
    
    </ul>
    <?php } ?>
     
  
      
  
    
    </div><!-- nav-inner  -->

</nav>

      </div><!-- row -->
    </div>


    <div class="fl-header-right">
      <div class="fl-links">
        <div class="no-js">
          <a class="clicker"></a>
          <div class="fl-nav-links">
            <div class="language-currency">
              <div class="fl-language"><?php echo $language; ?></div>
              <div class="fl-currency"><?php echo $currency; ?></div>
            </div>
            
            <ul class="links">
            <li><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
            <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>  

            <li class="last">
            <?php if (!$logged) { ?>
            <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>

            <?php }  else { ?>
            <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
            <?php } ?>
            </li>
            </ul>

          </div>
        </div><!-- no-js -->
      </div>

      <div class="fl-cart-contain">
      <div class="mini-cart">
      <?php echo $cart; ?>
      </div>
      <div style="display:none" id="ajaxconfig_info"><a href="#/"></a>
      <input type="hidden" value="">
      <input type="hidden" value="1" id="enable_module">
      <input type="hidden" value="1" class="effect_to_cart">
      <input type="hidden" value="Go to shopping cart" class="title_shopping_cart">
      </div>
      </div>
      <!--mini-cart-->
      <div class="collapse navbar-collapse">
      <?php  echo $search; ?>
      </div>
    </div>

 
  </div>
  </header>