
/*
Mixins é uma maneira de utilizar códigos em múltiplas hierarquias de classes
*/

abstract class Presidenciavel { //Esta é ser a classe interface, ela não precisa ser indicada por nenhuma palavra (modificador)
  void participarEleicao(); //Ao utilizar essa interface obriga (contrato) a classe a implementar o método participarEleicao() conforme a necessidade da classe que usa
}

abstract class Jornalismo {
  void escreverArtigoJornal();
}

mixin Escrita{
  void escreverArtigoJornal(){
    print("Escrever um artigo para o Jornal.");
  }
}

abstract class Cidadao {

  void direitosDeveres(){
    print("Todo cidadão tem diretos e deveres.");
  }
}

class Obama extends Cidadao implements Presidenciavel, Jornalismo { //Implements inica qual ou quais interfaces devem ser implementadas

  @override
  void participarEleicao(){
    print("Eleição nos Estados Unidos para o Obama.");
  }

    @override
  void escreverArtigoJornal(){
    print("Escrever artigo para jornal.");
  }
}

class Jamilton extends Cidadao with Escrita { //Mixin é indicado pelo modificador with
  //Dentro da Classe Jamilton não tem nenhum método implementado, mas quando a classe Jamilton for instaciada o método que estiver no Mixin poderá ser acessado pelo objeto da classe Jamilton
  //Mixin utiliza-se para executar métodos em determinadas classes (sem utilizar a herança)

}


void main() {

  Obama obama = Obama();
  obama.direitosDeveres();
  obama.participarEleicao();

  Jamilton jamilton = Jamilton();
  jamilton.direitosDeveres();
  
}