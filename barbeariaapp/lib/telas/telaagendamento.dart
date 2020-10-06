import 'package:barbeariaapp/widgets/custom_expansiontile.dart';
import 'package:flutter/material.dart';

class TelaAgendamento extends StatefulWidget {
  @override
  _TelaAgendamentoState createState() => _TelaAgendamentoState();
}

class _TelaAgendamentoState extends State<TelaAgendamento> {
  @override
  Widget build(BuildContext context) {
    double leftRight = MediaQuery.of(context).size.width * 0.04444;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: leftRight,
          right: leftRight,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            children: [
              header(),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Escolha um ou mais serviços que deseja marcar:",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              listaCabeloMasculino(leftRight),
            ],
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 15,
        bottom: 15,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.22),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
      ),
      child: Text("Agendamento", style: TextStyle(fontSize: 24)),
    );
  }

  Widget listaCabeloMasculino(double leftRight) {
    Widget _rowCabelo(String nome) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Text(
              "$nome",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    return CustomExpansionTile(
      tilePadding: EdgeInsets.symmetric(horizontal: 20),
      childrenPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
      title: Text(
        "Cabelo masculino",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      children: [
        _rowCabelo("Pigmentação"),
        _rowCabelo("Corte na tesoura (sem uso de máquina)"),
      ],
    );
  }
}
