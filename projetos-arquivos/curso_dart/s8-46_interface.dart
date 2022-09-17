
/*
Pode-se dizer, a grosso modo, que uma interface é um contrato que quando assumido por uma classe deve ser implementado

Interface é utilizada pois podemos ter muitos objetos (classes) que podem possuir a mesma ação (métodos), porém, podem executá-las de maneiras diferentes
*/

abstract class Presidenciavel { //Esta é ser a classe interface, ela não precisa ser indicada por nenhuma palavra (modificador)
  void participarEleicao(); //Ao utilizar essa interface obriga (contrato) a classe a implementar o método participarEleicao() conforme a necessidade da classe que usa
}

abstract class Jornalismo {
  void escreverArtigoJornal();
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

class Jamilton extends Cidadao {

}


void main() {

  Obama obama = Obama();
  obama.direitosDeveres();
  obama.participarEleicao();

  Jamilton jamilton = Jamilton();
  jamilton.direitosDeveres();
  
}