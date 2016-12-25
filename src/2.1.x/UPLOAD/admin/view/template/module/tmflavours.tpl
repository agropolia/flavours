<?php echo $header; ?>
<!-- <script type="text/javascript" src="view/javascript/colorpicker/colorpicker-color.js"></script>
<script type="text/javascript" src="view/javascript/colorpicker/colorpicker.js"></script> -->
<link rel="stylesheet" href="view/javascript/colorpicker/bootstrap-3.0.0.min.css">
<link rel="stylesheet" href="view/javascript/colorpicker/pick-a-color-1.2.3.min.css">
<style type="text/css">
.heading{
color: #279882;
font-size: 24px!important;
}
.thead{
color: #e74c3c!important;
font-weight: bold;
text-transform: uppercase
}
</style>

<?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-tmflavours" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-tmflavours" class="form-horizontal">
          

 <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
<li class="active"><a href="#general" data-toggle="tab">General</a></li>
<li><a href="#colors" data-toggle="tab">Colors</a></li>
<li><a href="#fonts" data-toggle="tab">Fonts</a></li>
<li><a href="#footer" data-toggle="tab">Footer</a></li>
<li><a href="#support" data-toggle="tab">Support</a></li>
</ul>
<div id="my-tab-content" class="tab-content">
<div class="tab-pane active" id="general">
<br>
  <b class="heading">GENERAL THEME SETTINGS</b><hr>
   

    <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_home_option">Home option in menu:</label>
            <div class="col-sm-10">
              <select name="tmflavours_home_option" id="input-tmflavours_home_option" class="form-control">
                <?php if ($tmflavours_home_option) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          


      <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_quickview_button">Product's Quick View:</label>
            <div class="col-sm-10">
              <select name="tmflavours_quickview_button" id="input-tmflavours_quickview_button" class="form-control">
                <?php if ($tmflavours_quickview_button) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          

        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_scroll_totop">Show scroll to top button:</label>
            <div class="col-sm-10">
              <select name="tmflavours_scroll_totop" id="input-tmflavours_scroll_totop" class="form-control">
                <?php if ($tmflavours_scroll_totop) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          

                  
<hr><b class="thead">PRODUCTS "SALE" LABEL</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_sale_label">Show "Sale" label for products with discount:</label>
            <div class="col-sm-10">
              <select name="tmflavours_sale_label" id="input-tmflavours_sale_label" class="form-control">
                <?php if ($tmflavours_sale_label) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_sale_labeltitle">Sale label title:</label>
            <div class="col-sm-10">
            <input name="tmflavours_sale_labeltitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_sale_labeltitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_sale_labelcolor">Sale label color:</label>
            <div class="col-sm-10">
            <input name="tmflavours_sale_labelcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_sale_labelcolor; ?>" class="pick-a-color form-control"/>
            </div>
          </div>

<hr><b class="thead">HEADER CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_header_offer">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="tmflavours_header_offer" id="input-tmflavours_header_offer" class="form-control">
                <?php if ($tmflavours_header_offer) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-tmflavours_header_offer_content">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="tmflavours_header_offer_content" placeholder="Enetr text here" id="input-tmflavours_header_offer_content" class="form-control"><?php echo $tmflavours_header_offer_content; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-tmflavours_header_offer_content').summernote({height: 300});
          </script>  


