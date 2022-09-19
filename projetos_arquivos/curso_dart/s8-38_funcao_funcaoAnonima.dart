
//o operador ?? verificar se o valor altura é null
//Se sim atribui valor 0
//var novaAltura = altura ?? 0;


//Funções anônimas e parâmetros
//*os parâmetros entre chaves os tornam opcionais quando a função é chamada
//*os parâmetros opcionais devem sempre estar no final na lista de parâmetros da função 

void exibirDados(String nome, int idade, double altura){
  print("nome: $nome");
  print("idade: $idade");
  print("altura: $altura");
}

void calcularBonus(){
  print("Seu bônus é de: 20");
}

//É possível passar uma função como parâmetro utilizando o tipo Function
void calcularSalario(double salario, Function funcaoParametro){
  print("Seu salário é: $salario");
  funcaoParametro();
}

void main(){
  //exibirDados("Daniel", 26, 1.74);
  
  calcularSalario(100, (){print("Seu bônus é de: 20");} );

}