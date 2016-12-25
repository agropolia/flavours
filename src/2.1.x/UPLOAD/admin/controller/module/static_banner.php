<?php
class ControllerModuleStaticBanner extends Controller {
    private $error = array();

    public function index() {
        $this->load->language('module/static_banner');

        $this->document->setTitle(strip_tags($this->language->get('heading_title')));

        $this->load->model('extension/module');
        
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            if (!isset($this->request->get['module_id'])) {
                $this->model_extension_module->addModule('static_banner', $this->request->post);
            } else {
                $this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
            }
            
            $this->cache->delete('product');

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }

        $data['heading_title'] = $this->language->get('heading_title');
        
        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        
        $data['entry_name'] = $this->language->get('entry_name');        
        $data['entry_width'] = $this->language->get('entry_width');
        $data['entry_height'] = $this->language->get('entry_height');        
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_banner_link'] = $this->language->get('entry_banner_link');
        
        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['button_remove'] = $this->language->get('button_remove');
        $data['button_module_add'] = $this->language->get('button_module_add');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }
        
        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = '';
        }
        
        if (isset($this->error['width'])) {
            $data['error_width'] = $this->error['width'];
        } else {
            $data['error_width'] = '';
        }
        
        if (isset($this->error['height'])) {
            $data['error_height'] = $this->error['height'];
        } else {
            $data['error_height'] = '';
        }
        
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );

        if (!isset($this->request->get['module_id'])) {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/static_banner', 'token=' . $this->session->data['token'], 'SSL')
            );
        } else {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/static_banner', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
            );          
        }

        if (!isset($this->request->get['module_id'])) {
            $data['action'] = $this->url->link('module/static_banner', 'token=' . $this->session->data['token'], 'SSL');
        } else {
            $data['action'] = $this->url->link('module/static_banner', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
        }
        
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
        
        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
            $module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
        }
        
        if (isset($this->request->post['name'])) {
            $data['name'] = $this->request->post['name'];
        } elseif (!empty($module_info)) {
            $data['name'] = $module_info['name'];
        } else {
            $data['name'] = '';
        }
                        
        if (isset($this->request->post['width'])) {
            $data['width'] = $this->request->post['width'];
        } elseif (!empty($module_info)) {
            $data['width'] = $module_info['width'];
        } else {
            $data['width'] = 200;
        }   
            
        if (isset($this->request->post['height'])) {
            $data['height'] = $this->request->post['height'];
        } elseif (!empty($module_info)) {
            $data['height'] = $module_info['height'];
        } else {
            $data['height'] = 200;
        }       

        if (isset($this->request->post['status'])) {
            $data['status'] = $this->request->post['status'];
        } elseif (!empty($module_info)) {
            $data['status'] = $module_info['status'];
        } else {
            $data['status'] = '';
        }

        // if (isset($this->request->post['banner_link'])) {
        //     $data['banner_link'] = $this->request->post['banner_link'];
        // } elseif (!empty($module_info)) {
        //     $data['banner_link'] = $module_info['banner_link'];
        // } else {
        //     $data['banner_link'] = '#';
        // }   
                
        $this->load->model('design/layout');
        
        //$this->data['layouts'] = $this->model_design_layout->getLayouts();
        $this->load->model('tool/image');
        
        if (isset($this->request->post['static_banner_module'])) {
            $banner_info = $this->request->post['static_banner_module'];
        } elseif (isset($this->request->get['module_id'])) {
            $this->load->model('module/static_banner');
            $banner_info = $this->model_module_static_banner->getInfo($this->request->get['module_id']);
        } else {
            $banner_info = array();
        }


        $data['banner_info'] = array();

        foreach ($banner_info as $banner) {
        if (is_file(DIR_IMAGE . $banner['image'])) {
        $image = $banner['image'];
        $thumb = $banner['image'];
        } else {
        $image = '';
        $thumb = 'no_image.png';
        }

        $data['banner_info'][] = array(
        'banner_link'    => $banner['banner_link'],
        'image'          => $image,
        'thumb'          => $this->model_tool_image->resize($thumb, 100, 100)
        
        );
        }

        $data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/static_banner.tpl', $data));
    }

    protected function validate() {
        if (!$this->user->hasPermission('modify', 'module/static_banner')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
        
        if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
            $this->error['name'] = $this->language->get('error_name');
        }

        if (!$this->request->post['width']) {
            $this->error['width'] = $this->language->get('error_width');
        }
        
        if (!$this->request->post['height']) {
            $this->error['height'] = $this->language->get('error_height');
        }
      
        return !$this->error;
    }
}
?>