<hr><b class="thead">MENUBAR CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_menubar_cb">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="tmflavours_menubar_cb" id="input-tmflavours_menubar_cb" class="form-control">
                <?php if ($tmflavours_menubar_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_menubar_cbtitle">Block title:</label>
            <div class="col-sm-10">
            <input name="tmflavours_menubar_cbtitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_menubar_cbtitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-tmflavours_menubar_cbcontent">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="tmflavours_menubar_cbcontent" placeholder="Enetr text here" id="input-tmflavours_menubar_cbcontent" class="form-control"><?php echo $tmflavours_menubar_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-tmflavours_menubar_cbcontent').summernote({height: 300});
          </script>  

<hr><b class="thead">PRODUCT CUSTOM TABS</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_product_ct">Enable custom Tab1:</label>
            <div class="col-sm-10">
              <select name="tmflavours_product_ct" id="input-tmflavours_product_ct" class="form-control">
                <?php if ($tmflavours_product_ct) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_product_cttitle">Tab1 title:</label>
            <div class="col-sm-10">
            <input name="tmflavours_product_cttitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_product_cttitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-tmflavours_product_ctcontent">Tab1 content:</label>
                  <div class="col-sm-10">
                    <textarea name="tmflavours_product_ctcontent" placeholder="Enetr text here" id="input-tmflavours_product_ctcontent" class="form-control"><?php echo $tmflavours_product_ctcontent; ?></textarea>
                  </div>
                </div>
        <script type="text/javascript">
        $('#input-tmflavours_product_ctcontent').summernote({height: 300});
        </script>

        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_product_ct2">Enable custom Tab2:</label>
            <div class="col-sm-10">
              <select name="tmflavours_product_ct2" id="input-tmflavours_product_ct2" class="form-control">
                <?php if ($tmflavours_product_ct2) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_product_ct2title">Tab2 title:</label>
            <div class="col-sm-10">
            <input name="tmflavours_product_ct2title" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_product_ct2title; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-tmflavours_product_ct2content">Tab2 content:</label>
                  <div class="col-sm-10">
                    <textarea name="tmflavours_product_ct2content" placeholder="Enetr text here" id="input-tmflavours_product_ct2content" class="form-control"><?php echo $tmflavours_product_ct2content; ?></textarea>
                  </div>
                </div>
        <script type="text/javascript">
        $('#input-tmflavours_product_ct2content').summernote({height: 300});
        </script>        


<hr><b class="thead">BEST SELLER IMAGE</b><hr>        
        
         <?php 
          if($tmflavours_product_image1!='')
            $path1 = HTTP_CATALOG . 'image/' . $tmflavours_product_image1; 
          else
            $path1 = $placeholder;          
          ?>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_product_image1">Bestseller Banner Image</label>
            <div class="col-sm-10"><a href="" id="thumb-image-1" data-toggle="image" class="img-thumbnail"><img src="<?php echo $path1; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
              <input type="hidden" name="tmflavours_product_image1" value="<?php echo $tmflavours_product_image1; ?>" id="input-product-image1" />
            </div>
        </div>
        
        
<hr><b class="thead">FOOTER CUSTOM BLOCK</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_footer_cb">Enable footer custom block:</label>
            <div class="col-sm-10">
              <select name="tmflavours_footer_cb" id="input-tmflavours_footer_cb" class="form-control">
                <?php if ($tmflavours_footer_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-tmflavours_footer_cbcontent">Footer custom block content:</label>
                  <div class="col-sm-10">
                    <textarea name="tmflavours_footer_cbcontent" placeholder="Enetr text here" id="input-tmflavours_footer_cbcontent" class="form-control"><?php echo $tmflavours_footer_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-tmflavours_footer_cbcontent').summernote({height: 300});
          </script>          


</div>

<div class="tab-pane" id="colors">
<br>
<b class="heading">THEME COLORS</b><br>
In this section, you can change theme colors. To change the color of element just click inside text field and use color picker.

<hr><b class="thead">MAIN</b><hr>

       <?php if(empty($tmflavours_body_bg)) { $tmflavours_body_bg="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_body_bg">Body background:</label>
            <div class="col-sm-2">
                <select name="tmflavours_body_bg_ed" id="input-tmflavours_body_bg_ed" class="form-control">
                <?php if ($tmflavours_body_bg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_body_bg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_body_bg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>

      <?php if(empty($tmflavours_fontcolor)) { $tmflavours_fontcolor="#333333"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_fontcolor">Body font color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_fontcolor_ed" id="input-tmflavours_fontcolor_ed" class="form-control">
                <?php if ($tmflavours_fontcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_fontcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_fontcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #333333</div>
          </div>
          

      <?php if(empty($tmflavours_linkcolor)) { $tmflavours_linkcolor="#333333"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_linkcolor">Link color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_linkcolor_ed" id="input-tmflavours_linkcolor_ed" class="form-control">
                <?php if ($tmflavours_linkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_linkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_linkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #333333</div>
          </div>


       <?php if(empty($tmflavours_linkhovercolor)) { $tmflavours_linkhovercolor="#000000"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_linkhovercolor">Link hover color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_linkhovercolor_ed" id="input-tmflavours_linkhovercolor_ed" class="form-control">
                <?php if ($tmflavours_linkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_linkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_linkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #000000</div>
          </div>

<hr><b class="thead">HEADER</b><hr>


       <?php if(empty($tmflavours_headerbg)) { $tmflavours_headerbg="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_headerbg">Header background:</label>
            <div class="col-sm-2">
                <select name="tmflavours_headerbg_ed" id="input-tmflavours_headerbg_ed" class="form-control">
                <?php if ($tmflavours_headerbg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_headerbg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_headerbg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>

      <?php if(empty($tmflavours_headerlinkcolor)) { $tmflavours_headerlinkcolor="#999999"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_headerlinkcolor">Header link color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_headerlinkcolor_ed" id="input-tmflavours_headerlinkcolor_ed" class="form-control">
                <?php if ($tmflavours_headerlinkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_headerlinkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_headerlinkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #999999</div>
          </div>
          

      <?php if(empty($tmflavours_headerlinkhovercolor)) { $tmflavours_headerlinkhovercolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_headerlinkhovercolor">Header link hover color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_headerlinkhovercolor_ed" id="input-tmflavours_headerlinkhovercolor_ed" class="form-control">
                <?php if ($tmflavours_headerlinkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_headerlinkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_headerlinkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>


       <?php if(empty($tmflavours_headerclcolor)) { $tmflavours_headerclcolor="#999999"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_headerclcolor">Header currency/language links color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_headerclcolor_ed" id="input-tmflavours_headerclcolor_ed" class="form-control">
                <?php if ($tmflavours_headerclcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_headerclcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_headerclcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #999999</div>
          </div>



<hr><b class="thead">BUTTONS</b><hr>


       <?php if(empty($tmflavours_buttoncolor)) { $tmflavours_buttoncolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_buttoncolor">Button color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_buttoncolor_ed" id="input-tmflavours_buttoncolor_ed" class="form-control">
                <?php if ($tmflavours_buttoncolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_buttoncolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_buttoncolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>

      <?php if(empty($tmflavours_buttonhovercolor)) { $tmflavours_buttonhovercolor="#2ecc71"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_buttonhovercolor">Button Hover color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_buttonhovercolor_ed" id="input-tmflavours_buttonhovercolor_ed" class="form-control">
                <?php if ($tmflavours_buttonhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_buttonhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_buttonhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #2ecc71</div>
          </div>


      <hr><b class="thead">PRODUCT</b><hr>


       <?php if(empty($tmflavours_pricecolor)) { $tmflavours_pricecolor="#0eb477"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_pricecolor">Price color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_pricecolor_ed" id="input-tmflavours_pricecolor_ed" class="form-control">
                <?php if ($tmflavours_pricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_pricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_pricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #0eb477</div>
          </div>

      <?php if(empty($tmflavours_oldpricecolor)) { $tmflavours_oldpricecolor="#777777"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_oldpricecolor">Old Price color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_oldpricecolor_ed" id="input-tmflavours_oldpricecolor_ed" class="form-control">
                <?php if ($tmflavours_oldpricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_oldpricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_oldpricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #777777</div>
          </div>


      <?php if(empty($tmflavours_newpricecolor)) { $tmflavours_newpricecolor="#7BBD42"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_newpricecolor">New Price color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_newpricecolor_ed" id="input-tmflavours_newpricecolor_ed" class="form-control">
                <?php if ($tmflavours_newpricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_newpricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_newpricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #7BBD42</div>
          </div>


<hr><b class="thead">FOOTER</b><hr>


       <?php if(empty($tmflavours_footerbg)) { $tmflavours_footerbg="#0f1c25"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_footerbg">Footer background:</label>
            <div class="col-sm-2">
                <select name="tmflavours_footerbg_ed" id="input-tmflavours_footerbg_ed" class="form-control">
                <?php if ($tmflavours_footerbg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_footerbg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_footerbg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #0f1c25</div>
          </div>

      <?php if(empty($tmflavours_footerlinkcolor)) { $tmflavours_footerlinkcolor="#90a9ba"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_footerlinkcolor">Footer links color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_footerlinkcolor_ed" id="input-tmflavours_footerlinkcolor_ed" class="form-control">
                <?php if ($tmflavours_footerlinkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_footerlinkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_footerlinkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #90a9ba</div>
          </div>
          

      <?php if(empty($tmflavours_footerlinkhovercolor)) { $tmflavours_footerlinkhovercolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_footerlinkhovercolor">Footer links hover color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_footerlinkhovercolor_ed" id="input-tmflavours_footerlinkhovercolor_ed" class="form-control">
                <?php if ($tmflavours_footerlinkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_footerlinkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_footerlinkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>


       <?php if(empty($tmflavours_powerbycolor)) { $tmflavours_powerbycolor="#3e5768"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_powerbycolor">Footer powered by text color:</label>
            <div class="col-sm-2">
                <select name="tmflavours_powerbycolor_ed" id="input-tmflavours_powerbycolor_ed" class="form-control">
                <?php if ($tmflavours_powerbycolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="tmflavours_powerbycolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_powerbycolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #3e5768</div>
          </div>

                 

</div>
<div class="tab-pane" id="fonts">
<br><b>THEME FONTS</b><br>
Choose font from list
<hr>


<div class="form-group">
            <label class="col-sm-2 control-label" for="input-tmflavours_fonttransform">Font transform:</label>
            <div class="col-sm-8">
              <?php $gfonts = "Abel,Abril Fatface,Aclonica,Acme,Actor,Adamina,Aguafina Script,Aladin,Aldrich,Alegreya,Alegreya SC,Alex Brush,Alfa Slab One,Alice,Alike,Alike Angular,Allan,Allerta,Allerta Stencil,Allura,Almendra,Almendra SC,Amaranth,Amatic SC,Amethysta,Andada,Andika,Annie Use Your Telescope,Anonymous Pro,Antic,Anton,Arapey,Arbutus,Architects Daughter,Arial,Arimo,Arizonia,Armata,Artifika,Arvo,Asap,Asset,Astloch,Asul,Atomic Age,Aubrey,Bad Script,Balthazar,Bangers,Basic,Baumans,Belgrano,Bentham,Bevan,Bigshot One,Bilbo,Bilbo Swash Caps,Bitter,Black Ops One,Bonbon,Boogaloo,Bowlby One,Bowlby One SC,Brawler,Bree Serif,Bubblegum Sans,Buda,Buenard,Butcherman,Butterfly Kids,Cabin,Cabin Condensed,Cabin Sketch,Caesar Dressing,Cagliostro,Calligraffitti,Cambo,Candal,Cantarell,Cardo,Carme,Carter One,Caudex,Cedarville Cursive,Ceviche One,Changa One,Chango,Chelsea Market,Cherry Cream Soda,Chewy,Chicle,Chivo,Coda,Coda Caption,Comfortaa,Comic Sans MS,Coming Soon,Concert One,Condiment,Contrail One,Convergence,Cookie,Copse,Corben,Cousine,Coustard,Covered By Your Grace,Crafty Girls,Creepster,Crete Round,Crimson Text,Crushed,Cuprum,Damion,Dancing Script,Dawning of a New Day,Days One,Delius,Delius Swash Caps,Delius Unicase,Devonshire,Didact Gothic,Diplomata,Diplomata SC,Dorsa,Dr Sugiyama,Droid Sans,Droid Sans Mono,Droid Serif,Duru Sans,Dynalight,EB Garamond,Eater,Electrolize,Emblema One,Engagement,Enriqueta,Erica One,Esteban,Euphoria Script,Ewert,Exo,Expletus Sans,Fanwood Text,Fascinate,Fascinate Inline,Federant,Federo,Felipa,Fjord One,Flamenco,Flavors,Fondamento,Fontdiner Swanky,Forum,Francois One,Fredericka the Great,Fresca,Frijole,Fugaz One,Galdeano,Gentium Basic,Gentium Book Basic,Geo,Geostar,Geostar Fill,Germania One,Give You Glory,Glegoo,Gloria Hallelujah,Goblin One,Gochi Hand,Goudy Bookletter 1911,Gravitas One,Gruppo,Gudea,Habibi,Hammersmith One,Handlee,Herr Von Muellerhoff,Holtwood One SC,Homemade Apple,Homenaje,IM Fell DW Pica,IM Fell DW Pica SC,IM Fell Double Pica,IM Fell Double Pica SC,IM Fell English,IM Fell English SC,IM Fell French Canon,IM Fell French Canon SC,IM Fell Great Primer,IM Fell Great Primer SC,Iceberg,Iceland,Inconsolata,Inder,Indie Flower,Inika,Irish Grover,Istok Web,Italianno,Jim Nightshade,Jockey One,Josefin Sans,Josefin Slab,Judson,Julee,Junge,Jura,Just Another Hand,Just Me Again Down Here,Kameron,Kaushan Script,Kelly Slab,Kenia,Knewave,Kotta One,Kranky,Krvento,Kristi,La Belle Aurore,Lancelot,Lato,League Script,Leckerli One,Lekton,Lemon,Lilita One,Limelight,Linden Hill,Lobster,Lobster Two,Lora,Love Ya Like A Sister,Loved by the King,Luckiest Guy,Lusitana,Lucida Grande,Lustria,Macondo,Macondo Swash Caps,Magra,Maiden Orange,Mako,Marck Script,Marko One,Marmelad,Marvel,Mate,Mate SC,Maven Pro,Meddon,MedievalSharp,Medula One,Megrim,Merienda One,Merriweather,Metamorphous,Metrophobic,Michroma,Miltonian,Miltonian Tattoo,Miniver,Miss Fajardose,Modern Antiqua,Molengo,Monofett,Monoton,Monsieur La Doulaise,Montaga,Montez,Montserrat,Mountains of Christmas,Mr Bedfort,Mr Dafoe,Mr De Haviland,Mrs Saint Delafield,Mrs Sheppards,Muli,Neucha,Neuton,News Cycle,Niconne,Nixie One,Nobile,Norican,Nosifer,Nothing You Could Do,Noticia Text,Nova Cut,Nova Flat,Nova Mono,Nova Oval,Nova Round,Nova Script,Nova Slim,Nova Square,Numans,Nunito,Old Standard TT,Oldenburg,Open Sans,Open Sans Condensed,Orbitron,Original Surfer,Oswald,Over the Rainbow,Overlock,Overlock SC,Ovo,PT Sans,PT Sans Caption,PT Sans Narrow,PT Serif,PT Serif Caption,Pacifico,Parisienne,Passero One,Passion One,Patrick Hand,Patua One,Paytone One,Permanent Marker,Petrona,Philosopher,Piedra,Pinyon Script,Plaster,Play,Playball,Playfair Display,Podkova,Poller One,Poly,Pompiere,Port Lligat Sans,Port Lligat Slab,Prata,Princess Sofia,Prociono,Puritan,Quantico,Quattrocento,Quattrocento Sans,Questrial,Quicksand,Qwigley,Radley,Raleway,Rammetto One,Rancho,Rationale,Redressed,Reenie Beanie,Ribeye,Ribeye Marrow,Righteous,Rochester,Rock Salt,Rokkitt,Ropa Sans,Rosario,Rouge Script,Ruda,Ruge Boogie,Ruluko,Ruslan Display,Ruthie,Sail,Salsa,Sancreek,Sansita One,sans-serif,Sarina,Satisfy,Schoolbell,Shadows Into Light,Shanti,Share,Shojumaru,Short Stack,Sigmar One,Signika,Signika Negative,Sirin Stencil,Six Caps,Slackey,Smokum,Smythe,Sniglet,Snippet,Sofia,Sonsie One,Sorts Mill Goudy,Special Elite,Spicy Rice,Spinnaker,Spirax,Squada One,Stardos Stencil,Stint Ultra Condensed,Stint Ultra Expanded,Stoke,Sue Ellen Francisco,Sunshiney,Supermercado One,Swanky and Moo Moo,Syncopate,Tangerine,Tahoma,Times New Roman,Telex,Tenor Sans,Terminal Dosis,The Girl Next Door,Tienne,Tinos,Titan One,Trade Winds,Trochut,Trykker,Tulpen One,Ubuntu,Ubuntu Condensed,Ubuntu Mono,Ultra,Uncial Antiqua,UnifrakturCook,UnifrakturMaguntia,Unkempt,Unlock,Unna,VT323,Varela,Varela Round,Vast Shadow,Vibur,Vidaloka,Viga,Volkhov,Vollkorn,Voltaire,Verdana,Waiting for the Sunrise,Wallpoet,Walter Turncoat,Wellfleet,Wire One,Yanone Kaffeesatz,Yellowtail,Yeseva One,Yesteryear,Zeyada";
      $tmflavoursfonts = explode(',', $gfonts);
      ?>
            <select name="tmflavours_fonttransform" id="input-tmflavours_fonttransform" class="form-control">
            <option value="" <?php if ($tmflavours_fonttransform=='') {?>selected<?php } ?>  ></option>  
            <?php foreach ($tmflavoursfonts as $f ) { ?>
            <option value="<?php echo $f; ?>" <?php if($tmflavours_fonttransform==$f){echo 'selected';} ?>>
              <?php echo $f; ?></option>
            <?php } ?>
            </select>
            </div>

            <div class="col-sm-2 control-label">Default: Open Sans</div>
          </div>



</div>
<div class="tab-pane" id="footer">
<br>
<p align="left">Fill in contact details you want to be displayed in your custom footer. If you don't want some of contact details to be displayed, just leave these fields empty.
 </p>
<hr>
           <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_address">Address:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_address" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_address; ?>"/>
              </div>
          </div>

         


          <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_phone">Phone:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_phone" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_phone; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_email">Email:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_email" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_email; ?>"/>
              </div>
          </div>
<hr>
<p align="left">Leave url field empty if you don't want to display this social icon in footer.</p>
<hr>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_fb">Facebook:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_fb" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_fb; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_twitter">Twitter:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_twitter" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_twitter; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_gglplus">Google Plus:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_gglplus" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_gglplus; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_rss">RSS:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_rss" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_rss; ?>"/>
              </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_pinterest">Pinterest:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_pinterest" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_pinterest; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_linkedin">Linkedin:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_linkedin" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_linkedin; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="tmflavours_youtube">You Tube:</label>
            <div class="col-sm-10">
              <input class="form-control" name="tmflavours_youtube" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $tmflavours_youtube; ?>"/>
              </div>
          </div>


                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-tmflavours_powerby">Powered by text:</label>
                  <div class="col-sm-10">
                    <textarea name="tmflavours_powerby" placeholder="Enetr text here" id="input-tmflavours_powerby" class="form-control"><?php echo $tmflavours_powerby; ?></textarea>
                  </div>
                </div>

 <script type="text/javascript">
$('#input-tmflavours_powerby').summernote({height: 300});
</script> 
             
 
</div>
<div class="tab-pane" id="support">
<h1>Flavours theme for Open Cart 2.0.x </h1><hr>
  <p style="font-weight:bold">Theme designed and developed by <a href="http://themeforest.net/user/ThemesmartGroup">Themesmart</a>.</p>
<p>Thank you for buying this theme! Contact us for any question or problems regarding the theme at - support@themesmart.net</p>
<p>If you like theme dont forget to rate theme with stars (you can do it in your Downloads tab, inside your ThemeForest profile. Just click on stars! This little thing helps me to make new theme updates! Thank you!</p>
</div>
</div> 






      

         <!-- <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name">test</label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="123" id="input-name" class="form-control" />
              
            </div>
          </div> -->

                 
        </form>
      </div>
	</div>
  </div>
</div>



<!-- <script src="build/dependencies/jquery-1.9.1.min.js"></script> -->
  <script src="view/javascript/colorpicker/tinycolor-0.9.15.min.js"></script>
  <script src="view/javascript/colorpicker/pick-a-color-1.2.3.min.js"></script>  
  
  <script type="text/javascript">
  
    $(document).ready(function () {

      $(".pick-a-color").pickAColor({
        showSpectrum            : true,
        showSavedColors         : true,
        saveColorsPerElement    : true,
        fadeMenuToggle          : true,
        showAdvanced            : true,
        showBasicColors         : true,
        showHexInput            : true,
        allowBlank              : true,
        inlineDropdown          : true
      });
      
    });
  
    </script>

<?php echo $footer; ?> 