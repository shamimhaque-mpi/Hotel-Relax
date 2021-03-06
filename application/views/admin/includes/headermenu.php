<?php 
    $where=array('status'=>'unread');
    $counter=read('visitor_comments');
    $total_msg=($counter) ? count($counter) : 0;

    $latest_msg=read('visitor_comments',$where,'id DESC','5');
    $info = read("users",array('username'=>$username));
?>
<style>
    .view-site:hover{
        color: #333;
    }
    a:focus{border: none;}
</style>


<!-- Page Content -->
<div id="page-content-wrapper">

    <!-- top navigation start -->
    <div class="row">
        <nav class="col-xs-12 content-fixed-nav">
            <ul>
                <li>
                    <a href="#menu-toggle" id="menu-toggle">
                        <i class="fa fa-angle-left"></i>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>

                                <li class="dropdown">
                    <a id="message-menu" data-toggle="dropdown">
                        <i class="fa fa-envelope-o"></i>
                        <span class="badge badge-messages"><?php echo $total_msg; ?></span>
                        <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-left" aria-labelledby="message-menu">
                        <li class="dropdown-menu-description"><a>Messages</a></li>
                        <?php 
                            if($latest_msg){
                            foreach($latest_msg as $key => $msg) { 
                        ?>
                            <li><a href="<?php echo base_url('visitors/comments/view_comments')?>?id=<?php echo $msg->id; ?>" title="<?php echo "From : ". $msg->name. "(&nbsp;". $msg->date ."&nbsp;)" ; ?>"><?php echo $msg->subject; ?></a></li>
                        <?php }} ?>
                        <li class="divider"></li>
                        <li><a href="<?php echo site_url('visitors/comments'); ?>">All</a></li>
                    </ul>
                </li> 
                <li style="min-width: 85px;"><a class="view-site" style="font-weight: bold;" target="_blank" href="<?php echo base_url(); ?>"><?php echo caption('View_Site');?></a></li>
             </ul>

            <ul class="nav-inner-right">
                <li style="width: auto;">
                    <a style="font-weight: bold;"><span style="color: #000;">Hello: </span> <span style="color: #00A8FF;"><?php echo (isset($info) && !empty($info[0]->name)) ? $info[0]->name : ""; ?></span></a>
                </li>
                <li class="user-menu dropdown" style="width: 72px;">
                    <a class="dropdown-toggle" type="button" data-toggle="dropdown" >
                        <img class="nav-pic" src="<?php echo site_url($image); ?>" />
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="dropdown-menu-description"><a>Settings</a></li>
                        <li><a href="<?php echo site_url("settings/profile");?>">Profile</a></li>
                        <li><a href="<?php echo site_url('settings/createProfile'); ?>">Create Profile</a></li>
                        <li><a href="<?php echo site_url("settings/allProfile");?>">All Profile</a></li>
                        <li class="divider"></li>
                        <li><a href="<?php echo site_url('access/users/logout'); ?>">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
    <!-- top navigation end -->

    <div class="main-area">&nbsp;</div>
