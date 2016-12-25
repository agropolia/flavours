<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
         <button type="submit" form="form-product" class="btn btn-primary"><?php echo $button_save; ?></button>
         <a href="javascript:void(0);" onclick="$('#action').val('save_stay');$('#form-banner').submit();" class="btn btn-info"><?php echo $button_save_stay; ?></a>
         <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
       </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>

   <div class="container-fluid">
    <div class="slidebar"><?php require( DIR_APPLICATION.'view/template/module/tmslideshow/toolbar.tpl' ); ?></div>
    <?php if (isset($error_warning) && $error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-image"></i> <?php echo $text_edit_banner; ?></h3>
      </div>
      <div class="panel-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-banner" class="form-horizontal">
        <input type="hidden" name="action" id="action" value=""/>
       <div class="tab-content">
         <div class="tab-pane active">
            <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
                <div class="col-sm-10">
                   <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
                    <?php if ($error_name) { ?>
                    <div class="text-danger"><?php echo $error_name; ?></div>
                    <?php } ?>
                </div>
            </div> 
           <div class="form-group">
                <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                <div class="col-sm-10">
                   <select class="form-control" name="status" id="input-status">
                      <?php if ($status) { ?>
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
                <label class="col-sm-2 control-label" for="input-main_width"><span data-toggle="tooltip" title="<?php echo $help_main_width; ?>"><?php echo $entry_main_width; ?></span></label>
                <div class="col-sm-10">
                   <input type="text" name="main_width" value="<?php echo isset($main_width)?$main_width:""; ?>" placeholder="980" id="input-main_width" class="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="input-main_width"><span data-toggle="tooltip" title="<?php echo $help_main_height; ?>"><?php echo $entry_main_height; ?></span></label>
                <div class="col-sm-10">
                   <input type="text" name="main_height" value="<?php echo isset($main_height)?$main_height:""; ?>" placeholder="380" id="input-main_height" class="form-control" />
                </div>
            </div>

          </div>
      </div>
        <p><h3><?php echo $text_banner_image;?></h3></p>
        <div class="row">
        <div class="col-sm-2 vtabs">
          <?php $image_row = 1; ?>
          <ul class="nav nav-pills nav-stacked" id="module-slideshow">
          <?php foreach ($banner_images as $banner_image) { ?>
          <li>
            <a href="#tab-module-<?php echo $image_row; ?>" data-toggle="tab" class="btn btn-xl" style="margin-bottom:5px;display:block;" id="module-<?php echo $image_row; ?>"><span onclick="$('.vtabs a:first').trigger('click'); $('#module-<?php echo $image_row; ?>').remove(); $('#tab-module-<?php echo $image_row; ?>').remove(); return false;" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class=""><i class="fa fa-minus-circle"></i></span>&nbsp;<?php echo $tab_banner; ?> <?php echo $image_row; ?></a></li>
          <?php $image_row++; ?>
          <?php } ?>
          
          <li id="module-add"><a href="javascript:void(0);" class="btn btn-xl" title="" data-toggle="tooltip" onclick="addImage();" type="button" data-original-title="<?php echo $button_add_banner; ?>"><i class="fa fa-plus-circle"></i>&nbsp;<?php echo $button_add_banner; ?></a>
          </li>
        </div>
         <div class="col-sm-10">
           <div class="tab-content" id="tab-content">
          <?php $image_row = 1; ?>
          <?php foreach ($banner_images as $banner_image) { ?>
          <div id="tab-module-<?php echo $image_row; ?>" class="tab-pane vtabs-content">
            <ul class="nav nav-tabs" id="language-<?php echo $image_row; ?>">
                <?php foreach ($languages as $tmp_language) { ?>
                <li><a href="#tab-language-<?php echo $image_row; ?>-<?php echo $tmp_language['language_id']; ?>"  data-toggle="tab"><img src="view/image/flags/<?php echo $tmp_language['image']; ?>" title="<?php echo $tmp_language['name']; ?>" /> <?php echo $tmp_language['name']; ?></a></li>
                <?php } ?>
              </ul>
              <div class="tab-content" id="tab-content-lang">
              <?php foreach ($languages as $tmp_language) { ?>
                <div class="tab-pane" id="tab-language-<?php echo $image_row; ?>-<?php echo $tmp_language['language_id']; ?>">
                  <div class="form-group">
                      <label class="col-sm-2 control-label"><span class="required">*</span> <?php echo $language->get( 'entry_title' ); ?></label>
                      <div class="col-sm-8"><input size="60" class="form-control" name="banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $tmp_language['language_id']; ?>][title]" id="title-<?php echo $image_row; ?>-<?php echo $tmp_language['language_id']; ?>" value="<?php echo isset($banner_image['banner_image_description'][$tmp_language['language_id']]['title']) ? $banner_image['banner_image_description'][$tmp_language['language_id']]['title'] : ''; ?>"/></div>
                    </div>
                    
                   <div class="form-group">
                      <label class="col-sm-2 control-label"><?php echo $language->get('entry_description'); ?></label>
                      <div class="col-sm-8"><textarea class="form-control" name="banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $tmp_language['language_id']; ?>][description]" id="description-<?php echo $image_row; ?>-<?php echo $tmp_language['language_id']; ?>"><?php echo isset($banner_image['banner_image_description'][$tmp_language['language_id']]['description']) ? $banner_image['banner_image_description'][$tmp_language['language_id']]['description'] : ''; ?></textarea></div>
                    </div>                   
                </div>
                <?php } ?>
              </div>
                 <?php
                  $params = isset($banner_image['params'])?$banner_image['params']:array();
                ?>
              <div class="row">
                <div id="images" class="col-sm-10 table">    
                  
                    <div class="form-group">
                      <label class="col-sm-2 control-label"><?php echo $entry_link; ?></label>
                      <div  class="col-sm-8"><input class="form-control" size="60" type="text" name="banner_image[<?php echo $image_row; ?>][link]" value="<?php echo $banner_image['link']; ?>" /></div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label"><?php echo $language->get( 'entry_sort_order' ); ?></label>
                      <div  class="col-sm-8"><input class="form-control" size="40" type="text" name="banner_image[<?php echo $image_row; ?>][ordering]" value="<?php echo $banner_image['ordering']; ?>" /></div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label"><?php echo $entry_image; ?></label>
                      <div  class="col-sm-8">
                        <a href="" id="thumb-image-<?php echo $image_row; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $banner_image['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                  <input type="hidden" name="banner_image[<?php echo $image_row; ?>][image]" value="<?php echo $banner_image['image'];?>" id="input-image-<?php echo $image_row; ?>" />
                      </div>
                    </div>
                </div>
              </div>
            </div>
          <?php $image_row++; ?>
          <?php } ?>
            </div>
           </div>
         </div>
      </form>
    </div>
  </div>
</div>
</div>
<script type="text/javascript"><!--
<?php $image_row = 1; ?>
<?php foreach ($banner_images as $banner_image) { ?>
  <?php foreach ($languages as $language) { ?>
  $('#description-<?php echo $image_row; ?>-<?php echo $language['language_id']; ?>').summernote({height: 300});
  <?php } ?>
  <?php $image_row++; ?>
<?php } ?>
//--></script>
<script type="text/javascript"><!-- 
function initAutocomplete(module_index){
    $('#product_autocomplete_'+module_index).autocomplete({
            delay: 0,
            source: function(request, response) {
              $.ajax({
                url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
                dataType: 'json',
                data: {token: '<?php echo $token; ?>', filter_name: encodeURIComponent(request)},
                type: 'POST',
                success: function(json) {   
                  response($.map(json, function(item) {
                    return {
                      label: item['name'],
                      value: item['product_id']
                    }
                  }));
                }
              });
            }, 
            select: function(item) {
              $('#banner_image_'+module_index+'_product').val(item['value']);
              return false;
            }
          });
  }
//--></script>
<script type="text/javascript"><!--
var token = <?php echo $image_row; ?>;
$('#module-slideshow li:first-child a').tab('show');
function addImage() {
  var html = '<div id="tab-module-'+token+'" class="tab-pane vtabs-content">';
    html +='    <ul class="nav nav-tabs" id="language-'+token+'">';
                <?php foreach ($languages as $language) { ?>
    html +='              <li><a href="#tab-language-'+token+'-<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>';
                <?php } ?>
    html +='    </ul>';
    html +=' <div class="tab-content">';
              <?php foreach ($languages as $language) { ?>
    html +=' <div class="tab-pane" id="tab-language-'+token+'-<?php echo $language['language_id']; ?>">';
    html +='        <div class="form-group required">';
    html +='          <label class="col-sm-2 control-label" for="input-title-'+token+'<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>';
    html +='         <div class="col-sm-8"><input size="60" name="banner_image['+token+'][banner_image_description][<?php echo $language['language_id']; ?>][title]" id="input-title-'+token+'<?php echo $language['language_id']; ?>" class="form-control" value=""/></div>';
    html +='  </div>';
                    
    html +='  <div class="form-group">';
    html +='        <label class="col-sm-2 control-label" for="description-'+token+'-<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>';
    html +='        <div class="col-sm-8"><textarea name="banner_image['+token+'][banner_image_description][<?php echo $language['language_id']; ?>][description]" class="form-control" id="description-'+token+'-<?php echo $language['language_id']; ?>"></textarea></div>';
    html +='    </div>'; 
    html +='</div>';
                <?php } ?>
    html +='</div>';
    html +=' <div class="tab-pane active" id="images">';
  

    html +='                <div class="form-group">';
    html +='                  <label class="col-sm-2 control-label"><?php echo $entry_link; ?></label>';
    html +='                  <div class="col-sm-8"><input size="60" class="form-control" type="text" name="banner_image['+token+'][link]" value="" /></div>';
   
    html +='                </div>';
    html +=' <div class="form-group">';
    html +='                  <label class="col-sm-2 control-label"><?php echo $entry_sort_order; ?></label>';
    html +='                  <div class="col-sm-8"><input size="40" type="text" class="form-control" name="banner_image['+token+'][ordering]" value="" /></div>';
    html +='                </div>';
    html +='                <div class="form-group">';
    html +='                  <label class="col-sm-2 control-label"><?php echo $entry_image; ?></label>';
    html +='                  <div class="col-sm-8"><a href="" id="thumb-image-'+token+'" data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>';
    html +='              <input type="hidden" name="banner_image['+token+'][image]" value="<?php echo $placeholder; ?>" id="input-image-'+token+'" /></div>';
    html +='                </div>';
    html +='            </div>';
    html +='        </div>';
  
  $('#tab-content').append(html);

  $('#language-'+token+' a:first').tab('show');
  
  $('#module-add').before('<li><a href="#tab-module-' + token + '" data-toggle="tab" class="btn btn-xl" style="margin-bottom:5px;display:block;" id="module-' + token + '"><span onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#module-' + token + '\').remove(); $(\'#tab-module-' + token + '\').remove(); return false;" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class=""><i class="fa fa-minus-circle"></i></span>&nbsp;<?php echo $tab_banner; ?> ' + token + '</a></li>');
  

  $('#module-slideshow a[href=\'#tab-module-' + token + '\']').tab('show');

  <?php foreach ($languages as $language) { ?>
    $('#description-'+token+'-<?php echo $language['language_id']; ?>').summernote({height: 200});
  <?php } ?>
  initAutocomplete(token);
  $('#module-'+token).trigger('click');

  token++;
}
//--></script>
<script type="text/javascript"><!--
function image_upload(field, thumb) {
  $('#dialog').remove();
  
  $('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
  
  $('#dialog').dialog({
    title: '<?php echo $text_image_manager; ?>',
    close: function (event, ui) {
      if ($('#' + field).attr('value')) {
        $.ajax({
          url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
          dataType: 'text',
          success: function(data) {
            $('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
          }
        });
      }
    },  
    bgiframe: false,
    width: 700,
    height: 400,
    resizable: false,
    modal: false
  });
};
//--></script>
<script type="text/javascript"><!--
<?php $image_row = 1; ?>
<?php foreach ($banner_images as $banner_image) { ?>
$('#language-<?php echo $image_row; ?> li:first-child a').tab("show");
<?php $image_row++; ?>
<?php } ?> 
//--></script>
<?php echo $footer; ?>