<?php
    class Usuario {
        private $id_usuario;  
        private $nome_usuario;
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
        public function getNomeUsuario (){
            return $this->nome_usuario;
        }
        public function setNomeUsuario($value){
            $this->nome_usuario = $value;
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
                $row = $results[0];
                $this->setIdUsuario($row['id_usuario']);
                $this->setNomeUsuario($row['nome_usuario']);
                $this->setUsuario($row['usuario_usuario']);
                $this->setSenhaUsuario($row['senha_usuario']);
            }
        }
        public function __toString() {
           return json_encode(array(
            "id_usuario"=>$this->getIdUsuario(),
            "nome_usuario"=>$this->getNomeUsuario(),
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
                ":USUARIO"=>$usuario_usuario,
                ":SENHA"=>$senha_usuario));
            if (isset($results[0])){
                $row = $results[0];
                $this->setIdUsuario($row['id_usuario']);
                $this->setNomeUsuario($row['nome_usuario']);
                $this->setUsuario($row['usuario_usuario']);
                $this->setSenhaUsuario($row['senha_usuario']);
            } else{
                throw new Exception("Dados incorretos ou incompletos");
            }
        }    
    }   
?>