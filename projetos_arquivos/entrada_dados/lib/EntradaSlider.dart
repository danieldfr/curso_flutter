import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double valor = 0;
  String label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[

            Slider(
                value: valor,
                min: 0,
                max: 10,
                label: label,
                divisions: 5,
                onChanged: (novoValor){
                  setState(() {
                    valor = novoValor;
                    label = novoValor.toString();
                  });
                  //print("Valor selecionado: " + novoValor.toString());
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
                print("Valor selecionado: " + valor.toString());
              },
            ),

          ],
        ),
      ),
    );
  }
}
