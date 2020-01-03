import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class PageCoracao extends StatefulWidget {
  @override
  _PageCoracaoState createState() => _PageCoracaoState();
}

class _PageCoracaoState extends State<PageCoracao> {

  String _animacao = "pulsar1";

  _mudar(){
    setState(() {
      if(_animacao=="pulsar1") _animacao="pulsar2";
      else _animacao="pulsar1";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: FlareActor(
              "assets/coracao2020.flr",
              animation: _animacao,
            ),
          ),
          onDoubleTap: _mudar
        ),
      ),
    );
  }
}
