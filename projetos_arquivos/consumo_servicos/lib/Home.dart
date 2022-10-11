import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  /* Comunicação sincrona e assincrona 
  sínctrona: instantânea
  assíncrona: requer um tempo (desconhecido) para resposata
  **/

  TextEditingController _controllerCep = TextEditingController();
  String _resultado = "Resultado";

  _recuperarCep() async { //async: indico para a função que essa comunicação requer um tempo de resposta

    String cepDigitado = _controllerCep.text;

    String url = "https://viacep.com.br/ws/${cepDigitado}/json/";

    http.Response response;

    response = await http.get(url); //await: indico que deve aguardar a execução da resposta

    Map<String, dynamic> retorno = json.decode( response.body );

    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    setState(() {
      _resultado = "\nEndereço: ${logradouro}, ${complemento}, ${bairro}, ${localidade}";
    });

    print(
      "\nResposta" +
      "\nlogradouro: ${logradouro}" +
      "\ncomplemento: ${complemento}" +
      "\nbairro: ${bairro}" +
      "\nlocalidade: ${localidade}"
    );


    //print("resposta (status code):" + response.statusCode.toString());
    //print("\n resposta (body):" + response.body);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviço Web"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o cep (sem traço)"
              ),
              style: TextStyle(
                fontSize: 20
              ),
              controller: _controllerCep,
            ),
            ElevatedButton(
                child: Text("Buscar"),
                onPressed: _recuperarCep
              ),
              Text(_resultado)
          ],
        ),
      ),
    );
  }
}