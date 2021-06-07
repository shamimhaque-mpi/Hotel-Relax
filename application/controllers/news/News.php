<?php

class News extends Admin_Controller {

    function __construct() {
        parent::__construct();
    }
    
    public function index() {
        $this->data['menu_dropdown_selector'] = "list";//This menu varriable only used for aside Dropdown_menu activation
        $this->data['meta_keyword'] = '';
        $this->data['meta_title'] = '';
        $this->data['meta_description'] = '';


        $select    = 'news.*, news_category.name as news_cat_name';
        $join_cond = 'news.news_cat_id=news_category.id';
        $where     = ['news_category.status'=>1];
        
        $this->data['result'] = join_read("news","news_category",$join_cond,$where, $select);

        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/includes/aside', $this->data);
        $this->load->view('admin/includes/headermenu', $this->data);
        $this->load->view('admin/includes/nav', $this->data);
        $this->load->view('components/news/list', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add() {
        $this->data['menu_dropdown_selector'] = "add";//This menu varriable only used for aside Dropdown_menu activation
        $this->data['meta_keyword'] = '';
        $this->data['meta_title'] = '';
        $this->data['meta_description'] = '';

        $this->data['news_category'] = read('news_category',['status'=>1]);

        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/includes/aside', $this->data);
        $this->load->view('admin/includes/headermenu', $this->data);
        $this->load->view('admin/includes/nav', $this->data);
        $this->load->view('components/news/add', $this->data);
        $this->load->view('admin/includes/footer');
    }


    public function store() {
        $data = [
            'date'        => $this->input->post('date'),
            'title'       => $this->input->post('title'),
            'news'        => $this->input->post('news'),
            'news_cat_id' => $this->input->post('news_cat_id')
        ];

        $path  = "public/images/post/";
        $name  = 'post_'.(strtotime(date('Y-m-d h:i:s'))*10);

        if($path = upload_img("img", null, null, $path, $name)){
            $data['path'] = $path;
        }

        if(save('news', $data)){
            set_msg('success', 'Success', 'News Created Successfully!');
        }else{
            set_msg('warning', 'Warning', 'News Not Created!');
        }
        redirect_back();
    }


    public function view($id=null) {
        $this->data['menu_dropdown_selector'] = "list";//This menu varriable only used for aside Dropdown_menu activation
        $this->data['meta_keyword'] = '';
        $this->data['meta_title'] = '';
        $this->data['meta_description'] = '';

        
        $this->data['result'] = read("news", ['id'=>$id]);

        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/includes/aside', $this->data);
        $this->load->view('admin/includes/headermenu', $this->data);
        $this->load->view('admin/includes/nav', $this->data);
        $this->load->view('components/news/view', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit($id=null) {
        $this->data['menu_dropdown_selector'] = "list";//This menu varriable only used for aside Dropdown_menu activation
        $this->data['meta_keyword'] = '';
        $this->data['meta_title'] = '';
        $this->data['meta_description'] = '';

        $this->data['news_category'] = read('news_category',['status'=>1]);
        $this->data['result'] = read("news", ['id'=>$id]);

        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/includes/aside', $this->data);
        $this->load->view('admin/includes/headermenu', $this->data);
        $this->load->view('admin/includes/nav', $this->data);
        $this->load->view('components/news/edit', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function editProcess($id=null){
        $old_img = $this->input->post('old_img');

        $data = [
            'date'        => $this->input->post('date'),
            'title'       => $this->input->post('title'),
            'news'        => $this->input->post('news'),
            'news_cat_id' => $this->input->post('news_cat_id')
        ];


        $path  = "public/images/post/";
        $name  = 'post_'.(strtotime(date('Y-m-d h:i:s'))*10);

        if($path = upload_img("img", null, null, $path, $name)){
            if(is_file($old_img)){
                unlink($old_img);
            }

            $data['path'] = $path;
        }

        if(update('news', $data, ['id'=>$id])){
            set_msg('success', 'Success', 'News Updated Successfully!');
        }else{
            set_msg('warning', 'Warning', 'News Not Updated!');
        }
        redirect_back();
    }

    public function delete($id=null) {
        $result = read('news', ['id'=>$id]);
        if($result){
            $old_img = $result[0]->$img_path;
            if(delete('news', ['id'=>$id])){
                if(is_file($old_img)){
                    unlink($old_img);
                }
                set_msg('success', 'Success', 'News Deleted Successfully!');
            }else{
                set_msg('warning', 'Warning', 'News Not Deleted!');
            }
        }
        redirect_back();
    }
}