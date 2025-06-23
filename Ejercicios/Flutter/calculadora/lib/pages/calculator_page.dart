import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CalculatorPageState();
  }
}

class CalculatorPageState extends State {
  int? valorUno;
  int? valorDos;
  int? resultado;
  String resultadoPrint = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text('Calculadora'),
        ),
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ingrese un valor entero'),
            TextField(
              controller: TextEditingController(text:"0"),
              onChanged: (text){
                valorUno = int.parse(text);
              },
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
            ),
            const Text('Ingrese un valor entero'),
            TextField(
              controller: TextEditingController(text:"0"),
              onChanged: (text){
                valorDos = int.parse(text);
              },
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: (){
                resultado = valorUno!+valorDos!;
                resultadoPrint = 'El resultado es ${resultado!}';
                setState(() {});
              },
              child: Text(
                'SUMAR'
              ),
            ),
            Text(resultadoPrint),
          ],
        ),
      ),
    );
  }

}