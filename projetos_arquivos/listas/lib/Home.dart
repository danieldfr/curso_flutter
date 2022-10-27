import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){

    _itens = [];

    for(int i=0; i<=10; i++){
      
      Map<String, dynamic> item = Map();

      item["titulo"] = "Título ${i}";
      item["descricao"] = "Descrição do título ${i}";
      _itens.add( item );

    }

  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            
            //print("item ${ _itens[indice].toString() }");

            return ListTile(
              onTap: (){
                showDialog(
                  context: context, 
                  builder: (context){
                    return AlertDialog(
                      title: Text( _itens[indice]["titulo"] ),
                      titlePadding: EdgeInsets.all(20),
                      titleTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                      ),

                      content: Text( _itens[indice]["descricao"] ),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: (){
                            print("Selecionado SIM");
                            Navigator.pop(context);
                          },
                          child: Text("Sim"),                          
                        ),
                        ElevatedButton(
                          onPressed: (){
                            print("Selecionado NÃO");
                            Navigator.pop(context);
                          },
                          child: Text("Não"),                          
                        )
                      ],

                    );
                  }
                );
              },
              /*onLongPress: (){

              },*/

              title: Text( _itens[indice]["titulo"] ),
              subtitle: Text( _itens[indice]["descricao"]  ),
            );
          },
        ),
      ),
    ); 
  }
}