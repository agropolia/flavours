<?php
class ModelTmslideshowBanner extends Model {	
	public function getBanner($banner_id, $limit_banner = 50) {
		$limit = "";
		$orderby = " ORDER BY bi.ordering";
		if(!empty($limit_banner)){
			$limit = " LIMIT ".$limit_banner;
		}
		
		$data = array();
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "tmbanner_image bi LEFT JOIN " . DB_PREFIX . "tmbanner_image_description bid ON (bi.tmbanner_image_id  = bid.tmbanner_image_id) WHERE bi.tmbanner_id = '" . (int)$banner_id . "' AND bid.language_id = '" . (int)$this->config->get('config_language_id') . "'".$orderby.$limit);
		$data['banners'] = $query->rows;

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "tmbanner WHERE tmbanner_id = " . (int)$banner_id );
		$data['banner_info'] = $query->row;
		return $data;
	}
	
}
?>