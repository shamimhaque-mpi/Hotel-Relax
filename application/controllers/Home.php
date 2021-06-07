<?php
class Home extends Frontend_Controller {
    function __construct() {
        parent::__construct();
        $this->data['about'] = read('about');
        
        $this->data['footer'] = read('footer');
        $this->data['header'] = read('header');
    }
    public function index() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'home';
        $this->data['about']        = read('about');
        $this->data['food_menus']   = read('food_menu', [], 'sort ASC', 10);
        $this->data['services']     = read('services', [], [], 6);
        $this->data['products']     = read('products', [], 'price ASC', 9);
        $this->data['spa']          = read('spa', [], 'price ASC', 9);
        $this->data['teams']        = read('teams');
        $this->data['blogs']        = read('blog', [], [], 6);
        $this->data['images']       = read('image_gallery', [], [], 6);
        $this->data['d_speechs']    = read('d_speech');
        $this->data['banner']       = read('banner');
        $this->data['footer']       = read('footer');
        $this->data['time']       = read('time');

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar_index', $this->data);
        $this->load->view('includes/slider', $this->data);
        $this->load->view('frontend/home', $this->data);
        $this->load->view('includes/footer_index', $this->data);
    }
    public function news() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'news';

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar_index', $this->data);
        $this->load->view('frontend/news', $this->data);
        $this->load->view('includes/footer_index', $this->data);
    }

    public function about() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'About';

        $this->data['about'] = read('about');

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/about', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

    public function reservation(){
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Reservation';
        $this->data['products']   = read('products', ['trash'=>0]);
        
        if($_POST){
            $data = $_POST;
            $data['date']       = date('Y-m-d');
            $data['regi_id']    = rand(1111, 9999);
            
            while(read('reservation', ['regi_id'=>$data['regi_id']])){
                $data['regi_id'] = rand(1111, 9999);
            }
            
            if($id = save('reservation', $data)){;
                $num = '01741188007';
                $content = "A Reservation has been received from ".$_POST['name'].", Contact at ".$_POST['phone'];
                $message = send_sms($num, $content);
                $insert = array(
                    'delivery_date' => date('Y-m-d'),
                    'delivery_time' => date('H:i:s'),
                    'mobile' => $num,
                    'message' => $content,
                    'total_characters' => strlen($content),
                    'total_messages' => 1,
                    'delivery_report' => $message
                );
                save('sms_record', $insert);
                
                // Subcriber
                $content = "Your Reservation Successfully Submited..\nRegards, HOTEL SILVER CASTLE";
                $message = send_sms($_POST['mobile'], $content);
                $insert = array(
                    'delivery_date' => date('Y-m-d'),
                    'delivery_time' => date('H:i:s'),
                    'mobile' => $_POST['mobile'],
                    'message' => $content,
                    'total_characters' => strlen($content),
                    'total_messages' => 1,
                    'delivery_report' => $message
                );
                save('sms_record', $insert);
                set_msg('success', 'success', 'Your Reservation Successfully Submited');
                
                redirect('/reserv_view/'.$id);
            }
        }
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/reservation');
        $this->load->view('includes/footer', $this->data);
    }

    public function reserv_view($id){
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Reservation';
        
        $this->data['reservation'] = read('reservation', ['id'=>$id]);
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/reservation_view');
        $this->load->view('includes/footer', $this->data);
    }

    public function services() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Services';

        $this->data['services'] = read('services');

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/service', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

    public function service_detail($id=null) {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Services_detail';

        $this->data['service'] = read('services',['id'=>$id]);

        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/s_detail', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function room_detail($id=null) {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Services_detail';

        $this->data['product'] = read('products',['id'=>$id]);

        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/r_detail', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function room() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Services_detail';

        $this->data['products'] = read('products', [], 'price ASC');

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/room', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function food_pdf() {
        $this->data['pagename']   = 'food_pdf';
        $this->data['meta_title'] = 'Food_Menu';

        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/food_pdf', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    // Sap Section
    public function spa() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Spa';

        $this->data['spa'] = read('spa', [], 'price ASC');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/spa', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

    public function spa_detail($id=null) {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Services_detail';

        $this->data['spa'] = read('spa', ['id'=>$id]);

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/spa_detail', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    // Restaurant Section
    public function restaurant() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Restaurent';

        $this->data['restaurants'] = read('restaurant');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/restaurant/index', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function restaurant_details($id) {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Restaurant';

        $this->data['restaurant'] = read('restaurant', ['id'=>$id]);

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/restaurant/details', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    // Saloon Section
    public function saloon() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Saloon';

        $this->data['saloons'] = read('saloon');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/saloon/index', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    // Details Saloon Section
    public function saloon_details($id) {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Saloon Details';

        $this->data['saloon'] = read('saloon', ['id'=>$id]);
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/saloon/details', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    // Conference Hall Section
    public function conference_hall() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Conference Hall';

        $this->data['halls'] = read('conference_hall');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/conference_hall/index', $this->data);
        $this->load->view('includes/footer', $this->data);
    } 
    // Conference Hall Section
    public function convention_center() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Convention Center';

        $this->data['conventions'] = read('convention_center');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/convention_center/index', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    // Conference Hall Details
    public function convention_center_details($id) {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Convention Center';

        $this->data['convention'] = read('convention_center', ['id'=>$id]);
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/convention_center/details', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    // Conference Hall Details
    public function conference_hall_details($id) {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Conference Hall';

        $this->data['hall'] = read('conference_hall', ['id'=>$id]);
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/conference_hall/details', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function food_details($id=null) {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Services_detail';

        $this->data['food_menu'] = read('food_menu',['id'=>$id]);
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/food_detail', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function suite($room_type="suite") {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Our Rooms';

        $where = array(
            "room_type" => $room_type
            );
        $this->data['product'] = read('products', $where);
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/room', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function deluxe_vip($room_type="deluxe_vip") {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Our Rooms';

        $where = array(
            "room_type" => $room_type
            );
        $this->data['product'] = read('products', $where);
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/room', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function single_room($room_type="single_room") {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Our Rooms';

        $where = array(
            "room_type" => $room_type
            );
        $this->data['product'] = read('products', $where);
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/room', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    public function deluxe_twin($room_type="deluxe_twin") {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Our Rooms';

        $where = array(
            "room_type" => $room_type
            );
        $this->data['product'] = read('products', $where);
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/room', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

    public function team() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'team';

        $this->data['team'] = read('teams');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/team', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

    public function profile() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'profile';

        $this->data['profile'] = read('profiles');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/profile', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

    public function image_gallery() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Image Callery';

        $this->data['images'] = read('image_gallery');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/image_gallery', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

    public function video_gallery() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Video Gallery';

        $this->data['video'] = read('video_gallery');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/video_gallery', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

    public function blog() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Blog';
        
        /*$query = $this->db->query('SELECT * FROM blog');
        $total_row = $query->num_rows();
        
        $this->load->library('pagination');
        $config['base_url'] = 'http://theme.demoprojectfit.xyz/home/blog';
        $config['total_rows'] = $total_row;
        $config['per_page'] = 3;

        $this->pagination->initialize($config);
        
        $config['per_page'],$this->uri->segment(3)*/


        
        $this->data['blogs'] = read('blog');
       
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/blog', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    
    
    public function blog_detail($id=null) {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Blog Detail';
        
        
        $this->data['blog'] = read('blog',['id'=>$id]);
        
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/b_detail', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    
    
    
    public function faq() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Faq';

        $this->data['faq'] = read('faqs');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/faq', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

    public function food_menu() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Food Menu';

        $this->data['food_menus'] = read('food_menu');
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/food_menu', $this->data);
        $this->load->view('includes/footer', $this->data);
    }

     

    public function contact() {
        $this->data['pagename']   = '';
        $this->data['meta_title'] = 'Contact';
        
        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/contact', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    
    public function add_message(){
        $data = [
            'name' => str_secure($this->input->post('name')),
            'email' => str_secure($this->input->post('email')),
            // 'subject' => str_secure($this->input->post('subject')),
            'message' => str_secure($this->input->post('message'))
        ];
        
        //image upload start
        //---------------------------------------------
        /*$types = array('jpg','JPG','png','PNG','gif','GIF');
        $path  = "backend/images/profile/";
        $name  = 'gallery'.(strtotime(date('Y-m-d h:i:s'))*10);
        $size  = '1024';

        if($path = upload_img("img", $types, $size, $path, $name)){
            $data['path'] = $path;
        }*/
        
        // check existance
        if(exist('message', str_secure(['name'=>$this->input->post('name')]))==false){
            if(save('message', $data)){
                set_msg('success', 'success', 'Message Successfully Send !');
            }else{
                set_msg('warning', 'warning', 'Message Not Send !');
            }
        }else{
            set_msg('warning', 'warning', 'Message Already Exists !');
        }
        redirect_back('#sumit');
    }
    
    
    public function get_quote(){
        $data = [
            'date' => date('Y-m-d'),
            'name' => str_secure($this->input->post('name')),
            'email' => str_secure($this->input->post('email')),
            'tel' => str_secure($this->input->post('tel')),
            'date_from' => str_secure($this->input->post('date[from]')),
            'date_to' => str_secure($this->input->post('date[to]')),
            'message' => str_secure($this->input->post('message'))
        ];
        
        
        if(save('quote', $data)){
            set_msg('success', 'success', 'Quote Successfully Sent !');
        }else{
            set_msg('warning', 'warning', 'Quote Not Sent !');
        }
        redirect_back();
    }

   
    public function p_detail() {
        $this->data['pagename']   = 'Portfolio Detail';
        $this->data['meta_title'] = 'Portfolio Detail';
        $id = $this->uri->segment(3);
        
        $query = "SELECT
                    cakes.id,
                    cakes.name,
                    cakes.description,
                    price_per_pound.price AS price_per_pound,
                    categories.path as cat_path,
                    categories.name AS cake_type
                FROM
                    `categories`
                JOIN cakes ON cakes.cake_type_id = categories.id
                JOIN price_per_pound ON categories.id = price_per_pound.cake_type_id
                WHERE
                    cakes.status = 1 AND price_per_pound.status = 1 AND categories.status = 1 AND cakes.id = $id";
        
        
        
        
        /*read cacks information start*/
        $this->data['cake'] = $this->db->query($query)->result();
        /*read cacks information end  */

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/p_detail', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    public function portfolio() {
        $this->data['pagename']   = 'Portfolio';
        $this->data['meta_title'] = 'Portfolio';
        
        $this->data['category'] = read('categories', ['status'=>1]);
        
        
        
        
        $query = "SELECT
                    cakes.id,
                    cakes.name,
                    cakes.description,
                    price_per_pound.price AS price_per_pound,
                    categories.path AS cat_path,
                    categories.name AS cake_type
                FROM
                    `cakes`
                JOIN categories ON cakes.cake_type_id = categories.id
                JOIN price_per_pound ON cakes.cake_type_id = price_per_pound.cake_type_id
                WHERE
                    cakes.status = 1 AND price_per_pound.status = 1 AND categories.status = 1";
        
        
        
        
        /*read cacks information start*/
        $this->data['cake'] = $this->db->query($query)->result();
        /*read cacks information end  */

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/portfolio', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    public function s_detail() {
        $this->data['pagename']   = 'Shop Details';
        $this->data['meta_title'] = 'Shop Details';

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/s_detail', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    
    public function save_contact_info(){
        $first_name = trim($this->input->post('first_name'));
        $mobile     = trim($this->input->post('mobile'));
        $email      = trim($this->input->post('email'));
        $subject    = trim($this->input->post('subject'));
        $message    = trim($this->input->post('message'));
        
        $data['date'] = date('Y-m-d');
        $data['name'] = $first_name;
        $data['mobile'] = $mobile;
        $data['email'] = $email;
        $data['subject'] = $subject;
        $data['message'] = $message;

        if(save('visitor_comments',$data)){
            set_msg('success', 'Success', 'Message Successfully Sent.',false);
        }
        redirect_back();
    }    
    
    
    public function service() {
        $this->data['pagename']   = 'Service';
        $this->data['meta_title'] = 'Service';

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/service', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function checkout() {
        $this->data['pagename']   = 'Checkout';
        $this->data['meta_title'] = 'Checkout';

        $this->load->view('includes/header', $this->data);
        $this->load->view('includes/navbar', $this->data);
        $this->load->view('frontend/checkout', $this->data);
        $this->load->view('includes/footer', $this->data);
    }
    
    public function order_submit(){
        if(!isset($_POST['product_id'])){
            set_msg('danger', 'danger', 'Your Cart Is Empty!');
            redirect_back();
        }
        
        // array type information start
        $product_id      = $this->input->post('product_id');
        $weight          = $this->input->post('weight');
        $quantity        = $this->input->post('quantity');
        $price_per_pound = $this->input->post('price_per_pound');
        // array type information end
        
        
        
        // calculate total price and then price grand total price start
        $grand_total = 0;
        foreach($product_id as $key => $value){
            $total_price = ($weight[$key]*$price_per_pound[$key])*$quantity[$key];
            $grand_total += $total_price;
        }
        // calculate total price and then price grand total price end
        
        $order_id = rand(000000,999999);
        if(read('orders', ['order_id'=>$order_id])){
            $order_id += 1;    
        }
        
        // total quantity for order table start
        $total_quantity = array_sum($this->input->post('quantity'));
        // total quantity for order table end
        
        
        // save data to orders table and get last insert id start
        $mobile = $this->input->post('mobile');
        $orders_data = [
            "date"           => date("Y-m-d"),
            "order_id"       => $order_id,
            "name"           => $this->input->post('name'),
            "mobile"         => $mobile,
            "address"        => $this->input->post('address'),
            "text_on_cake"   => $this->input->post('text_on_cake'),
            "cake_for"       => $this->input->post('cake_for'),
            "delivery_date"  => $this->input->post('delivery_date'),
            "total_quantity" => $total_quantity,
            "total_price"    => $grand_total,
        ];
        
        if(save("orders", $orders_data)){
            $insert_id = $this->db->insert_id();
            // now save data order items table with single product information start
            foreach($product_id as $key => $value){
                $data = [
                    "order_id"        => $insert_id,
                    "product_id"      => $product_id[$key],
                    "weight"          => $weight[$key],
                    "quantity"        => $quantity[$key],
                    "price_per_pound" => $price_per_pound[$key]
                ];
                if(save('order_items', $data)==false){
                    set_msg('success', 'success', 'Order Submission failed, Please Try Again !');
                    redirect_back();
                }else{
                    set_msg('success', 'success', 'Order Submission Successfully Completed !');
                }
            }
            send_sms($mobile, "Dear user your order successfully submitted!\nYour order id #$order_id");
            // now save data order items table with single product information end
        }else{
            set_msg('warning', 'warning', 'Order Submission failed, Please Try Again !');
            redirect_back();
        }
        redirect_back();
        // save data to orders table and get last insert id end
        
    }
}
