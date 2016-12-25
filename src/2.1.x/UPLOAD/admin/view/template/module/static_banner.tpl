<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-static_banner" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-static_banner" class="form-horizontal">
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
          <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_width; ?></label>
          <div class="col-sm-10">
            <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
            <?php if ($error_width) { ?>
            <div class="text-danger"><?php echo $error_width; ?></div>
            <?php } ?>
          </div>
        </div>

        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_height; ?></label>
          <div class="col-sm-10">
            <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
            <?php if ($error_height) { ?>
            <div class="text-danger"><?php echo $error_height; ?></div>
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

            <table id="module" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <td class="text-left"><?php echo "Link"; ?></td>
                <td colspan="2" class="text-left"><?php echo "Static Banner Images"; ?></td>
                <td ></td>
              </tr>
            </thead>
           
              <?php $module_row = 0; ?>
              <?php foreach ($banner_info as $module) { ?>
               <tbody id="module-row<?php echo $module_row; ?>">
              <tr>
                <td><input type"text" name="static_banner_module[<?php echo $module_row; ?>][banner_link]" id="banner_link<?php echo $module_row; ?>" value="<?php echo $module['banner_link']; ?>"></td>         
                <td class="text-left" colspan="2">                                   
                     <a href="" id="thumb-image<?php echo $module_row; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $module['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                  <input type="hidden" name="static_banner_module[<?php echo $module_row; ?>][image]" value="<?php echo $module['image']; ?>" id="input-image<?php echo $module_row; ?>" />
                </td>

                <td class="text-left"><button type="button" onclick="$('#module-row<?php echo $module_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
              </tr>
              <?php $module_row++; ?>
              <?php } ?>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="3"></td>
                <td class="text-left"><button type="button" onclick="addModule();" data-toggle="tooltip" title="<?php echo $button_module_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
              </tr>
            </tfoot>
          </table>

          </form>
        </div>
      </div>
    </div>



  </div>

    <script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {  
  html  = '<tbody id="module-row' + module_row + '">';
  
  html += '  <tr>';
  html += '  <td><input type"text" name="banner_link'+ module_row +'" id="banner_link'+ module_row +'" value=""></td>';

  html += '<td class="text-left" colspan="2"><a href="" id="thumb-image'+ module_row +'" data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><input type="hidden" name="static_banner_module['+ module_row +'][image]" value="" id="input-image'+ module_row +'" /></td>';

  html += '<td  class="left"><button type="button" onclick="$(\'#module-row' + module_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
  html += '  </tr>';
  html += '</tbody>';
  
  $('#module tfoot').before(html);

  
  module_row++;
}
//--></script> 
  <?php echo $footer; ?>