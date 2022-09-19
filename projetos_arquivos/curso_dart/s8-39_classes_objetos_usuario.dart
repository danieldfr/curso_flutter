class Usuario {
  String usuario = "";
  String senha = "123456";
  

  void autenticar(String usuario, String senha){
    if (senha == "123456")
      print("Acesso permitido. Bem vindo $usuario!");
    else
      print("Acesso negado. Verifique usuário e/ou senha.");

  }
}

void main() {
  
  Usuario usuario = Usuario();
  usuario.usuario = "Daniel";
  usuario.senha = "12345";
  usuario.autenticar(usuario.usuario, usuario.senha);

}