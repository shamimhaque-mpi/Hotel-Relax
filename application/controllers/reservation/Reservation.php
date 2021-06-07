<?php
    class Reservation extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $where = [];
            if($_POST){
                ($_POST['phone']    != '' ? $where['phone']     = $_POST['phone'] : '');
                ($_POST['from']     != '' ? $where['date >=']   = $_POST['from'] : '');
                ($_POST['to']       != '' ? $where['date <=']   = $_POST['to'] : '');
            }
            $this->data['reservations'] = read('reservation', $where);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/reservation/list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function view($id){
            
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['reservation'] = read('reservation', ['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/reservation/view', $this->data); 
            $this->load->view('admin/includes/footer', $this->data);
        }
    }
?>