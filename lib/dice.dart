import 'dart:math';

import 'package:flutter/material.dart';
class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int leftdicenumber=2;
  int rightdicenumber=1;
  void changedicenumber(){
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('diceapp'),),
      body: Row(children: [
        Expanded(child: TextButton(onPressed: (changedicenumber) , child: Image.asset('pic/dice$leftdicenumber.jpeg'))),
        Expanded(child: TextButton(onPressed: (changedicenumber) , child: Image.asset('pic/dice$rightdicenumber.jpeg'))),
      ],
      ),
    );
  }
  }
