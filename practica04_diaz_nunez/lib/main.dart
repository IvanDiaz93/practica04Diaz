import 'package:flutter/material.dart';
import 'package:practica04_diaz_nunez/pages/principal.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Práctica 04 Diaz',
      initialRoute: 'principal',
      routes: {
        'principal':(_) => Principal(),
      },
    );
  }
}