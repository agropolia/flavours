<?php
class tmslideshow_ControllerCommonHeader extends ControllerCommonHeader {
    /* overridden method, this newly introduced function is always called
       before the final rendering
    */
    public function index() {
	if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/stylesheet/revslider.css')) {
		$this->document->addStyle('catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/revslider.css');
	} else {
		$this->document->addStyle('catalog/view/theme/default/stylesheet/revslider.css');
	}	
    $this->document->addScript('catalog/view/javascript/tmslideshow/revslider.js');
    // call parent method
    return parent::index();
    }
}?>
