<?php

class ControllerModuleStaticBanner extends Controller {
	public function index($setting) {

		$this->load->model('tool/image');
		$this->load->language('module/static_banner');
		$this->load->model('catalog/category');
		$data = array();
		if (isset($setting['static_banner_module'])) {
			$slider = array();
			
			foreach ($setting['static_banner_module'] as $slide) {

				$slider[] = array('image'=>$this->model_tool_image->resize($slide['image'],$setting['width'],$setting['height']),'banner_link'=>$slide['banner_link']); 
			}
		}
		$data['heading_title'] = $this->language->get('heading_title');
		$data['slider'] = $slider;

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/static_banner.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/static_banner.tpl', $data);
			} else {
				return $this->load->view('default/template/module/static_banner.tpl', $data);
			}
		}
}
	