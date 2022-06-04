<?php

require_once("config.php");
//carrega usuarios sem camadas
//$sql = new Sql();
//$usuarios = $sql->select("SELECT * FROM usuario");
//echo json_encode($usuarios);

//carrega um usuario
//$root = new Usuario();
//$root->loadById(151);
//echo $root;

//carrega uma lista de usuário
//$lista = Usuario::getListUsuarios();
//echo json_encode($lista);

//carrega uma lista de usuario por nome
//$usuario_usuario = "flavio";
//$usuario = Usuario::searchUsuario($usuario_usuario);
//echo json_encode($usuario);

//carrega um usuario o login e a senha
$usuario = new Usuario();
$usuario->login("kburguer","8ce4b16b22b58894aa86c421e8759df3");
echo ($usuario);
?>