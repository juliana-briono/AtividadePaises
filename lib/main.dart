import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.blue,
        ),
        body: _novaPaginaDados(),
      ),
    ),
  );
}

class _novaPaginaDados extends StatefulWidget {

  const _novaPaginaDados({Key? key}) : super(key:key);

  @override
  State<_novaPaginaDados> createState() => new __novaPaginaDadosState();
}

class __novaPaginaDadosState extends State<_novaPaginaDados> {

  var flagText = ['Afeganistão', 'África do Sul', 'Albânia', 'Alemanha', 'Andorra', 'Angola', 'Arábia Saudita', 'Argélia', 'Argentina', 'Arménia', 'Austrália', 'Áustria', 'Azerbaijão', 'Bahamas', 'Bangladexe', 'Barbados', 'Bélgica', 'Belize', 'Bielorrússia', 'Brasil'];
  int flag = 1;
  var rand = Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(child: FlatButton(
            onPressed: (){
              setState((){
                flag = rand.nextInt(19);
              });
            },
            child: Image.asset('images/bandeira${flag}.png'),
          ),
          ),
          Text('${flagText[flag]}')
        ],
      ),
    );
  }
}

