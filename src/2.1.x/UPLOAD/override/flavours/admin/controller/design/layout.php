<?php
class flavours_ControllerDesignLayout extends ControllerDesignLayout {

    /* overridden method, this newly introduced function is always called
       before the final rendering
    */
    public function preRender( $template_buffer, $template_name, &$data ) {
        
        if ($template_name != 'design/layout_form.tpl') {
            return parent::preRender( $template_buffer, $template_name, $data );
        }
        $this->load->language('design/layout');
        $data['text_footer_right'] = $this->language->get('text_footer_right');
        $data['text_footer_bottom'] = $this->language->get('text_footer_bottom');
        

$str_search=array('<?php if ($layout_module[\'position\'] == \'column_right\') { ?>
                    <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                    <?php } else { ?>
                    <option value="column_right"><?php echo $text_column_right; ?></option>
                    <?php } ?>','html += \'    <option value="column_right"><?php echo $text_column_right; ?></option>\';');
$str_replace=array('<?php if ($layout_module[\'position\'] == \'column_right\') { ?>
                    <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                    <?php } else { ?>
                    <option value="column_right"><?php echo $text_column_right; ?></option>
                    <?php } ?>
            <?php if ($layout_module[\'position\'] == \'footer_right\') { ?>
                    <option value="footer_right" selected="selected"><?php echo $text_footer_right; ?></option>
                    <?php } else { ?>
                    <option value="footer_right"><?php echo $text_footer_right; ?></option>
                    <?php } ?>
                    <?php if ($layout_module[\'position\'] == \'footer_bottom\') { ?>
                    <option value="footer_bottom" selected="selected"><?php echo $text_footer_bottom; ?></option>
                    <?php } else { ?>
                    <option value="footer_bottom"><?php echo $text_footer_bottom; ?></option>
                    <?php } ?>','html += \'    <option value="column_right"><?php echo $text_column_right; ?></option>\';
                    html += \'    <option value="footer_right"><?php echo $text_footer_right; ?></option>\';
                    html += \'    <option value="footer_bottom"><?php echo $text_footer_bottom; ?></option>\';');
$template_buffer = str_replace($str_search,$str_replace,$template_buffer);

        

        // call parent method
        return parent::preRender( $template_buffer, $template_name, $data );
    }
}
?>