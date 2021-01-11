import 'package:barbeariaapp/widgets/custom_expansiontile.dart';
import 'package:flutter/material.dart';

class TelaAgendamento extends StatefulWidget {
  @override
  _TelaAgendamentoState createState() => _TelaAgendamentoState();
}

class _TelaAgendamentoState extends State<TelaAgendamento> {
  DateTime _data;

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
              listaBarba(leftRight),
              listaSobrancelha(leftRight),
              itensSelecionados(0),
              calendario(),
              confirmar(),
              SizedBox(height: 30),
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
    Widget _rowCabelo(String nome, double preco, int tempo, bool popular) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Text(
              "$nome",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Preço: R\$ $preco",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Tempo: $tempo minutos",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            _botaoReservar(popular),
            Divider(
              color: Colors.black45,
              thickness: 2.0,
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
        _rowCabelo("Pigmentação", 7, 10, true),
        _rowCabelo("Corte na tesoura (sem uso de máquina)", 18, 30, false),
        _rowCabelo("Corte degradê navalhado", 20, 45, false),
      ],
    );
  }

  Widget _botaoReservar(bool popular) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (popular)
            ? Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(97, 39, 39, 1.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Serviço popular",
                  style: TextStyle(fontSize: 15),
                ),
              )
            : Container(),
        FlatButton(
          color: Color.fromRGBO(117, 0, 0, 1.0),
          child: Text(
            "Reservar",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget listaBarba(double leftRight) {
    Widget _rowCabelo(String nome, double preco, int tempo, bool popular) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Text(
              "$nome",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Preço: R\$ $preco",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Tempo: $tempo minutos",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            _botaoReservar(popular),
            Divider(
              color: Colors.black45,
              thickness: 2.0,
            ),
          ],
        ),
      );
    }

    return CustomExpansionTile(
      tilePadding: EdgeInsets.symmetric(horizontal: 20),
      childrenPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
      title: Text(
        "Barba",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      children: [
        _rowCabelo("Pigmentação na barba", 5, 10, false),
        _rowCabelo("Barba completa (toalha quente)", 20, 30, true),
        _rowCabelo("Barba Simples", 15, 30, false),
      ],
    );
  }

  Widget listaSobrancelha(double leftRight) {
    Widget _rowCabelo(String nome, double preco, int tempo, bool popular) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Text(
              "$nome",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Preço: R\$ $preco",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Tempo: $tempo minutos",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            _botaoReservar(popular),
            Divider(
              color: Colors.black45,
              thickness: 2.0,
            ),
          ],
        ),
      );
    }

    return CustomExpansionTile(
      tilePadding: EdgeInsets.symmetric(horizontal: 20),
      childrenPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
      title: Text(
        "Sobrancelha",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      children: [
        _rowCabelo("Sobrancelhas na pinça", 12, 15, false),
        _rowCabelo("Sobrancelhas na navalha", 5, 10, false),
      ],
    );
  }

  Widget itensSelecionados(int i) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(117, 0, 0, 1.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "$i Serviços selecionados",
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget calendario() {
    return Column(
      children: [
        FlatButton(
          color: Color.fromRGBO(117, 0, 0, 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "Escolha uma data",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.utc(
                DateTime.now().year,
                DateTime.now().month,
                DateTime.now().day,
              ),
              lastDate: DateTime.utc(
                DateTime.now().year,
                12,
                31,
              ),
            ).then((date) {
              setState(() {
                _data = date;
              });
            });
          },
        ),
        SizedBox(height: 10),
        Text(
          _data == null
              ? "Nenhuma data escolhida"
              : "Data escolhida: ${_data.day}/${_data.month}",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 30),
      ],
    );
  }

  Widget confirmar() {
    return FlatButton(
      color: Color.fromRGBO(117, 0, 0, 1.0),
      padding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "Confirmar Atendimento",
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
      onPressed: () async {
        await showDialog(
          context: (context),
          builder: (context) => AlertDialog(
            backgroundColor: Color.fromRGBO(78, 78, 78, 1.0),
            title: Text("Atendimento Confirmado !"),
          ),
        );
        Navigator.pop(context);
      },
    );
  }
}
