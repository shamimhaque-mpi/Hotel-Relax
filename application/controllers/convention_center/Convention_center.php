<?php
    class Convention_center extends Admin_Controller{
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
            $this->load->view('components/convention_center/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function all_view(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['convention_center'] = read('convention_center');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/convention_center/list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'name' => ($this->input->post('name')),
                // 'room_type' => ($this->input->post('room_type')),
                // 'price' => ($this->input->post('price')),
                'description' => ($this->input->post('description'))
            ];
            
            //image upload start
            //---------------------------------------------
            $types = array('jpg','JPG','png','PNG','gif','GIF', 'webp');
            $path  = "backend/images/convention_center/";
            $name  = 'gallery'.(strtotime(date('Y-m-d h:i:s'))*10);
            $size  = '1024';
    
            if($path = upload_img("img", $types, $size, $path, $name)){
                $data['path'] = $path;
            }
            
            // check existance
            if(exist('convention_center', (['name'=>$this->input->post('name')]))==false){
                if(save('convention_center', $data)){
                    set_msg('success', 'success', 'convention_center Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'convention_center Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'convention_center Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['convention_center'] = read('convention_center', ['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/convention_center/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'name' => ($this->input->post('name')),
                // 'room_type' => ($this->input->post('room_type')),
                // 'price' => ($this->input->post('price')),
                'description' => ($this->input->post('description'))
            ];
            
            
            
            if(!empty($_FILES['img']['name'])){
                //image upload start
                //---------------------------------------------
                $types = array('jpg','JPG','png','PNG','gif','GIF', 'webp');
                $path  = "backend/images/convention_center/";
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
            
            
            if(update('convention_center', $data, ['id'=>$id])){
                set_msg('success', 'success', 'convention_center Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'convention_center Not Update !');
            }
            redirect_back();
        }
        
        
        public function delete($id=null){

            // delete old image
                if(file_exists($this->input->post('old_img'))){
                    unlink($this->input->post('old_img'));
                }

            if(delete('convention_center', ['id'=>$id])){
                set_msg('success', 'success', 'convention_center Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'convention_center Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>