import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paginas_animadas/telas/page_coracao.dart';
import 'package:paginas_animadas/telas/page_estrela.dart';

void main() => runApp(MaterialApp(
      home: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          PageCoracao(),
          PageEstrela()
        ],
      ),
      debugShowCheckedModeBanner: false,
    ));
