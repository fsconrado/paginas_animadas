import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class PageEstrela extends StatefulWidget {
  @override
  _PageEstrelaState createState() => _PageEstrelaState();
}

class _PageEstrelaState extends State<PageEstrela> {

  String _animacao = "estrelaAparece";

  _mudar(){
    setState(() {
      if(_animacao=="estrelaAparece") _animacao="estrelaGira";
      else _animacao="estrelaAparece";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: FlareActor(
                "assets/estrela2020.flr",
                animation: _animacao,
              ),
            ),
            onDoubleTap: _mudar
        ),
      ),
    );
  }
}
