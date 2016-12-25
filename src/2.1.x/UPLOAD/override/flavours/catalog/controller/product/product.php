<?php
class flavours_ControllerProductProduct extends ControllerProductProduct {
	
public function preRender( $template_buffer, $template_name, &$data ) {
        if ($template_name != $this->config->get('config_template').'/template/product/product.tpl') { 
        
           return parent::preRender( $template_buffer, $template_name, $data );
        }
       
        // add new controller variables
        $this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
        
		    $this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');
  
        // call parent method
        return parent::preRender( $template_buffer, $template_name, $data );
   }



}