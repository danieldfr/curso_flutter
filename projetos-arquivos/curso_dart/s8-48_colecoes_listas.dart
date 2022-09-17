/*
Collection ou coleções -> são implementações de estrutura de dados, que é utilizado para armazenar intes

- List
- Maps
*/

/*
List<String> frutas = ["Manga", "Maça"] => entre os sinais <> definimos o tipo de lista
List<> lista = ["Manga", 10, 15.9, 7] => quando não definimos o tipo podemos compor a lista com diferentes itens
*/

class Usuario {
  String nome = "";
  int idade = 0;

  Usuario(this.nome, this.idade);
}

void main(){
  print("\n------LISTA DE ITENS:");

  List<String> frutas = ["Morango", "Manga"];

  //Adicionar itens na lista
  frutas.add("Melancia");

  //Inserir item em determinada posição
  frutas.insert(1, "Abacaxi"); //Adiciona o item "Abacaxi" na posição 1

  //Remover item de determinada posição
  frutas.removeAt(0); //Remove item na posição 0 da lista de frutas

  //Verificar a existência de determinado item na lista
  print(frutas.contains("Manga")); //Se for encontrado o item "Manga" retorna true

  //Verificar tamanho da lista
  print(frutas.length); //Retorna a quantidade de intens presente na lista

  print(frutas);

  print("\n\n------LISTA DE OBEJTOS:");
  //Armazenar objetos
  //Usuario usuario = Usuario("Jamilton", 30);

  List<Usuario> usuarios = [];
  usuarios.add(Usuario("Jamilton", 30));
  usuarios.add(Usuario("Daniel", 26));
  usuarios.add(Usuario("Jorge", 37));

  for(Usuario usuario in usuarios){
    print("Nome: ${usuario.nome} - idade ${usuario.idade}");
  }

}