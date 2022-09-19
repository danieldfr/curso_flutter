
//Os construtores são para preparar os objetos com as configurações iniciais para serem utilizados

class Usuario{

  String usuario = "";
  String senha = "";
  String cargo = "";

  //Forma 1 de construtor
  /*Usuario(String usuario, String senha){
    this.usuario = usuario;
    this.senha = senha;
    print("Configurações iniciais do objeto.");
  }*/

  //Forma 2 de construtor
  Usuario(this.usuario, this.senha);

  //Forma 3 de construtor Named Constructor
  Usuario.diretor(this.usuario, this.senha){
    this.cargo = "Diretor";
    print("Libera privilégio de $cargo");
  }

  void autenticar(){
    var usuario = "Daniel";
    var senha = "123456";

    if(this.usuario == usuario && this.senha == senha){
      print("Usuário autenticado.");
    }else{
      print("Usuário não autenticado.");
    }
  }

}

void main() {

  //Usuario usuario = Usuario("Daniel", "123456");

  Usuario usuarioDiretor = Usuario.diretor("Daniel", "123456");

  //usuario.usuario = "Daniel";
  //usuario.senha = "123456";
  
  //usuario.autenticar();
}