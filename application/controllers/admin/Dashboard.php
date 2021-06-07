<?php
class Dashboard extends Admin_controller {

    function __construct() {
        parent::__construct();
    }

    public function index() {
        $this->data['meta_title'] = 'dashboard';
        $this->data['active'] = 'data-target="dashboard"';
        $this->data['subMenu'] = 'data-target=""';
        
        //today's  get total order start---------------------------
        $cond = ['date'=>date("Y-m-d"), 'status <'=>3];
        $total_order = read('orders', $cond);
        $this->data['total_order'] = ($total_order) ? count($total_order) : 0;
        //today's  get total order start---------------------------
        
        
        //today's  get total amount---------------------------
        $sql = "SELECT
                    SUM(total_price) as total_price
                FROM
                    orders
                WHERE
                    date = '".date("Y-m-d")."' AND
                STATUS < 3";
                
        $total_amount = $this->db->query($sql)->result();
        $this->data['total_amount'] = empty($total_amount) ? 0 : $total_amount[0]->total_price;
        //today's  get total amount---------------------------
        
        
        //today's  get total pending order start---------------------------
        $cond = ['date'=>date("Y-m-d"), 'status'=>0];
        $total_pending_order = read('orders', $cond);
        $this->data['total_pending_order'] = ($total_pending_order) ? count($total_pending_order) : 0;
        //today's  get total pending order start---------------------------
        
        
        //today's  get total processing order start---------------------------
        $cond = ['date'=>date("Y-m-d"), 'status'=>1];
        $total_processing_order = read('orders', $cond);
        $this->data['total_processing_order'] = ($total_processing_order) ? count($total_processing_order) : 0;
        //today's  get total processing order start---------------------------
        
        
        //today's  get total active order start---------------------------
        $cond = ['date'=>date("Y-m-d"), 'status'=>2];
        $total_active_order = read('orders', $cond);
        $this->data['total_active_order'] = ($total_active_order) ? count($total_active_order) : 0;
        //today's  get total active order start---------------------------
        
        
        //today's  get total cancel order start---------------------------
        $cond = ['date'=>date("Y-m-d"), 'status'=>3];
        $total_cancel_order = read('orders', $cond);
        $this->data['total_cancel_order'] = ($total_cancel_order) ? count($total_cancel_order) : 0;
        //today's  get total cancel order start---------------------------
        
        
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/includes/aside', $this->data);
        $this->load->view('admin/includes/headermenu', $this->data);
        $this->load->view('admin/dashboard', $this->data);
        $this->load->view('admin/includes/footer');
    }
}
