<?php
class ModelTmblogArticle extends Model {

	 public function getTotalArticles($data = array()){
		$sql = "SELECT COUNT(mb.blog_id) as total FROM " . DB_PREFIX . "tmblog mb
					   LEFT JOIN " . DB_PREFIX . "tmblog_description mbd ON (mb.blog_id = mbd.blog_id) 
                                           LEFT JOIN " . DB_PREFIX . "tmblog_to_store mb2s ON (mb.blog_id = mb2s.blog_id) 
                                           WHERE mbd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND mb2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND mb.status = '1'";
		

		
		$sql = $this->db->query($sql);

		 return $sql->row['total'];
	}


	public function getArticles($data = array()){
		$sql = "SELECT * FROM " . DB_PREFIX . "tmblog mb
					   LEFT JOIN " . DB_PREFIX . "tmblog_description mbd ON (mb.blog_id = mbd.blog_id) 
                                           LEFT JOIN " . DB_PREFIX . "tmblog_to_store mb2s ON (mb.blog_id = mb2s.blog_id) 
                                           WHERE mbd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND mb2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND mb.status = '1'";
		
	       $sql .= " ORDER BY mb.display_order ASC, mb.publish_date DESC";

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$sql = $this->db->query($sql);

		return $sql->rows;
	}

	public function getArticleview($current_article_id){
	
	      $sql = "SELECT * FROM " . DB_PREFIX . "tmblog mb
			LEFT JOIN " . DB_PREFIX . "tmblog_description mbd ON (mb.blog_id = mbd.blog_id) 
		      WHERE mb.blog_id = '" . (int)$current_article_id . "' AND mbd.language_id = '" . (int)$this->config->get('config_language_id') . "'";
	      $sql = $this->db->query($sql);

		return $sql->rows;
	}

	public function addComment($tmblogarticle_id, $data) {
		$this->event->trigger('pre.comment.add', $data);

		$this->db->query("INSERT INTO " . DB_PREFIX . "tmblog_comment SET user = '" . $this->db->escape($data['name']) . "', blog_id = '" . (int)$tmblogarticle_id. "',  comment = '" . $this->db->escape($data['text']) . "', rating = '" . (int)$data['rating'] . "', created_at = NOW()");

		$comment_id = $this->db->getLastId();

		$this->event->trigger('post.comment.add', $comment_id);
	}
	
	public function getCommentsByArticleId($tmblogarticle_id, $start = 0, $limit = 20) {

		if ($start < 0) {
			$start = 0;
		}

		if ($limit < 1) {
			$limit = 20;
		}

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "tmblog_comment mbc LEFT JOIN " . DB_PREFIX . "tmblog mb ON (mbc.blog_id = mb.blog_id) LEFT JOIN " . DB_PREFIX . "tmblog_description mbd ON (mb.blog_id = mbd.blog_id) 
					   WHERE mb.blog_id = '" . (int)$tmblogarticle_id . "' AND mbc.status = '1' 
					   AND mbd.language_id = '" . (int)$this->config->get('config_language_id') . "' 
					   ORDER BY mbc.created_at DESC LIMIT " . (int)$start . "," . (int)$limit);

		return $query->rows;
	}

	public function getTotalCommentsByArticleId($tmblogarticle_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "tmblog_comment mbc LEFT JOIN " . DB_PREFIX . "tmblog mb ON (mbc.blog_id = mb.blog_id) LEFT JOIN " . DB_PREFIX . "tmblog_description mbd ON (mb.blog_id = mbd.blog_id) 
					   WHERE mb.blog_id = '" . (int)$tmblogarticle_id . "' AND mbc.status = '1' 
					   AND mbd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row['total'];
	}
      
	public function getTotalArticlesByTag($data = array()){
		$sql = "SELECT COUNT(mb.blog_id) as total FROM " . DB_PREFIX . "tmblog mb
					   LEFT JOIN " . DB_PREFIX . "tmblog_description mbd ON (mb.blog_id = mbd.blog_id) 
                                           LEFT JOIN " . DB_PREFIX . "tmblog_to_store mb2s ON (mb.blog_id = mb2s.blog_id) 
                                           WHERE mbd.tags LIKE '%" . $this->db->escape($data['filter_tag']) . "%' AND mbd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND mb2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND mb.status = '1'";

		$sql .= " ORDER BY mb.display_order ASC, mb.publish_date DESC";

		
		$sql = $this->db->query($sql);

		 return $sql->row['total'];
	}

	public function getArticlesByTag($data = array()){
		$sql = "SELECT * FROM " . DB_PREFIX . "tmblog mb
					   LEFT JOIN " . DB_PREFIX . "tmblog_description mbd ON (mb.blog_id = mbd.blog_id) 
                                           LEFT JOIN " . DB_PREFIX . "tmblog_to_store mb2s ON (mb.blog_id = mb2s.blog_id) 
                                           WHERE mbd.tags LIKE '%" . $this->db->escape($data['filter_tag']) . "%' AND mbd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND mb2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND mb.status = '1'";

		$sql .= " ORDER BY mb.display_order ASC, mb.publish_date DESC";

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}
		$sql = $this->db->query($sql);

		return $sql->rows;
	}
 
	public function getArticlesByFeed($data = array()){
		$sql = "SELECT * FROM " . DB_PREFIX . "tmblog mb
					   LEFT JOIN " . DB_PREFIX . "tmblog_description mbd ON (mb.blog_id = mbd.blog_id) 
                                           LEFT JOIN " . DB_PREFIX . "tmblog_to_store mb2s ON (mb.blog_id = mb2s.blog_id) 
                                           WHERE mbd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND mb2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND mb.status = '1'";
		
	       $sql .= " ORDER BY mb.display_order ASC, mb.publish_date DESC";

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$sql = $this->db->query($sql);

		return $sql->rows;
	}


} 
