<?php
class flavours_ControllerCommonHeader extends ControllerCommonHeader {

public function preRender( $template_buffer, $template_name, &$data ) {
        if ($template_name != $this->config->get('config_template').'/template/common/header.tpl') {
            return parent::preRender( $template_buffer, $template_name, $data );
        }

        // add new controller variables

            $this->load->language( 'common/header' );
            $data['text_welcome'] = $this->language->get( 'text_welcome' );
            $data['text_delivery'] = $this->language->get( 'text_delivery' );
            $data['text_contacts'] = $this->language->get( 'text_contacts' );
            $data['text_menu'] = $this->language->get( 'text_menu' );
       $data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
       $data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));
       $data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
       $data['compare'] = $this->url->link('product/compare');
       $this->load->model('catalog/category');
       $this->load->model('catalog/product');



            $data['categories1'] = array();
        $this->load->model('tool/image');
        $categories_1 = $this->model_catalog_category->getCategories(0);

          foreach ($categories_1 as $category_1) {
            if($category_1['top']){
             $level_2_data = array();

             $categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);


             foreach ($categories_2 as $category_2) {
                if(!empty($category_2['image'])){
                  $subcatimage = $category_2['image'];
                  $thumb = $this->model_tool_image->resize($subcatimage, 178, 120);
                } else {
                  $thumb='';
                }

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
                   'thumb'    => $thumb,
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
              //echo "<pre>";print_r($level_2_data);
            }
          }

     return parent::preRender( $template_buffer, $template_name, $data );
    }

}