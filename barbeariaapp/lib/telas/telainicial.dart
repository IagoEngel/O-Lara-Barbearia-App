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
      margin: EdgeInsets.only(bottom: 5.0),
      child: Divider(
        color: Color.fromRGBO(117, 0, 0, 1.0),
        thickness: 1.3,
        height: 0,
      ),
      width: widthCorpo,
    );
  }

  Widget localBarbearia(double widthCorpo) {
    return Container(
      width: widthCorpo,
      height: MediaQuery.of(context).size.height * 0.04946,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            "Escolher outra\nbarbearia",
            style: TextStyle(fontSize: 10),
          ),
          Expanded(
            child: ClipRRect(
              child: Image.asset(
                "assets/images/local.png",
                fit: BoxFit.cover,
                width: 220,
                height: MediaQuery.of(context).size.height * 0.04946,
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
            "Horários: disponíveis:",
            style: TextStyle(fontSize: 20),
          )
        ],
      );
    }

    Widget _rowSemana() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Terça-feira\n09:00 - 12:30\n14:00 - 19:00",textAlign: TextAlign.center),
            Text("Quarta-feira\n09:00 - 12:30\n14:00 - 19:00",textAlign: TextAlign.center),
            Text("Quinta-feira\n09:00 - 12:30\n14:00 - 19:00",textAlign: TextAlign.center),
            Text("Sexta-feira\n09:00 - 12:30\n14:00 - 19:00",textAlign: TextAlign.center),
            Text("Sábado\n09:00 - 12:30\n14:00 - 18:00",textAlign: TextAlign.center),
          ],
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height * 0.1082,
      width: widthCorpo,
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromRGBO(196, 196, 196, 0.5),
      ),
      child: Column(
        children: [
          _rowHorariosDisponiveis(),
          _rowSemana(),
        ],
      ),
    );
  }
}
