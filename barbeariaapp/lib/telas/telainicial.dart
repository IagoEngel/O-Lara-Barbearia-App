import 'package:barbeariaapp/telas/telaagendamento.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    double widthCorpo = MediaQuery.of(context).size.width * 0.85;
    return Column(
      children: [
        header(),
        carouselSlider(widthCorpo),
        divider(widthCorpo),
        //TODO: localBarbearia()
        localBarbearia(widthCorpo),
        horarios(widthCorpo),
        contatos(widthCorpo),
        divider(widthCorpo),
        botaoReservar(widthCorpo),
      ],
    );
  }

  Widget header() {
    double leftRight = MediaQuery.of(context).size.width * 0.04444;
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1623,
      margin: EdgeInsets.only(
          left: leftRight,
          right: leftRight,
          top: MediaQuery.of(context).padding.top),
      padding: EdgeInsets.all(9.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.22),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Text(
            "O LARA BARBEARIA",
            style: TextStyle(fontSize: 24),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/olara.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  Widget carouselSlider(double widthCorpo) {
    List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    double heightImagem = MediaQuery.of(context).size.height * 0.3153;

    return Container(
      width: widthCorpo,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.04946,
          bottom: MediaQuery.of(context).size.height * 0.03091),
      child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1.0,
          height: heightImagem,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
        ),
        items: list
            .map(
              (item) => ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/imagem${item.toString()}.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget divider(double widthCorpo) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Divider(
        color: Color.fromRGBO(117, 0, 0, 1.0),
        thickness: 3,
        height: 0,
      ),
      width: widthCorpo,
    );
  }

  Widget localBarbearia(double widthCorpo) {
    return Container(
      width: widthCorpo,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(left: 5),
      child: Row(
        children: [
          Text(
            "Escolher outra\nbarbearia",
            style: TextStyle(fontSize: 15),
          ),
          //TODO: MUDANÇA DE LOCAL
          Icon(Icons.expand_more, color: Colors.white, size: 30),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Image.asset(
                "assets/images/local.png",
                fit: BoxFit.cover,
                width: 220,
                height: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget horarios(double widthCorpo) {
    Widget _rowHorariosDisponiveis() {
      return Row(
        children: [
          Icon(Icons.calendar_today, color: Colors.white),
          SizedBox(width: 10),
          Text(
            "Horários disponíveis:",
            style: TextStyle(fontSize: 20),
          )
        ],
      );
    }

    Widget _rowDia(String txtSemana) {
      return Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(
          "$txtSemana",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      );
    }

    Widget _divider() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Divider(
          color: Colors.white,
          thickness: 2.5,
          endIndent: 60,
          indent: 60,
          height: 0,
        ),
      );
    }

    return Container(
      width: widthCorpo,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromRGBO(196, 196, 196, 0.5),
      ),
      child: Column(
        children: [
          _rowHorariosDisponiveis(),
          _rowDia("Terça-feira\n09:00 - 12:30\n14:00 - 19:00"),
          _divider(),
          _rowDia("Quarta-feira\n09:00 - 12:30\n14:00 - 19:00"),
          _divider(),
          _rowDia("Quinta-feira\n09:00 - 12:30\n14:00 - 19:00"),
          _divider(),
          _rowDia("Sexta-feira\n09:00 - 12:30\n14:00 - 19:00"),
          _divider(),
          _rowDia("Sábado\n09:00 - 12:30\n14:00 - 18:00"),
        ],
      ),
    );
  }

  Widget contatos(double widthCorpo) {
    Widget telefone() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Contato:",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "(35) 99930-1314",
            style: TextStyle(fontSize: 20),
          ),
        ],
      );
    }

    Widget redeSocial(String rsocial, String contatoRede) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/$rsocial.png",
              height: 40, fit: BoxFit.cover),
          Text(
            "$contatoRede",
            style: TextStyle(fontSize: 20),
          ),
        ],
      );
    }

    return Container(
      width: widthCorpo,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          telefone(),
          SizedBox(height: 10),
          redeSocial("instagramLogo", "@o_lara_barber_oficial"),
          SizedBox(height: 10),
          redeSocial("facebookLogo", "@olarabarberoficial"),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget botaoReservar(double widthCorpo) {
    return Container(
      alignment: Alignment.center,
      width: widthCorpo - 70,
      margin: EdgeInsets.only(bottom: 30, top: 20),
      child: RaisedButton(
        color: Color.fromRGBO(117, 0, 0, 1.0),
        textColor: Colors.white,
        splashColor: Colors.white10,
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Reservar atendimento", style: TextStyle(fontSize: 20)),
            Icon(Icons.arrow_forward),
          ],
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TelaAgendamento()));
        },
      ),
    );
  }
}
