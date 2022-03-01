import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'U-guesas',
        home: Scaffold(
            appBar: AppBar(
                title: const Text('U-guesas'),
            ),
            body: Column(
                children: <Widget>[
                  Text(
                      'H. normal'
                  ),
                ],
            ),
        ),
    );

  }
}
