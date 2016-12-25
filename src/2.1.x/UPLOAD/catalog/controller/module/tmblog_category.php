<?php  
class ControllerModuleTmblogCategory extends Controller {

	public function index() {

		$this->language->load('module/tmblog_category');

		$data['heading_title'] = $this->language->get('heading_title');

		$this->load->model('tmblog/category');
		$data['categoryList'] = array();
		$categoryList = $this->model_tmblog_category->categoryParentChildTree(); 

		foreach ($categoryList as $category) {
			$data['categoryList'][] = array(
					'category_id' => $category['category_id'],
					'name'     => $category['name'],
					'href'     => $this->url->link('tmblog/category', 'tmblogcategory_id=' . $category['category_id'])
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/tmblog_category.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/tmblog_category.tpl', $data);
		} else {
			return $this->load->view('default/template/module/tmblog_category.tpl', $data);
		}

	}
}
?> 
