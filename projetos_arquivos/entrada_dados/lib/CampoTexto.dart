import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number, //text, number, emailAdress, datetime
              decoration: InputDecoration(
                labelText: "Digite um valor"
              ),
              //enabled: true, //false
              //maxLength: 2, //indica a quantidade de caracteres permitida no campo
              //maxLengthEnforcement: true, //essa propriedade permite digitar somente a quantidade de caracteries indicada no maxLength
              /*style: TextStyle( //Define a cor do texto inserido no campo
                fontSize: 25,
                color: Colors.green
              ),*/
              //obscureText: true, //Esconhder texto no campo SENHA

              /* //Cada novo valor digitado essa função é chamada e captura o valor em "tempo real"
              onChanged: (String texto){
                print("Valor digitado: " + texto);
              },*/

              //Quando a tecla Enter (ou pode ser definido um botão) é acionada essa função é chamada e captura o valor
              onSubmitted: (String texto){
                print("Valor digitado: " + texto);
              },
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.lightGreen,
            onPressed: (){
              print("Valor digitado: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
