import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Imc(),
  ));
}

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  _ImcState createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  TextEditingController weightController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  void reset() {
    setState(() {
      pesoController.text = "";
      alturaController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora IMC",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.person_outline,
              size: 120,
              color: Colors.green,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Peso (kg)",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25),
              controller: pesoController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25),
              controller: alturaController,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Calcular'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle:
                      const TextStyle(color: Colors.white, fontSize: 25)),
            )
            // Adicione mais campos de texto e um botão aqui
          ],
        ),
      ),
    ));
  }
}
