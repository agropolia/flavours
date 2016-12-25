<?php
class flavours_ControllerCommonCart extends ControllerCommonCart {

public function preRender( $template_buffer, $template_name, &$data ) {
        if ($template_name != $this->config->get('config_template').'/template/common/cart.tpl') {
            return parent::preRender( $template_buffer, $template_name, $data );
        }
       
        // add new controller variables

            $this->load->language( 'common/cart' );
            $data['cart_heading'] = $this->language->get( 'cart_heading' );
            $data['text_items'] = sprintf($this->language->get('text_items'), $this->cart->countProducts());
      	
        return parent::preRender( $template_buffer, $template_name, $data );
    }

}
