<?php
    require_once("models/plataform_model.php");
    $plataform_=new plataform_model();
    $datos=$plataform_->get_plataforms();

    require_once("core/base_url.php");
    $base_=new base_url();
    $base_->baseurl();

    require_once("views/plataform_view.phtml");
?>
