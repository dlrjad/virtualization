<?php
    require_once("models/cluster_model.php");
    $cluster_=new cluster_model();
    $datos=$cluster_->get_clusters($_GET['dat1']);

    $name = $_GET['dat2'];

    require_once("core/base_url.php");
    $base_=new base_url();
    $base_->baseurl();

    require_once("views/info_plataform_view.phtml");
?>
