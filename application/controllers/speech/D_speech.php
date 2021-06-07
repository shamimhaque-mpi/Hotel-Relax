<?php
    class D_speech extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = 'Director Speech';
            $this->data['meta_description'] = '';
            
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/speech/D_speech', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        } 
        
        public function add_process(){
            $data = [
                'date'        => date('Y-m-d'),
                'speech'      => ($this->input->post('speech')),
                'speech_type' => ($this->input->post('speech_type'))
            ];
            
            //image upload start
            //---------------------------------------------
            $types = array('jpg','JPG','png','PNG','gif','GIF', 'webp');
            $path  = "backend/images/faq/";
            $name  = 'director'.(strtotime(date('Y-m-d h:i:s'))*10);
            $size  = '1024';
    
            if($path = upload_img("d_img", $types, $size, $path, $name)){
                $data['path'] = $path;
            }
            
            $cond = [
                'speech_type'=> $this->input->post('speech_type'),
            ];
            // check existance
            if(exist('d_speech', $cond)==false){
                if(save('d_speech', $data)){
                    set_msg('success', 'success', 'faqs Gallery Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'faqs Gallery Not Created !');
                }
            }else{
                if(update('d_speech', $data, $cond)){
                    set_msg('success', 'success', 'faqs Gallery Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'faqs Gallery Not Created !');
                }
            }
            redirect_back();
        }
        
 
    }
?>