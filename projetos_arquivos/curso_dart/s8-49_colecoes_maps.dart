/*
Maps

Utiliza conceito de chave -> valor
*/

void main(){

  Map frutas = Map();
  
  print("\n------MAPS (chave->valor):");

  // chave -> valor
  frutas[0] = "Morango";
  frutas[1] = "Manga";
  print(frutas[0]);

  print("\n------MAPS (definindo tipo da chave e do valor):");
  //Definindo o tipo da chave e do valor
  Map<String, String> estados = Map();
  estados["SP"] = "São Paulo";
  estados["TO"] = "Tocantins";
  estados["GO"] = "Goiás";
  print(estados);

  //recupero as chaves
  print(estados.keys);

  //recupero os valores
  print(estados.values);

  //Verifica se contém uma determinada chave e determinado valor
  print(estados.containsKey("TO"));
  print(estados.containsValue("Goiás"));
  print(estados.length); //verifica quantidade de intens

  estados.forEach((chave, valor) => print("$chave - $valor") );

  print("\n------MAPS (valor com tipo dinâmico):");
  Map<String, dynamic> usuarios = Map();
  usuarios["nome"] = "Jamiltons";
  usuarios["idade"] = 30;

}