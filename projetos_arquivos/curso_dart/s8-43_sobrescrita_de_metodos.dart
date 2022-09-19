// @override -> sobrepor (utilizado para idicar que está sobrescrevendo um método)
// super -> indica que está chamando um método da classe superior (pai)

class Animal {
  String cor = "";

  Animal(this.cor); //Construtor

  void dormir(){
    print("Dormir");
  }

  void correr(){
    print("Correr como ");
  }
}

//a classe Cao (filha) passar a herdar características da classe Animal (pai)
//extends utilizado para indicar herança
class Cao extends Animal{

  String corOrelha = "";

  Cao(String cor, this.corOrelha) : super(cor);

  void latir(){
    print("Latir");
  }

  @override //sobrepor (utilizado para sobrescrever método)
  void correr(){
    super.correr();
    print("cão");
  } 

}

class Passaro extends Animal {
  
  String corBico = "";

  Passaro(String cor, this.corBico) : super(cor); //: super(cor) -> passas para o construtor da classa Animal (pai) o valor do parametro String cor

  void voar(){
    print("Voar");
  }

  @override //sobrepor (utilizado para sobrescrever método)
  void correr(){
    super.correr();
    print("passaro");
  } 
}

void main(){

  Cao cao = Cao("Marrom", "Branco");
  Passaro passaro = Passaro("Vermelho", "Amarelo");

  print("Passaro cor: ${passaro.cor} corBico: ${passaro.corBico}");

  /*
  cao.correr();
  passaro.correr();
  */

  /*
  cao.cor = "Branco";
  cao.corOrelha = "Preto";
  print("Cor do cão: " + cao.cor);
  print("Cor da orelha do cão: " + cao.corOrelha);
  cao.latir();

  passaro.cor = "Marrom";
  passaro.corBico = "Cinza";
  print(passaro.cor);
  passaro.voar();
  */

}