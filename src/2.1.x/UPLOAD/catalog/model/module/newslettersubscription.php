<?php
class ModelModuleNewslettersubscription extends Model 
{ 
	public function EmailSubmit($email) 
	{
		$query =  $this->db->query("SELECT email FROM " . DB_PREFIX . "newslettersubscription WHERE email = '".$this->db->escape($email)."' ");

		if($query->row) { return "<p style='color:#3c763d'>Already Subscribed </p>";}
		
 		$this->db->query("INSERT INTO " . DB_PREFIX . "newslettersubscription SET email = '".$this->db->escape($email)."' , status = 1, create_time = NOW()");
		
		return "<p style='color:#3c763d'>Thank you for your subscription.</p>";
	}
}
?>