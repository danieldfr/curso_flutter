//Static -> permite acessar o atributo ou método da classe sem que ela seja instaciada


//Esse tipo de classe é utilizado para definir configurações iniciais do aplicativo
class Configuracoes{
  static String identificadorApp = "ASDSFDFDWRR";
  static String notificacaoSom = "Sim";

  static void configuracaoInicial(){
    print("Executa configuracoes iniciais.");
  }
}

class Conta{
  double saldo = 1000;
}

main(){

  //Modificadores Static e Final

  //Static
  //Configuracoes config = Configuracoes(); //não há necessidade de instancia-la pois o atributo e método são Static

  Configuracoes.configuracaoInicial(); //Acesso o método configuracaoInicial sem instanciar a classe Configuracoes

  print(Configuracoes.identificadorApp); //Acesso o atributo .identificadorApp sem instanciar a classe Configuracoes

  //Final
  //Ao definir um objeto com o modificador final indica que ele é o objeto final e não pode ser mais instaciado novamente e nem modificado 
  final Conta conta = Conta();
  print(conta.saldo);


}

//A classe com atributos e métodos Static consome mais recurso do que uma classe que é instaciada.
//Deve-se utilizar atributos e métodos Static somente quando realmente necessário.