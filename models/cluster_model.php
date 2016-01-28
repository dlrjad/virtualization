<?php
class cluster_model{
    private $db;
    private $conectar;
    private $clusters;

    public function __construct(){
        require_once 'core/conectar.php';
        $this->conectar=new Conectar();
        $this->db=$this->conectar->conexion();
        $this->clusters=array();
    }

    public function get_clusters($idp){
        $consulta=$this->db->query("select * from cluster WHERE id_plataforma = '$idp' ;");
        while($filas=$consulta->fetch_assoc()){
            $this->clusters[]=$filas;
        }
        return $this->clusters;
    }
}
?>