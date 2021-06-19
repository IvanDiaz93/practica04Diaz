import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica04_diaz_nunez/pages/all.dart';
import 'package:practica04_diaz_nunez/pages/app_bar.dart';
import 'package:practica04_diaz_nunez/pages/favourites.dart';
import 'package:practica04_diaz_nunez/pages/navigator.dart';

class Principal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Stack(
        children: [
          Fondo(),
          SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Column(
                    children: [               
                    BarSuperior(),
                    Favourites(),
                    All(),
                    ],
                  )
                ],
               ),
              ),
             ),  
             Navegador()      
          ],
      ),
    );
  }
}


class Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey[200],
    );
  }
}