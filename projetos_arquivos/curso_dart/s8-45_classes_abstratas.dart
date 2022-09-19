
//Classes Abstratas e Concretas
//Classe Abstrata -> não permite ser instaciada
//Classe Concreta -> classe que é possível instanciar ela
//Para converter uma classe concreta para abstrata bastar utilizar o modificador abstract

abstract class Animal{
  String cor = "";

  void correr(); //Definindo método sem corpo ou abstrato
  //Dessa forma obriga as classes filhas (que herdam) a sobrescrever o métodod void correr();
}

class Cao extends Animal{
  void latir(){
    print("Latir");
  }

  @override
  void correr(){
    print("Correr");
  }
}

class Passaro extends Animal {
  void voar(){
    print("Voar");
  }

    @override
  void correr(){
    print("Correr");
  }
}

void main(){

  Cao cao = Cao();
  cao.latir();
  cao.correr();

}

//As Classes Pai são geralmente para estruturar e estabelecer relação de herança para as classes filhas
//As Classes Filhas é que serão utilizadas diretamente no código instaciando obejetos delas