<?php
    class Faq extends Admin_Controller{
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
            $this->load->view('components/faq/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }



        public function all_view(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['faq'] = read('faqs');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/faq/list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }



       
       
        
        
        
        public function add_process(){
            $data = [
                'question' => ($this->input->post('question')),
                'answer' => ($this->input->post('answer')),
                'link' => $_POST['link']
                
            ];
            
            //image upload start
            //---------------------------------------------
            $types = array('jpg','JPG','png','PNG','gif','GIF');
            $path  = "backend/images/faq/";
            $name  = 'gallery'.(strtotime(date('Y-m-d h:i:s'))*10);
            $size  = '1024';
    
            if($path = upload_img("img", $types, $size, $path, $name)){
                $data['path'] = $path;
            }
            
            // check existance
            if(exist('faqs', (['question'=>$this->input->post('question')]))==false){
                if(save('faqs', $data)){
                    set_msg('success', 'success', 'faqs Gallery Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'faqs Gallery Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'faqs Gallery Already Exists !');
            }
            redirect_back();
        }
        
        
      
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['faq'] = read('faqs',['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/faq/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
       
      


        public function edit_process($id=null){
            $data = [
                'question' => ($this->input->post('question')),
                'answer' => ($this->input->post('answer')),
                'link' => $_POST['link']
                
            ];
            
            
            // check existance
           /* if(exist('faqs', ['id !='=>$id,'question'=>($this->input->post('question'))])){
                set_msg('warning', 'warning', 'This video_gallery Already Exists !');
                redirect_back();
            }*/
            
            if(!empty($_FILES['img']['name'])){
                //image upload start
                //---------------------------------------------
                $types = array('jpg','JPG','png','PNG','gif','GIF');
                $path  = "backend/images/faq/";
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
            
            
            if(update('faqs', $data, ['id'=>$id])){
                set_msg('success', 'success', 'faq Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'faq Not Update !');
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
        
   

        public function delete($id=null){
            if(delete('faqs', ['id'=>$id])){
                set_msg('success', 'success', 'faq Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'faq Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>