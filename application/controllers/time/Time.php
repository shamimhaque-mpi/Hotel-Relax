<?php
    class Time extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['time'] = read('time');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/time/image_add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }

      
        
       
        
        
        public function add_image(){
            
            $get_data = read('time');
            
            foreach($get_data as $value)
            { 
                unlink($value->path);
                delete('time', ['id'=>$value->id]);
            }
          
            $data = [
                'name' => str_secure($this->input->post('img_name'))
            ];
            
            //image upload start
            //---------------------------------------------
            $types = array('jpg','JPG','png','PNG','gif','GIF', 'webp');
            $path  = "backend/images/time/";
            $name  = 'time'.(strtotime(date('Y-m-d h:i:s'))*10);
            $size  = '1024';
    
            if($path_url = upload_img("img", $types, $size, $path, $name)){
                $data['path'] = $path_url;
            }
            
            // check existance
            if(exist('time', str_secure(['name'=>$this->input->post('img_name')]))==false){
                if(save('time', $data)){
                    set_msg('success', 'success', 'Time Image  Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'Time Image  Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'Time Image  Already Exists !');
            }
            redirect_back();
        }

       
        
        
        public function img_edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['img'] = read('time',['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/time/img_edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }

       
        
        public function img_edit_process($id=null){
            
            $data = [
                'name' => str_secure($this->input->post('img_name'))
            ];
            
            
            
            
            // check existance
           /* if(exist('image_gallery', ['id !='=>$id,'img_name'=>str_secure($this->input->post('img_name'))])){
                set_msg('warning', 'warning', 'This img_name Gallery Already Exists !');
                redirect_back();
            }*/
            
            if(!empty($_FILES['img']['name'])){
                //image upload start
                //---------------------------------------------
                $types = array('jpg','JPG','png','PNG','gif','GIF', 'webp');
                $path  = "backend/images/time/";
                $name  = 'time'.(strtotime(date('Y-m-d h:i:s'))*10);
                $size  = '1024';
        
                if($pathUrl = upload_img("img", $types, $size, $path, $name)){
                    $data['path'] = $pathUrl;
                }
                
                // delete old image
                if(file_exists($this->input->post('old_img'))){
                    unlink($this->input->post('old_img'));
                }
            }
            
            
            if(update('time', $data, ['id'=>$id])){
                set_msg('success', 'success', 'Time Image Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'Time Image Not Update !');
            }
            redirect_back();
        }


        
        
        /*public function trash($id=null){
            if(update('galleries', ['status'=>0], ['id'=>$id])){
                set_msg('success', 'success', 'Gallery Successfully Deleted !');
            }else{
                set_msg('warning', 'warning', 'Gallery Not Deleted !');
            }
            redirect_back();
        }
        
        
        public function trash_list(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['gallery'] = read('galleries', ['status'=>0]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/gallery/trash_list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function restore($id=null){
            if(update('galleries', ['status'=>1], ['id'=>$id])){
                set_msg('success', 'success', 'Gallery Successfully Restored !');
            }else{
                set_msg('warning', 'warning', 'Gallery Not Restored !');
            }
            redirect_back();
        }
        */
        
        public function img_delete($id=null){
            if(delete('time', ['id'=>$id])){
                
               
                set_msg('success', 'success', 'time image Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'time image Not Deleted !');
            }
            redirect_back();
        }

       
        
        public function alignByAjax(){
            
        }
        
    }
?>