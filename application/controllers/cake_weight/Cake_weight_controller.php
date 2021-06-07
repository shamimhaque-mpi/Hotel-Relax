<?php
    class Cake_weight_controller extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['cake_weight'] = read('cake_weightes', ['status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cake_weight/list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cake_weight/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'cake_weight' => str_secure($this->input->post('cake_weight'))
            ];
            
            // check existance
            if(exist('cake_weightes', str_secure(['cake_weight'=>$this->input->post('cake_weight')]))==false){
                if(save('cake_weightes', $data)){
                    set_msg('success', 'success', 'Cake Weight Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'Cake Weight Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'Cake Weight Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['cake_weight'] = read('cake_weightes', ['id'=>$id,'status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cake_weight/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'cake_weight' => str_secure($this->input->post('cake_weight'))
            ];
            
            
            // check existance
            if(exist('cake_weightes', ['id !='=>$id,'cake_weight'=>str_secure($this->input->post('cake_weight'))])){
                set_msg('warning', 'warning', 'This Cake Weight Already Exists !');
                redirect_back();
            }
            
            
            if(update('cake_weightes', $data, ['id'=>$id])){
                set_msg('success', 'success', 'Cake Weight Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'Cake Weight Not Update !');
            }
            redirect_back();
        }
        
        
        public function trash($id=null){
            if(update('cake_weightes', ['status'=>0], ['id'=>$id])){
                set_msg('success', 'success', 'Cake Weight Successfully Deleted !');
            }else{
                set_msg('warning', 'warning', 'Cake Weight Not Deleted !');
            }
            redirect_back();
        }
        
        
        public function trash_list(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['cake_weight'] = read('cake_weightes', ['status'=>0]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cake_weight/trash_list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function restore($id=null){
            if(update('cake_weightes', ['status'=>1], ['id'=>$id])){
                set_msg('success', 'success', 'Cake Weight Successfully Restored !');
            }else{
                set_msg('warning', 'warning', 'Cake Weight Not Restored !');
            }
            redirect_back();
        }
        
        
        public function delete($id=null){
            if(delete('cake_weightes', ['id'=>$id])){
                set_msg('success', 'success', 'Cake Weight Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'Cake Weight Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>