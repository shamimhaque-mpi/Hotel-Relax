<?php
    class Cake_controller extends Admin_Controller{
        public function __construct(){
            parent::__construct();
            $this->data['category'] = read('categories', ['status'=>1]);
        }
        
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['cake'] = read('cakes', ['status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cake/list', $this->data);
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
            $this->load->view('components/cake/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'cake_type_id'=> $this->input->post('cake_type_id'),
                'name'        => str_secure($this->input->post('name')),
                'description' => $this->input->post('description')
            ];
            
            $cond = [
                'cake_type_id'=> $this->input->post('cake_type_id'),
                'name'        => str_secure($this->input->post('name'))
            ];
            
            
            // check existance
            if(exist('cakes', str_secure($cond))==false){
                if(save('cakes', $data)){
                    set_msg('success', 'success', 'Cake Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'Cake Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'Cake Already Exists !');
            }
            redirect_back();
        }
        
        
        public function view($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['cake'] = read('cakes', ['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cake/view', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['cake'] = read('cakes', ['id'=>$id,'status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cake/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'cake_type_id'=> $this->input->post('cake_type_id'),
                'name'        => str_secure($this->input->post('name')),
                'description' => $this->input->post('description')
            ];
            
            $cond = [
                'id !='        => $id,    
                'cake_type_id' => $this->input->post('cake_type_id'),
                'name'         => str_secure($this->input->post('name'))
            ];
        
            // check existance
            if(exist('cakes', $cond)){
                set_msg('warning', 'warning', 'This Cake Already Exists !');
                redirect_back();
            }
            
            
            if(update('cakes', $data, ['id'=>$id])){
                set_msg('success', 'success', 'Cake Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'Cake Not Update !');
            }
            redirect_back();
        }
        
        
        public function trash($id=null){
            if(update('cakes', ['status'=>0], ['id'=>$id])){
                set_msg('success', 'success', 'Cake Successfully Deleted !');
            }else{
                set_msg('warning', 'warning', 'Cake Not Deleted !');
            }
            redirect_back();
        }
        
        
        public function trash_list(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['cake'] = read('cakes', ['status'=>0]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cake/trash_list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function restore($id=null){
            if(update('cakes', ['status'=>1], ['id'=>$id])){
                set_msg('success', 'success', 'Cake Successfully Restored !');
            }else{
                set_msg('warning', 'warning', 'Cake Not Restored !');
            }
            redirect_back();
        }
        
        
        public function delete($id=null){
            if(delete('cakes', ['id'=>$id])){
                set_msg('success', 'success', 'Cake Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'Cake Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>