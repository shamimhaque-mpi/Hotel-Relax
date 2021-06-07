<?php
    class Service extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/service/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function all_view(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['service'] = read('services');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/service/list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'title' => ($this->input->post('name')),
                'description' => ($this->input->post('description'))
            ];
            
            //image upload start
            //---------------------------------------------
            $types = array('jpg','JPG','png','PNG','gif','GIF');
            $path  = "backend/images/service/";
            $name  = 'gallery'.(strtotime(date('Y-m-d h:i:s'))*10);
            $size  = '1024';
    
            if($path = upload_img("img", $types, $size, $path, $name)){
                $data['path'] = $path;
            }
            
            // check existance
            if(exist('services', (['title'=>$this->input->post('name')]))==false){
                if(save('services', $data)){
                    set_msg('success', 'success', 'service Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'service Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'service Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['service'] = read('services', ['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/service/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'title' => ($this->input->post('name')),
                'description' => ($this->input->post('description'))
            ];
            
            
            // check existance
           /* if(exist('services', ['id !='=>$id,'title'=>($this->input->post('name'))])){
                set_msg('warning', 'warning', 'This service Already Exists !');
                redirect_back();
            }*/
            
            if(!empty($_FILES['img']['name'])){
                //image upload start
                //---------------------------------------------
                $types = array('jpg','JPG','png','PNG','gif','GIF');
                $path  = "backend/images/service/";
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
            
            
            if(update('services', $data, ['id'=>$id])){
                set_msg('success', 'success', 'service Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'service Not Update !');
            }
            redirect_back();
        }
        
        
        /*public function trash($id=null){
            if(update('categories', ['status'=>0], ['id'=>$id])){
                set_msg('success', 'success', 'Category Successfully Deleted !');
            }else{
                set_msg('warning', 'warning', 'Category Not Deleted !');
            }
            redirect_back();
        }
        
        
        public function trash_list(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['category'] = read('categories', ['status'=>0]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/category/trash_list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function restore($id=null){
            if(update('categories', ['status'=>1], ['id'=>$id])){
                set_msg('success', 'success', 'Category Successfully Restored !');
            }else{
                set_msg('warning', 'warning', 'Category Not Restored !');
            }
            redirect_back();
        }
        */
        
        public function delete($id=null){

            // delete old image
                if(file_exists($this->input->post('old_img'))){
                    unlink($this->input->post('old_img'));
                }

            if(delete('services', ['id'=>$id])){
                set_msg('success', 'success', 'service Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'service Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>