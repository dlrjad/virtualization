<?php
class plataform_model{
    private $db;
    private $conectar;
    private $plataforms;

    public function __construct(){
        require_once 'core/conectar.php';
        $this->conectar=new Conectar();
        $this->db=$this->conectar->conexion();
        $this->plataforms=array();
    }

    public function get_plataforms(){
        $consulta=$this->db->query("select * from plataforma;");
        while($filas=$consulta->fetch_assoc()){
            $this->plataforms[]=$filas;
        }
        return $this->plataforms;
    }
}
?>
