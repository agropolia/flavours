<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-tmslideshow" title="" class="btn btn-primary"><?php echo $button_save; ?></button>
        <a onclick="$('#action').val('save_stay');$('#form-tmslideshow').submit();" title="" class="btn btn-info"><?php echo $button_save_stay; ?></a>
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
    <div class="slidebar"><?php require( DIR_APPLICATION.'view/template/module/tmslideshow/toolbar.tpl' ); ?></div>
    <?php if (isset($error_warning) && $error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-th-large"></i> <?php echo $text_module_setting; ?></h3>
      </div>
    <div class="panel-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-tmslideshow" class="form-horizontal">
        <input type="hidden" name="action" id="action" value=""/>
        <div class="form-group">
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
              <select name="status" id="input-status" class="form-control">
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
          <label class="col-sm-2 control-label"><?php echo $entry_banner; ?></label>
          <div class="col-sm-8"><select class="form-control" size="10" name="banner_id">
            <option value="0"><?php echo $text_select_banner;?></option>
              <?php 
               if($banners){
                foreach($banners as $banner){
                  if($banner['tmbanner_id'] == $banner_id){
                  ?>
                    <option value="<?php echo $banner['tmbanner_id'] ?>" selected="selected"><?php echo $banner['name']; ?></option>
                  <?php
                  }else{
                    ?>
                     <option value="<?php echo $banner['tmbanner_id'] ?>"><?php echo $banner['name']; ?></option>
                    <?php
                  }
                }
               }
              ?>
            </select></div>
        </div>       
      </form>
    </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('#language-general a').tab();
//--></script>
<?php echo $footer; ?>