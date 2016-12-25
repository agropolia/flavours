<?php
class ModelModuleStaticBanner extends Model {
	public function getInfo($module_id) {
		//echo "string";exit();
		$static_banner_data = array();

		$static_banner_data_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "module WHERE module_id = '" . (int)$module_id . "' ");
        $info = $static_banner_data_query->rows;
        
        $staticbanners = json_decode($info[0]['setting'],true);
		//print_r($staticbanners);exit();
		foreach ($staticbanners['static_banner_module'] as $categoryslider_image) {
			
			$static_banner_data[] = array(
				'banner_link'    => $categoryslider_image['banner_link'],
				'image'   => $categoryslider_image['image'],
			);
		}
		return $static_banner_data;
	}
		
}
?>