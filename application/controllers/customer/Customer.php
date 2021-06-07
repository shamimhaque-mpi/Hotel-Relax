<?php
    class Customer extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['room_type'] = read('products');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/customer/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function all_view(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['allCustomer'] = read('customer');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/customer/list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function view($id=NULL){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['customer'] = read('customer', ['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/customer/view', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'nid' => $this->input->post('nid'),
                'room_no' => $this->input->post('room_no'),
                'name' => $this->input->post('name'),
                'date_in' => $this->input->post('date_in'),
                'date_out' => $this->input->post('date_out'),
                'gender' => $this->input->post('gender'),
                'age' => $this->input->post('age'),
                'spouse' => $this->input->post('spouse'),
                'nationality' => $this->input->post('nationality'),
                'profession' => $this->input->post('profession'),
                'email' => $this->input->post('email'),
                'mobile' => $this->input->post('mobile'),
                'phone' => $this->input->post('phone'),
                'extra_man' => $this->input->post('extra_man'),
                'car_no' => $this->input->post('car_no'),
                'company' => $this->input->post('company'),
                'coming_from' => $this->input->post('coming_from'),
                'purpose_of_visit' => $this->input->post('purpose_of_visit'),
                'mode_of_payment' => $this->input->post('mode_of_payment'),
                'trx_id' => $this->input->post('trx_id'),
                'address' => $this->input->post('address'),
            ];
            
            
            
            // check existance
            if(exist('customer', (['nid'=>$this->input->post('nid')]))==false){
                if(save('customer', $data)){
                    set_msg('success', 'success', 'customer Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'customer Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'customer Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['customer'] = read('customer', ['id'=>$id]);
            $this->data['room_type'] = read('products');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/customer/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'nid' => $this->input->post('nid'),
                'room_no' => $this->input->post('room_no'),
                'name' => $this->input->post('name'),
                'date_in' => $this->input->post('date_in'),
                'date_out' => $this->input->post('date_out'),
                'gender' => $this->input->post('gender'),
                'age' => $this->input->post('age'),
                'spouse' => $this->input->post('spouse'),
                'nationality' => $this->input->post('nationality'),
                'profession' => $this->input->post('profession'),
                'email' => $this->input->post('email'),
                'mobile' => $this->input->post('mobile'),
                'phone' => $this->input->post('phone'),
                'extra_man' => $this->input->post('extra_man'),
                'car_no' => $this->input->post('car_no'),
                'company' => $this->input->post('company'),
                'coming_from' => $this->input->post('coming_from'),
                'purpose_of_visit' => $this->input->post('purpose_of_visit'),
                'mode_of_payment' => $this->input->post('mode_of_payment'),
                'trx_id' => $this->input->post('trx_id'),
                'address' => $this->input->post('address'),
            ];
            
            
            
            
            if(update('customer', $data, ['id'=>$id])){
                set_msg('success', 'success', 'customer Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'customer Not Update !');
            }
            redirect_back();
        }
        
        
        
        
        public function delete($id=null){

           
            if(delete('customer', ['id'=>$id])){
                set_msg('success', 'success', 'customer Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'customer Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>