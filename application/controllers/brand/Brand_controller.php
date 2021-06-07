<?php
    class Brand_controller extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['brand'] = read('brands', ['status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/brand/list', $this->data);
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
            $this->load->view('components/brand/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'name' => str_secure($this->input->post('name'))
            ];
            
            //image upload start
            //---------------------------------------------
            $types = array('jpg','JPG','png','PNG','gif','GIF');
            $path  = "backend/images/brand/";
            $name  = 'gallery'.(strtotime(date('Y-m-d h:i:s'))*10);
            $size  = '1024';
    
            if($path = upload_img("img", $types, $size, $path, $name)){
                $data['path'] = $path;
            }
            
            // check existance
            if(exist('brands', str_secure(['name'=>$this->input->post('name')]))==false){
                if(save('brands', $data)){
                    set_msg('success', 'success', 'Brand Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'Brand Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'Brand Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['brand'] = read('brands', ['id'=>$id,'status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/brand/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'name' => str_secure($this->input->post('name'))
            ];
            
            
            // check existance
            if(exist('brands', ['id !='=>$id,'name'=>str_secure($this->input->post('name'))])){
                set_msg('warning', 'warning', 'This Brand Already Exists !');
                redirect_back();
            }
            
            if(!empty($_FILES['img']['name'])){
                //image upload start
                //---------------------------------------------
                $types = array('jpg','JPG','png','PNG','gif','GIF');
                $path  = "backend/images/brand/";
                $name  = 'gallery'.(strtotime(date('Y-m-d h:i:s'))*10);
                $size  = '1024';
        
                if($path = upload_img("img", $types, $size, $path, $name)){
                    $data['path'] = $path;
                }
                
                // delete old image
                if(file_exists($this->input->post('old_img'))){
                    unlink($this->input->post('old_img'));
                }
            }
            
            
            if(update('brands', $data, ['id'=>$id])){
                set_msg('success', 'success', 'Brand Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'Brand Not Update !');
            }
            redirect_back();
        }
        
        
        public function trash($id=null){
            if(update('brands', ['status'=>0], ['id'=>$id])){
                set_msg('success', 'success', 'Brand Successfully Deleted !');
            }else{
                set_msg('warning', 'warning', 'Brand Not Deleted !');
            }
            redirect_back();
        }
        
        
        public function trash_list(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['brand'] = read('brands', ['status'=>0]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/brand/trash_list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function restore($id=null){
            if(update('brands', ['status'=>1], ['id'=>$id])){
                set_msg('success', 'success', 'Brand Successfully Restored !');
            }else{
                set_msg('warning', 'warning', 'Brand Not Restored !');
            }
            redirect_back();
        }
        
        
        public function delete($id=null){
            if(delete('brands', ['id'=>$id])){
                set_msg('success', 'success', 'Brand Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'Brand Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>