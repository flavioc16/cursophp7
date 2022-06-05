<?php
    class Usuario {
        private $id_usuario;  
        private $usuario_usuario;
        private $senha_usuario;

        public function getIdUsuario(){
            return $this->id_usuario;
        }
        public function setIdUsuario($value){
            $this->id_usuario = $value;
        }
        public function getUsuario(){
            return $this->usuario_usuario;
        }
        public function setUsuario($value){
            $this->usuario_usuario = $value;
        }
        public function getSenhaUsuario(){
            return $this->senha_usuario;
        }
        public function setSenhaUsuario($value){
            $this->senha_usuario = $value;
        }

        public function loadById($id){

            $sql = new Sql();

            $results = $sql->select("SELECT * FROM usuario WHERE id_usuario = :ID", array(":ID"=>$id));
            if (isset($results[0])){

                $this->setData($results[0]);

            }
        }
        public function __toString() {

           return json_encode(array(
            "id_usuario"=>$this->getIdUsuario(),
            "usuario_usuario"=>$this->getUsuario(),
            "senha_usuario"=>$this->getSenhaUsuario()
           ));
        }
        public static function getListUsuarios(){

            $sql = new Sql();

            return $sql->select("SELECT * FROM usuario ORDER BY nome_usuario");

        }
        public static function searchUsuario($usuario_usuario){

            $sql = new Sql();

            return $sql->select("SELECT * FROM usuario WHERE usuario_usuario LIKE :SEARCH ORDER BY usuario_usuario", array(
                'SEARCH'=>"%".$usuario_usuario."%"
            ));
        }
        public function login($usuario_usuario, $senha_usuario){
            $sql = new Sql();
            $results = $sql->select("SELECT * FROM usuario WHERE usuario_usuario = :USUARIO AND senha_usuario = :SENHA", array(
                ':USUARIO'=>$usuario_usuario,
                ':SENHA'=>$senha_usuario));
            if (isset($results[0])){

                $this->setData($results[0]);

            } else{

                throw new Exception("Dados incorretos ou incompletos");
            }
        }
        public function setData($data){

            $this->setIdUsuario($data['id_usuario']);
            $this->setUsuario($data['usuario_usuario']);
            $this->setSenhaUsuario($data['senha_usuario']);
        }
        public function insert(){

            $sql = new Sql();
    
            $results = $sql->select("CALL sp_usuario_insert(:LOGIN, :PASSWORD)", array(
    
                ':LOGIN'=>$this->getUsuario(),
                ':PASSWORD'=>$this->getSenhaUsuario()
    
            ));
    
            if (isset($results[0])) {
            
                $this->setData($results[0]);
    
            }
    
        }
        public function update($usuario_usuario, $senha_usuario){
            $this->setUsuario($usuario_usuario);
            $this->setSenhaUsuario($senha_usuario);

            $sql = new Sql();
            $sql->query("UPDATE usuario SET usuario_usuario = :USUARIO, senha_usuario = :SENHA WHERE :ID", array(
                ':USUARIO'=>$this->getUsuario(),
                ':SENHA'=>$this->getSenhaUsuario(),
                'ID'=>$this->getIdUsuario()
            ));
        }
        public function delete(){

            $sql = new Sql();
            $sql->query("DELETE FROM usuario WHERE id_usuario = :ID", array(
                'ID'=>$this->getIdUsuario()
            ));
            $this->setIdUsuario(0);
            $this->setUsuario("");
            $this->setSenhaUsuario("");
        }

        public function __construct($usuario_usuario ="", $senha_usuario =""){
            $this->setUsuario($usuario_usuario);
            $this->setSenhaUsuario($senha_usuario);   
        }   
    }   
?>