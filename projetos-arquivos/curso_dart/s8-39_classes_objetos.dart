
class Casa{
  //Atributos
  String cor = "cor";

  //Métodos
  //void abrirJanela(int qtdJanelas)
  void abrirJanela(){
    print("Abrir janela da casa $cor");
    //print("Janelas: $qtdJanelas");
  }

  void abrirPorta(){
    print("Abrir porta da casa $cor");
  }

  void abiriCasa(){
    this.abrirJanela();
    this.abrirPorta();
  }

}

void main() {

  //String nome = "Daniel";

  //Instanciar: pegar uma classe e transformar em um objeto
  //*O new ao instaciar é opcional no Dart
  //Pode instanciar mais de um objeto da mesma classe
  //Na linha abaixo minhaCasa é um objeto da classe Casa
  Casa minhaCasa = new Casa();
  minhaCasa.cor = "Amarelo";
  //minhaCasa.abrirJanela(5);
  //minhaCasa.abrirPorta();
  minhaCasa.abiriCasa();

/*
  Casa minhaCasa2 = Casa();
  minhaCasa2.cor = "Verde";
  minhaCasa2.abrirJanela(3);
*/

}