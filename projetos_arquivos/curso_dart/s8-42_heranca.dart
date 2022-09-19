
class Animal {
  String cor = "";

  void dormir(){
    print("Dormir");
  }
}

//a classe Cao (filha) passar a herdar características da classe Animal (pai)
//extends utilizado para indicar herança
class Cao extends Animal{

  String corOrelha = "";

  void latir(){
    print("Latir");
  }  
}

class Passaro extends Animal {
  
  String corBico = "";
  void voar(){
    print("Voar");
  }
}

void main(){

  Cao cao = Cao();
  Passaro passaro = Passaro();

  cao.cor = "Branco";
  cao.corOrelha = "Preto";
  print("Cor do cão: " + cao.cor);
  print("Cor da orelha do cão: " + cao.corOrelha);
  cao.latir();

  passaro.cor = "Marrom";
  passaro.corBico = "Cinza";
  print(passaro.cor);
  passaro.voar();

}