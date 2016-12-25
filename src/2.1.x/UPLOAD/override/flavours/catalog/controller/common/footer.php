<?php
class flavours_ControllerCommonFooter extends ControllerCommonFooter {

    public function preRender( $template_buffer, $template_name, &$data ) {
        if ($template_name != $this->config->get('config_template').'/template/common/footer.tpl') {
            return parent::preRender( $template_buffer, $template_name, $data );
        }

        $data['footer_right'] = $this->load->controller('common/footer_right');
        $data['footer_bottom'] = $this->load->controller('common/footer_bottom');
        $data['newslettersubscription'] = $this->load->controller('module/newslettersubscription');
        $data['home'] = $this->url->link('common/home');
        
        $this->load->model('catalog/manufacturer');
        //$this->load->model('tool/seo_url');
        $this->load->model('tool/image');

        $data['tmmanufacturers'] = array();

        $results = $this->model_catalog_manufacturer->getManufacturers();

        foreach ($results as $result) {
            $data['tmmanufacturers'][] = array(
                'tmmanufacturer_image' => $this->model_tool_image->resize($result['image'],130,100),
                'tmname'            => $result['name'],
                'href'            => $this->url->link('product/manufacturer/info&manufacturer_id=' . $result['manufacturer_id'])
                //'href'            => $this->model_tool_seo_url->rewrite(HTTP_SERVER . 'index.php?route=product/manufacturer/info&manufacturer_id=' . $result['manufacturer_id'])
            );
        } 
        $this->load->model('catalog/category');
        $this->load->model('catalog/product');

        $data['categories1'] = array();

        $categories_1 = $this->model_catalog_category->getCategories(0);
          
          foreach ($categories_1 as $category_1) {
            if($category_1['top']){
             $level_2_data = array();
             
             $categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);
             
             foreach ($categories_2 as $category_2) {
                $level_3_data = array();
                
                $categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);
                
                foreach ($categories_3 as $category_3) {
                   $level_3_data[] = array(
                      'name' => $category_3['name'],
                                           'column'   => $category_3['column'] ? $category_3['column'] : 1,
                      'href' => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id']),
                      'category_id'=> $category_3['category_id']
                   );
                }
                
                $level_2_data[] = array(
                   'name'     => $category_2['name'],
                   'children' => $level_3_data,
                   'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id']),
                   'category_id'=> $category_2['category_id']   
                );               
             }
             
             $data['categories1'][] = array(
                'name'     => $category_1['name'],
                'children' => $level_2_data,
                'column'   => $category_1['column'] ? $category_1['column'] : 1,
                'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id']),
                'category_id'=> $category_1['category_id']
             );
            } 
          }            
        return parent::preRender( $template_buffer, $template_name, $data );
    }    
}