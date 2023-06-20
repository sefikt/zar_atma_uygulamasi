import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Zar at, Şansını gör.',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int zarNo = 1;

  List<String> gelenZarAdlari = [
    '1 geldi',
    '2 geldi',
    '3 geldi',
    '4 geldi',
    '5 geldi',
    '6 geldi',
  ];

  void zariYenile() {
    setState(() {
      zarNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('images/zar$zarNo.jpg')),
          ),
          Text(
            gelenZarAdlari[zarNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: zariYenile,
                  child: Image.asset('images/click.png')),
            ),
          ),
        ],
      ),
    );
  }
}
