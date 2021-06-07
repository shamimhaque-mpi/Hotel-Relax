<?php
    class Subcategory_controller extends Admin_Controller{
        public function __construct(){
            parent::__construct();
            $this->data['category'] = read('categories', ['status'=>1]);
        }
        
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['subcategory'] = read('subcategories', ['status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/subcategory/list', $this->data);
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
            $this->load->view('components/subcategory/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'cat_id' => str_secure($this->input->post('cat_id')),
                'name'   => str_secure($this->input->post('name'))
            ];
            
            $cond = [
                'cat_id' => str_secure($this->input->post('cat_id')),
                'name'   => str_secure($this->input->post('name')),
            ];
            
            //image upload start
            //---------------------------------------------
            $types = array('jpg','JPG','png','PNG','gif','GIF');
            $path  = "backend/images/subcategory/";
            $name  = 'gallery'.(strtotime(date('Y-m-d h:i:s'))*10);
            $size  = '1024';
    
            if($path = upload_img("img", $types, $size, $path, $name)){
                $data['path'] = $path;
            }
            
            // check existance
            if(exist('subcategories', $cond)==false){
                if(save('subcategories', $data)){
                    set_msg('success', 'success', 'Subcategory Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'Subcategory Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'Subcategory Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['subcategory'] = read('subcategories', ['id'=>$id,'status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/subcategory/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'cat_id' => str_secure($this->input->post('cat_id')),
                'name'   => str_secure($this->input->post('name'))
            ];
            
            $cond = [
                'cat_id' => str_secure($this->input->post('cat_id')),
                'name'   => str_secure($this->input->post('name')),
                'id !='  => $id
            ];
            
            
            // check existance
            if(exist('subcategories', $cond)){
                set_msg('warning', 'warning', 'This Subcategory Already Exists !');
                redirect_back();
            }
            
            if(!empty($_FILES['img']['name'])){
                //image upload start
                //---------------------------------------------
                $types = array('jpg','JPG','png','PNG','gif','GIF');
                $path  = "backend/images/subcategory/";
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
            
            
            if(update('subcategories', $data, ['id'=>$id])){
                set_msg('success', 'success', 'Subcategory Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'Subcategory Not Update !');
            }
            redirect_back();
        }
        
        
        public function trash($id=null){
            if(update('subcategories', ['status'=>0], ['id'=>$id])){
                set_msg('success', 'success', 'Subcategory Successfully Deleted !');
            }else{
                set_msg('warning', 'warning', 'Subcategory Not Deleted !');
            }
            redirect_back();
        }
        
        
        public function trash_list(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['subcategory'] = read('subcategories', ['status'=>0]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/subcategory/trash_list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function restore($id=null){
            if(update('subcategories', ['status'=>1], ['id'=>$id])){
                set_msg('success', 'success', 'Subcategory Successfully Restored !');
            }else{
                set_msg('warning', 'warning', 'Subcategory Not Restored !');
            }
            redirect_back();
        }
        
        
        public function delete($id=null){
            if(delete('subcategories', ['id'=>$id])){
                set_msg('success', 'success', 'Subcategory Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'Subcategory Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>