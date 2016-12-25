<?php
class ControllerModuleTmFlavours extends Controller {
    private $error = array(); // This is used to set the errors, if any.
 
    public function index() {
        // Loading the language file of tmflavours
        $this->load->language('module/tmflavours'); 
     
        // Set the title of the page to the heading title in the Language file i.e., Hello World
        $this->document->setTitle(strip_tags($this->language->get('heading_title')));
     
        // Load the Setting Model  (All of the OpenCart Module & General Settings are saved using this Model )
        $this->load->model('setting/setting');
     
        // Start If: Validates and check if data is coming by save (POST) method
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            // Parse all the coming data to Setting Model to save it in database.
            $this->model_setting_setting->editSetting('tmflavours', $this->request->post);
     
            // To display the success text on data save
            $this->session->data['success'] = $this->language->get('text_success');
     
            // Redirect to the Module Listing
            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }
     
        // Assign the language data for parsing it to view
        $data['heading_title'] = $this->language->get('heading_title');
     
        $data['text_edit']    = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_content_top'] = $this->language->get('text_content_top');
        $data['text_content_bottom'] = $this->language->get('text_content_bottom');      
        $data['text_column_left'] = $this->language->get('text_column_left');
        $data['text_column_right'] = $this->language->get('text_column_right');
     
        $data['entry_code'] = $this->language->get('entry_code');
        $data['entry_layout'] = $this->language->get('entry_layout');
        $data['entry_position'] = $this->language->get('entry_position');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');
     
        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['button_add_module'] = $this->language->get('button_add_module');
        $data['button_remove'] = $this->language->get('button_remove');
         
        // This Block returns the warning if any
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }
     
        // This Block returns the error code if any
        if (isset($this->error['code'])) {
            $data['error_code'] = $this->error['code'];
        } else {
            $data['error_code'] = '';
        }     
     
        // Making of Breadcrumbs to be displayed on site
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/tmflavours', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
          
        $data['action'] = $this->url->link('module/tmflavours', 'token=' . $this->session->data['token'], 'SSL'); // URL to be directed when the save button is pressed
     
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'); // URL to be redirected when cancel button is pressed
              
        // This block checks, if the hello world text field is set it parses it to view otherwise get the default 
        // hello world text field from the database and parse it
        
$config_data = array(
        
        'tmflavours_address',
        'tmflavours_phone',
        'tmflavours_email',
        'tmflavours_fb',
        'tmflavours_twitter',
        'tmflavours_gglplus',
        'tmflavours_rss',
        'tmflavours_pinterest',
        'tmflavours_linkedin',
        'tmflavours_youtube',
        'tmflavours_powerby',
        'tmflavours_home_option',
        'tmflavours_quickview_button',
        'tmflavours_scroll_totop',
        'tmflavours_sale_label',
        'tmflavours_sale_labeltitle',
        'tmflavours_sale_labelcolor',
        'tmflavours_header_offer',
        'tmflavours_header_offer_content',
        'tmflavours_menubar_cb',
        'tmflavours_menubar_cbtitle',
        'tmflavours_menubar_cbcontent',
        'tmflavours_product_ct',
        'tmflavours_product_cttitle',
        'tmflavours_product_ctcontent',
        'tmflavours_product_ct2',
        'tmflavours_product_ct2title',
        'tmflavours_product_ct2content',
        // 'tmflavours_newsletter',
        // 'tmflavours_newslettercontent',
        'tmflavours_footer_cb',
        'tmflavours_footer_cbcontent',
        'tmflavours_body_bg',
        'tmflavours_body_bg_ed',
        'tmflavours_fontcolor',
        'tmflavours_fontcolor_ed',
        'tmflavours_linkcolor',
        'tmflavours_linkcolor_ed',
        'tmflavours_linkhovercolor',
        'tmflavours_linkhovercolor_ed',
        'tmflavours_headerbg',
        'tmflavours_headerbg_ed',
        'tmflavours_headerlinkcolor',
        'tmflavours_headerlinkcolor_ed',
        'tmflavours_headerlinkhovercolor',
        'tmflavours_headerlinkhovercolor_ed',
        'tmflavours_headerclcolor',
        'tmflavours_headerclcolor_ed',
        'tmflavours_mmbgcolor',
        'tmflavours_mmbgcolor_ed',
        'tmflavours_mmlinkscolor',
        'tmflavours_mmlinkscolor_ed',
        'tmflavours_mmlinkshovercolor',
        'tmflavours_mmlinkshovercolor_ed',
        'tmflavours_mmslinkscolor',
        'tmflavours_mmslinkscolor_ed',
        'tmflavours_mmslinkshovercolor',
        'tmflavours_mmslinkshovercolor_ed',
        'tmflavours_buttoncolor',
        'tmflavours_buttoncolor_ed',
        'tmflavours_buttonhovercolor',
        'tmflavours_buttonhovercolor_ed',
        'tmflavours_pricecolor',
        'tmflavours_pricecolor_ed',
        'tmflavours_oldpricecolor',
        'tmflavours_oldpricecolor_ed',
        'tmflavours_newpricecolor',
        'tmflavours_newpricecolor_ed',
        'tmflavours_footerbg',
        'tmflavours_footerbg_ed',
        'tmflavours_footerlinkcolor',
        'tmflavours_footerlinkcolor_ed',
        'tmflavours_footerlinkhovercolor',
        'tmflavours_footerlinkhovercolor_ed',
        'tmflavours_powerbycolor',
        'tmflavours_powerbycolor_ed',
        'tmflavours_fonttransform'
        );

foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $data[$conf] = $this->request->post[$conf];
            } else {
                $data[$conf] = $this->config->get($conf);
            }
        }

        $this->load->model('tool/image');
 
        if (isset($this->request->post['tmflavours_product_image1'])) {
            $data['tmflavours_product_image1'] = $this->request->post['tmflavours_product_image1'];
        } else {
            $data['tmflavours_product_image1'] = $this->config->get('tmflavours_product_image1');
        } 

        $data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
    

if (isset($this->request->post['module_description'])) {
            $data['module_description'] = $this->request->post['module_description'];
        } elseif (!empty($module_info)) {
            $data['module_description'] = $module_info['module_description'];
        } else {
            $data['module_description'] = '';
        }


        if (isset($this->request->post['tmflavours_text_field'])) {
            $data['tmflavours_text_field'] = $this->request->post['tmflavours_text_field'];
        } else {
            $data['tmflavours_text_field'] = $this->config->get('tmflavours_text_field');
        }

        // if (isset($this->request->post['tmflavours_address'])) {
        //     $data['tmflavours_address'] = $this->request->post['tmflavours_address'];
        // } else {
        //     $data['tmflavours_address'] = $this->config->get('tmflavours_address');
        // }

          if (isset($this->request->post['tmflavours_text_field1'])) {
            $data['tmflavours_text_field1'] = $this->request->post['tmflavours_text_field1'];
        } else {
            $data['tmflavours_text_field1'] = $this->config->get('tmflavours_text_field1');
        }

        if (isset($this->request->post['name123'])) {
            $data['name123'] = $this->request->post['name123'];
        } else {
            $data['name123'] = $this->config->get('name123');
        }   
          
        // This block parses the status (enabled / disabled)
        // if (isset($this->request->post['tmflavours_status'])) {
        //     $data['tmflavours_status'] = $this->request->post['tmflavours_status'];
        // } else {
        //     $data['tmflavours_status'] = $this->config->get('tmflavours_status');
        // }
        
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/tmflavours.tpl', $data));

    }

    /* Function that validates the data when Save Button is pressed */
    protected function validate() {
 
        // Block to check the user permission to manipulate the module
        if (!$this->user->hasPermission('modify', 'module/tmflavours')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
 
        // Block to check if the tmflavours_text_field is properly set to save into database,
        // otherwise the error is returned
        // if (!$this->request->post['tmflavours_text_field']) {
        //     $this->error['code'] = $this->language->get('error_code');
        // }
        /* End Block*/
 
        // Block returns true if no error is found, else false if any error detected
        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
} 
