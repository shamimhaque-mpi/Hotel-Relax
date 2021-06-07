<?php
    class Price_per_pound_controller extends Admin_Controller{
        public function __construct(){
            parent::__construct();
            $this->data['category'] = read('categories', ['status'=>1]);
        }
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';

            $this->data['price_per_pound'] = read('price_per_pound', ['status'=>1]);

            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/price_per_pound/list', $this->data);
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
            $this->load->view('components/price_per_pound/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'cake_type_id' => $this->input->post('cake_type_id'),
                'price'        => $this->input->post('price')
            ];
            
            $cond = [
                'cake_type_id' => $this->input->post('cake_type_id')
            ];
            
            
            // check existance
            if(exist('price_per_pound', $cond)==false){
                if(save('price_per_pound', $data)){
                    set_msg('success', 'success', 'Price Per Pound Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'Price Per Pound Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'Price Per Pound Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['price_per_pound'] = read('price_per_pound', ['id'=>$id,'status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/price_per_pound/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'cake_type_id' => $this->input->post('cake_type_id'),
                'price'     => $this->input->post('price')
            ];
            
            $cond = [
                'id !='        => $id,
                'cake_type_id' => $this->input->post('cake_type_id')
            ];
        
            // check existance
            if(exist('price_per_pound', $cond)){
                set_msg('warning', 'warning', 'This Price Per Pound Already Exists !');
                redirect_back();
            }
            
            
            if(update('price_per_pound', $data, ['id'=>$id])){
                set_msg('success', 'success', 'Price Per Pound Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'Price Per Pound Not Update !');
            }
            redirect_back();
        }
        
        
        public function trash($id=null){
            if(update('price_per_pound', ['status'=>0], ['id'=>$id])){
                set_msg('success', 'success', 'Price Per Pound Successfully Deleted !');
            }else{
                set_msg('warning', 'warning', 'Price Per Pound Not Deleted !');
            }
            redirect_back();
        }
        
        
        public function trash_list(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['price_per_pound'] = read('price_per_pound', ['status'=>0]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/price_per_pound/trash_list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function restore($id=null){
            if(update('price_per_pound', ['status'=>1], ['id'=>$id])){
                set_msg('success', 'success', 'Price Per Pound Successfully Restored !');
            }else{
                set_msg('warning', 'warning', 'Price Per Pound Not Restored !');
            }
            redirect_back();
        }
        
        
        public function delete($id=null){
            if(delete('price_per_pound', ['id'=>$id])){
                set_msg('success', 'success', 'Price Per Pound Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'Price Per Pound Not Deleted !');
            }
            redirect_back();
        }
        
        public function alignByAjax(){
            
        }
        
    }
?>