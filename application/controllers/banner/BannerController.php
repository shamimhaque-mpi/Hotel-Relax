<?php
    class BannerController extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }


        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['banner'] = read('banner', ['trash'=>0]);            
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/banner/banner', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){

            $old_image = read('banner');
            if($old_image != null){
                if(file_exists($old_image[0]->path)){
                    unlink($old_image[0]->path);
                }
                delete('banner', ['id >'=>0]);
            }


            $data = [
                'title' => $_POST['title'],
                // 'description' => str_secure($this->input->post('description'))
            ];
            
            //image upload start
            //---------------------------------------------
            $types = array('jpg','JPG','png','PNG','gif','GIF', 'webp');
            $path  = "backend/images/banner/";
            $name  = 'about_us'.(strtotime(date('Y-m-d h:i:s'))*10);
            $size  = '1024';
    
            if($path = upload_img("img", $types, $size, $path, $name)){
                $data['path'] = $path;
            }

            ///
            

            
            // check existance
            if(exist('banner', str_secure(['title'=>$this->input->post('title')]))==false){
                if(save('banner', $data)){
                   
                    set_msg('success', 'success', 'About Us  Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'About Us  Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'About Us  Already Exists !');
            }
            redirect_back();
        }
        
    }
?>