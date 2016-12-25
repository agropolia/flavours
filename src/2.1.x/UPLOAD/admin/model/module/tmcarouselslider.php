<?php
class ModelModuleTmcarouselslider extends Model {
	public function getInfo($module_id) {
		$tmcarouselslider_image_data = array();

		$tmcarouselslider_image_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "module WHERE module_id = '" . (int)$module_id . "' ");
        $info = $tmcarouselslider_image_query->rows;        
        $tmcarouselslider = json_decode($info[0]['setting'], true);
        
		foreach ($tmcarouselslider['tmcarouselslider_image'] as $tmcarouselslider_image) {

			foreach ($tmcarouselslider_image['tmcarouselslider_image_description'] as $key => $value) {
				$description[$key]=array('description'=>$value['description']);
				}
			foreach ($tmcarouselslider_image['tmcarouselslider_image_title'] as $key => $value) {
			$title[$key]=array('title'=>$value['title']);
			}	

			$tmcarouselslider_image_data[] = array(
				'tmcarouselslider_image_title'       => $title,
				'link'                          => $tmcarouselslider_image['link'],
				'image'                         => $tmcarouselslider_image['image'],
				'tmcarouselslider_image_description' => $description				
			);
		}

		return $tmcarouselslider_image_data;
	}
}?>