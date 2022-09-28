import 'package:flutter/material.dart';
import 'package:navegacao/TelaSecundaria.dart';

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Ir para a segunda tela"),
              padding: EdgeInsets.all(15),
              onPressed: (){

                /*
                * -> Navigator: objeto responsável por fazer navegação entre telas
                * -> .push: método que abre uma tela que você defina
                * -> .pop: fecha a tela atual e abre uma nova tela
                * -> context: parâmetro que indica qual tela você está. Dessa forma o ojeto Navigator saberá
                * que deve abrir uma nova tela sobre o context atual (sobre a tela atual)
                * -> route: define a rota de avanço para a próxima tela. Um modo fácil é utilizar a classe
                * MaterialPageRoute()
                * -> .builder: recebe função anônima indicado qual o contexto (tela atual) e qual será a rota
                * seguinte (instancia a tela que será aberta)*/

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaSecundaria(),
                    ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
