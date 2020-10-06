import 'package:barbeariaapp/telas/telainicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BarbeariaApp());
}

class BarbeariaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'O Lara Barbearia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                fontFamily: "roboto",
              )),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: TelaInicial(),
          ),
        ),
      ),
    );
  }
}
