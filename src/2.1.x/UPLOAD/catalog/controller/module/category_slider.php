<?php

class ControllerModuleCategoryslider extends Controller {
	public function index($setting) {

		$this->load->model('tool/image');
		$this->load->language('module/category_slider');
		$this->load->model('catalog/category');
		$data = array();
		if (isset($setting['category_slider_module'])) {
			$slider = array();
			
			foreach ($setting['category_slider_module'] as $slide) {

			$href=array();		
			$category_result = $this->model_catalog_category->getCategory($slide['category_id']);
			//print_r($category_result);

			if(isset($category_result['parent_id'])) {
				$parent_id = $category_result['parent_id'];
				$href=array('self'=>$slide['category_id'],'parent0'=>$category_result['parent_id']);

				$i=1;
				while($parent_id!=0){
			
					$result = $this->model_catalog_category->getCategory($parent_id);
					//print_r($result);
					$parent_id=$result['parent_id'];
					$href['parent'.$i]=$parent_id;
					$i++;
				}

				array_pop($href);	//remove parent 0
				$re_href= array_reverse($href);//reverse array
				
				$cat_href=NULL;
				$cat_href=implode('_', $re_href);//put' _ ' between 'id's
			}

 			$slider[] = array('name'=>$category_result['name'],'href'=>$this->url->link('product/category', 'path=' . $cat_href),'image'=>$this->model_tool_image->resize($slide['image'], $setting['width'],$setting['height'])); 
			}
		}
		$data['heading_title'] = $this->language->get('heading_title');
		$data['slider'] = $slider;
		//print_r($data);exit();

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category_slider.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/category_slider.tpl', $data);
			} else {
				return $this->load->view('default/template/module/category_slider.tpl', $data);
			}
		}
}
	