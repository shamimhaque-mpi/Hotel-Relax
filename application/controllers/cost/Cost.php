<?php
    class Cost extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        /* start cost field section*/
        
        public function index(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            
            $this->data['costField'] = read('cost_field');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cost/costfield', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function add_costField(){
            $data = [
                'name' => $this->input->post('name'),
            ];
            
            
            // check existance
            if(exist('cost_field', (['name'=>$this->input->post('name')]))==false){
                if(save('cost_field', $data)){
                    set_msg('success', 'success', 'Cost field Successfully Created !');
                }else{
                    set_msg('warning', 'warning', 'Cost field Not Created !');
                }
            }else{
                set_msg('warning', 'warning', 'Cost field Already Exists !');
            }
            redirect_back();
        }
        
        
        public function edit_costField($id=NULL){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            
            $this->data['costField'] = read('cost_field', ['id'=>$id]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cost/edit_costfield', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function update_costField($id){
            $data = [
                'name' => $this->input->post('name'),
            ];
            
            
            // check existance
           
            if(update('cost_field', $data, ['id'=>$id])){
                set_msg('success', 'success', 'Cost field update Successfully  !');
            }else{
                set_msg('warning', 'warning', 'Cost field Not update   !');
            }
            
            redirect_back();
        }
        
        public function delete_costField($id=NULL)
        {
            if(delete('cost_field', ['id'=>$id])){
                set_msg('success', 'success', 'Cost field Deleted Successfully  !');
            }else{
                set_msg('warning', 'warning', 'Cost field Deleted Not  !');
            }
            
            redirect_back();
        }
        
        
        /* end cost field section*/
        
        /*add new cost start*/
        
        public function newcost(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            
            $this->data['costField'] = read('cost_field');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cost/add', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function allcost(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['cost_field'] = read('cost_field');
            
            
            
            if(isset($_POST['search']))
            {
                
                if(!empty($_POST['cost_field']))
                {
                    $where = array( 'cost_field'=> $this->input->post('cost_field'));       
                }
                
               foreach ($_POST['date'] as $key => $value) {
                    if(!empty($value) && $key == "from"){
                        $where = array( 'date >='=> $value);    
                    }
                    if(!empty($value) && $key == "to"){
                        $where = array( 'date <='=> $value);    
                    }
                }
                
                $this->data['allCost'] = read('cost', $where,'date ASC');
            }
            else{
                
                $this->data['allCost'] = read('cost',[],'date ASC');
            }
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cost/list', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function add_process(){
            $data = [
                'date' => $this->input->post('date'),
                'cost_field' => $this->input->post('cost_field'),
                'amount' => $this->input->post('amount'),
                'spend_by' => $this->input->post('spend_by'),
                'description' => $this->input->post('description'),
            ];
            
            
            if(save('cost', $data)){
                set_msg('success', 'success', 'cost Successfully Created !');
            }else{
                set_msg('warning', 'warning', 'cost Not Created !');
            }
            redirect_back();
        }
        
         
        public function edit($id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['cost'] = read('cost', ['id'=>$id]);
            $this->data['costField'] = read('cost_field');
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/cost/edit', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        public function edit_process($id=null){
            $data = [
                'date' => $this->input->post('date'),
                'cost_field' => $this->input->post('cost_field'),
                'amount' => $this->input->post('amount'),
                'spend_by' => $this->input->post('spend_by'),
                'description' => $this->input->post('description'),
            ];
            
           
            if(update('cost', $data, ['id'=>$id])){
                set_msg('success', 'success', 'cost Successfully Update !');
            }else{
                set_msg('warning', 'warning', 'cost Not Update !');
            }
            redirect_back();
        }
        
        
     
        
        public function delete($id=null){

            if(delete('cost', ['id'=>$id])){
                set_msg('success', 'success', 'cost Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'cost Not Deleted !');
            }
            redirect_back();
        }
        
      
        
    }
?>