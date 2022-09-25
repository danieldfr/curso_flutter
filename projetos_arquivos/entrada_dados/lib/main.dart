import 'package:entrada_dados/CampoTexto.dart';
import 'package:entrada_dados/EntradaRadioButton.dart';
import 'package:entrada_dados/EntradaSlider.dart';
import 'package:entrada_dados/EntradaSwitch.dart';
import 'package:flutter/material.dart';
import 'package:entrada_dados/EntradaCheckbox.dart';
void main(){
  runApp(
    MaterialApp(
      home: EntradaSlider(),
      //home: EntradaSwitch(),
      //home: EntradaRadioButton(),
      //home: EntradaCheckbox(),
      //home: CampoTexto(),
    )
  );
}