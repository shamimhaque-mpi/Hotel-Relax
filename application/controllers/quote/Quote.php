<?php
    class Quote extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = 'Quote';
            $this->data['meta_description'] = '';
            
            $this->data['quote'] = read('quote');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/quote/list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
    }
?>