<?php
    class Balancesheet extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            if(isset($_POST['search']))
            {
                $where = array(
                    'date >= ' => $this->input->post('from'),
                    'date <= ' => $this->input->post('to'),
                );
                    
            }else{
                $where = array(
                    'date >= ' => date("Y-m-d"),
                    'date <= ' => date("Y-m-d"),
                );
            }
            
            
            $this->data['allIncome'] = read('income', $where);
            $this->data['allCost'] = read('cost', $where);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/balancesheet/all', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        
    }
?>