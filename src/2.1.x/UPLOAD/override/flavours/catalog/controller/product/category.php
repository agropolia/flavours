<?php
class flavours_ControllerProductCategory extends ControllerProductCategory {

public function preRender( $template_buffer, $template_name, &$data ) {
        if ($template_name != $this->config->get('config_template').'/template/product/category.tpl') {
            return parent::preRender( $template_buffer, $template_name, $data );
        }
       
        // add new controller variables
        $this->load->language( 'product/category' );
        $data['text_quickview'] = $this->language->get('text_quickview');
        //$data['text_item_compare'] = $this->language->get('text_item_compare');        
        //$data['text_wishlist'] = $this->language->get('text_wishlist');
        
        // call parent method
        return parent::preRender( $template_buffer, $template_name, $data );
    }
} 
