<?php
    class Order extends Admin_Controller{
        public function __construct(){
            parent::__construct();
        }
        
        public function pending_order(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['pending_report'] = read('orders',  ['status'=>0]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/order/pending_order', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function single_product(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/order/single_product', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function processing_order(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['processing_report'] = read('orders',  ['status'=>1]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/order/processing_order', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function complete_order(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['complete_report'] = read('orders',  ['status'=>2]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/order/complete_order', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function deleted_order(){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $this->data['deleted_report'] = read('orders',  ['status'=>3]);
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/order/deleted_order', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        
        
        
        public function order_details($order_id=null){
            $this->data['meta_keyword'] = '';
            $this->data['meta_title'] = '';
            $this->data['meta_description'] = '';
            
            $query = "  SELECT
                            orders.*,
                            order_items.*
                        FROM
                            `orders`
                        JOIN order_items ON orders.id = order_items.order_id
                        WHERE
                            order_items.order_id = $order_id
                    ";
                    
            $this->data['pending_order_details'] = $this->db->query($query)->result();
            
            $this->load->view('admin/includes/header', $this->data);
            $this->load->view('admin/includes/aside', $this->data);
            $this->load->view('admin/includes/headermenu', $this->data);
            $this->load->view('admin/includes/nav', $this->data);
            $this->load->view('components/order/order_details', $this->data);
            $this->load->view('admin/includes/footer', $this->data);
        }
        
        public function send_to_pending($id=null){
            if(update('orders', ['status'=>0], ['id'=>$id])){
                set_msg('success', 'success', 'Product Successfully Sent to Pending !');
            }else{
                set_msg('warning', 'warning', 'Product Not Sent to Pending !');
            }
            redirect_back();
        }
        
        public function send_to_process($id=null){
            if(update('orders', ['status'=>1], ['id'=>$id])){
                set_msg('success', 'success', 'Product Successfully Sent to Processing Unit !');
            }else{
                set_msg('warning', 'warning', 'Product Not Sent to Processing Unit !');
            }
            redirect_back();
        }
        
        public function send_to_active($id=null){
            if(update('orders', ['status'=>2], ['id'=>$id])){
                set_msg('success', 'success', 'Order Completed Successfully !');
            }else{
                set_msg('warning', 'warning', 'Order Completed Successfully !');
            }
            redirect_back();
        }
        
        public function order_delete($id=null){
            if(update('orders', ['status'=>3], ['id'=>$id])){
                set_msg('success', 'success', 'Order Deleted Successfully !');
            }else{
                set_msg('warning', 'warning', 'Order Deleted Successfully !');
            }
            redirect_back();
        }
        
        public function delete($id=null){
            if(delete('orders', ['id'=>$id])){
                set_msg('success', 'success', 'Order Permanently Deleted !');
            }else{
                set_msg('warning', 'warning', 'Order Permanently Deleted !');
            }
            redirect_back();
        }
        
    }
?>