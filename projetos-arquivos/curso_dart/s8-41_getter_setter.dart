
class Conta {

  double saldo = 0;
  double _saque = 0; //o underline idica que o atributo só pode ser acessado na classe e no objeto ser acessado atraver do get e set

  //Getter -> Obter
  double get saque{
    //Através do get é possível fazer validações necessárias
    return this._saque;
  }
  
  //Setter -> Configurar
  set saque(double saque){
    if( saque > 0 && saque <= 500){
      this._saque = saque;
    }
  }


}


void main(){

  Conta conta = Conta();
  conta.saque = 500;

  print(conta.saque);


}