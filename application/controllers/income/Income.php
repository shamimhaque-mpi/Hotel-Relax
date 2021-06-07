<?php
    class Income extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        /* start income field section*/
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            
            $this->data['incomeField'] = read('income_field');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/income/incomeField', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function add_incomeField(){
            $data = [
                'name' => $this->input->post('name'),
            ];
            
            
            // check existance
            if(exist('income_field', (['name'=>$this->input->post('name')]))==false){
                if(save('income_field', $data)){
                    set_msg('success', 'success', 'income field Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'income field Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'income field Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit_incomeField($id=NULL){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            
            $this->data['incomeField'] = read('income_field', ['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/income/edit_incomeField', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function update_incomeField($id){
            $data = [
                'name' => $this->input->post('name'),
            ];
            
            
            // check existance
           
            if(update('income_field', $data, ['id'=>$id])){
                set_msg('success', 'success', 'income field update Successfully  !');
            }else{
                set_msg('warning', 'warning', 'income field Not update   !');
            }
            
            redirect_back();
        }
        
        public function delete_incomeField($id=NULL)
        {
            if(delete('income_field', ['id'=>$id])){
                set_msg('success', 'success', 'income field Deleted Successfully  !');
            }else{
                set_msg('warning', 'warning', 'income field Deleted Not  !');
            }
            
            redirect_back();
        }
        
        
        /* end income field section*/
        
        /*add new income start*/
        
        public function newIncome(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            
            $this->data['incomeField'] = read('income_field');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/income/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function allincome(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            
            
            $this->data['incomeField'] = read('income_field');
            
            
            if(isset($_POST['search']))
            {
                
                if(!empty($_POST['income_field']))
                {
                    $where = array( 'income_field'=> $this->input->post('income_field'));       
                }
                
               foreach ($_POST['date'] as $key => $value) {
                    if(!empty($value) && $key == "from"){
                        $where = array( 'date >='=> $value);    
                    }
                    if(!empty($value) && $key == "to"){
                        $where = array( 'date <='=> $value);    
                    }
                }
                
                $this->data['allIncome'] = read('income', $where, 'date ASC');
            }
            else{
                
                $this->data['allIncome'] = read('income',[], 'date ASC');
            }
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/income/list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'date' => $this->input->post('date'),
                'income_field' => $this->input->post('income_field'),
                'amount' => $this->input->post('amount'),
                'income_by' => $this->input->post('income_by'),
                'description' => $this->input->post('description'),
            ];
            
            
            if(save('income', $data)){
                set_msg('success', 'success', 'income Successfully Created !');
            }else{
                set_msg('warning', 'warning', 'income Not Created !');
            }
            redirect_back();
        }
        
         
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['income'] = read('income', ['id'=>$id]);
            $this->data['incomeField'] = read('income_field');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/income/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'date' => $this->input->post('date'),
                'income_field' => $this->input->post('income_field'),
                'amount' => $this->input->post('amount'),
                'income_by' => $this->input->post('income_by'),
                'description' => $this->input->post('description'),
            ];
            
           
            if(update('income', $data, ['id'=>$id])){
                set_msg('success', 'success', 'income Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'income Not Update !');
            }
            redirect_back();
        }
        
        
     
        
        public function delete($id=null){

            if(delete('income', ['id'=>$id])){
                set_msg('success', 'success', 'income Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'income Not Deleted !');
            }
            redirect_back();
        }
        
      
        
    }
?>