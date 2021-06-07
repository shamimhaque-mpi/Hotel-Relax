<?php
    class Conference_hall extends Admin_Controller{
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
            $this->load->view('components/conference_hall/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function all_view(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['conference_hall'] = read('conference_hall');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/conference_hall/list', $this->data);
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
            $path  = "backend/images/conference_hall/";
            $name  = 'gallery'.(strtotime(date('Y-m-d h:i:s'))*10);
            $size  = '1024';
    
            if($path = upload_img("img", $types, $size, $path, $name)){
                $data['path'] = $path;
            }
            
            // check existance
            if(exist('conference_hall', (['name'=>$this->input->post('name')]))==false){
                if(save('conference_hall', $data)){
                    set_msg('success', 'success', 'conference_hall Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'conference_hall Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'conference_hall Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['conference_hall'] = read('conference_hall', ['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/conference_hall/edit', $this->data);
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
                $path  = "backend/images/conference_hall/";
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
            
            
            if(update('conference_hall', $data, ['id'=>$id])){
                set_msg('success', 'success', 'conference_hall Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'conference_hall Not Update !');
            }
            redirect_back();
        }
        
        
        public function delete($id=null){

            // delete old image
                if(file_exists($this->input->post('old_img'))){
                    unlink($this->input->post('old_img'));
                }

            if(delete('conference_hall', ['id'=>$id])){
                set_msg('success', 'success', 'conference_hall Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'conference_hall Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>