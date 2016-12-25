<?php
class ControllerModuleTmslideshow extends Controller {

	public function index($setting = array()) {
		static $module = 0;
		$data = array();
		if(empty($setting)){
			$modules = $this->config->get('tmslideshow_module');
			if ($modules) {
				$setting = isset($modules[1])?$modules[1]:array();
			}
		}
		$this->language->load('module/tmslideshow');
		$this->load->model('tmslideshow/banner');
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		$setting = $this->defaultConfig($setting);
			    
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
         	$base = $this->config->get('config_ssl');
         	$base = empty($base)?HTTPS_CATALOG:$base;
	    } else {
	        $base = $this->config->get('config_url');
	        $base = empty($base)?HTTP_CATALOG:$base;
	    }
	    $data['base'] = $base;
	    
	    $lang_id = $this->config->get('config_language_id');

	    $data_source = isset($setting["data_source"])?$setting["data_source"]:"banner";
	    $limit = isset($setting["limit"])?$setting["limit"]:5;
	   
	    $data["module_width"] = isset($setting["module_width"])?$setting["module_width"]:"800px";
	    $data["module_height"] = isset($setting["module_height"])?$setting["module_height"]:"600px";
	
	    $data["slides"] = array();
	    $banners = array();

	    $setting['banner_id'] = isset($setting['banner_id'])?(int)$setting['banner_id']:0;

	    if(!empty($setting['banner_id'])){
	    	$banners = $this->model_tmslideshow_banner->getBanner($setting['banner_id'], $limit);
		    $data["slides"] = $this->getBannerInfo($banners, $setting);

			$data['module'] = $module++;

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/tmslideshow.tpl')) {
				return $this->load->view( $this->config->get('config_template') . '/template/module/tmslideshow.tpl', $data);
			} else {
				return $this->load->view('default/template/module/tmslideshow.tpl', $data);
			}
	    }
	    return false;
	}
	function getBannerInfo($banners = array(), $setting= array()){
		$data = array();
		$banner_info = $banners['banner_info'];
		$banners = $banners['banners'];
		$main_width = $main_height = 0;
		if($banner_info){
			$main_width = isset($banner_info["main_width"])?$banner_info["main_width"]:"0";
	   		$main_height = isset($banner_info["main_height"])?$banner_info["main_height"]:"0";
		}
		if(empty($main_width) && empty($main_height)){
			$main_width = isset($setting["main_width"])?$setting["main_width"]:"800";
	    	$main_height = isset($setting["main_height"])?$setting["main_height"]:"600";
		}
		
		foreach ($banners as $banner) {
			$image = false;
			$thumb = false;
			$rating = false;
			$price = false;
			$special = false;
			$reviews = false;
			if(!empty($banner['image'])){
					if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
						$image = $this->config->get('config_ssl') . 'image/' . $banner['image'];
					} else {
						$image = $this->config->get('config_url') . 'image/' . $banner['image'];
					}
				$thumb = $banner['image'];

			}
	
			$description = $banner['description'];
	
			
			$data[] = array(
				// 'product_id' => $banner['product_id'],
				'thumb'   	 => $thumb,
				'image'		 => $image,
				'caption'    => $banner['title'],
				'link'    	 => $banner['link'],
				
				'description'=> $description				
			);
		}
		return $data;
	}
	
	
	protected function defaultConfig($setting = array()){
		$defaults = array(
			'module_width'			=> '800px',
			'module_height'			=> '600px',
			'main_width'			=> '800',
			'main_height'			=> '600',		
			'banner_id'				=> '0'
			);
		if(!empty($setting)){
			return array_merge($defaults, $setting);
		}
		else{
			return $defaults;
		}
	}
}
?>
