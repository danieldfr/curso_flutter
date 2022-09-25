import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;
  bool _escolhaConfiguracao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            SwitchListTile(
              title: Text("Receber notificações?"),
                value: _escolhaUsuario,
                onChanged: (valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }
            ),

            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onPressed: (){

                if( _escolhaUsuario ){
                  print("escolha: ativar notificações");
                }else{
                  print("escolha: NÃO ativar as notificações");
                }

                //print("Resultado: " + _escolhaUsuario.toString());
              },
            ),

            /*
            Switch(
                value: _escolhaUsuario,
                onChanged: (valor){

                  setState(() {
                    _escolhaUsuario = valor;
                  });

                }
            ),
            Text("Receber notificações?")
             */

          ],
        ),
      ),
    );
  }
}
