<?php
class ModelModuleCategorySlider extends Model {
	public function getInfo($module_id) {
		//echo "string";exit();
		$category_slider_data = array();

		$category_slider_data_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "module WHERE module_id = '" . (int)$module_id . "' ");
        $info = $category_slider_data_query->rows;
        
        $categoryslider = json_decode($info[0]['setting'],true);
		// print_r($categoryslider);exit();
		if(isset($categoryslider['category_slider_module'])) {
			foreach ($categoryslider['category_slider_module'] as $categoryslider_image) {

				$category_slider_data[] = array(
					'category_id'                   => $categoryslider_image['category_id'],
					'image'                         => $categoryslider_image['image'],
				);
			}
		}
//print_r($category_slider_data);exit();
		return $category_slider_data;
	}
}?>