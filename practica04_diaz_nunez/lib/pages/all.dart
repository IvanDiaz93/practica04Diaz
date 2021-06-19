import 'package:practica04_diaz_nunez/main.dart';

import 'package:flutter/material.dart';
 
class All extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
        padding: EdgeInsets.all(_screen.height * 0.03),
          alignment: Alignment.centerLeft,
          child: Text("ALL", 
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold 
              ),
          )
        ),
        Padding(padding: EdgeInsets.all(_screen.height * 0.01)),        
        Cuadros(
          img: 'microwave_over.jpg',
          name: 'Microwave Over',
          puntaje: '4.6',
          icon1: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon2: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon3: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon4: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon5: Icon(Icons.star_border, color: Colors.grey[350],size: 14),
          ),
         Padding(padding: EdgeInsets.all(_screen.height * 0.01)),
        Cuadros(
          img: 'whisk.jpg',
          name: 'Whisk',
          puntaje: '3.3',
          icon1: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon2: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon3: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon4: Icon(Icons.star_border, color: Colors.grey[350],size: 14),
          icon5: Icon(Icons.star_border, color: Colors.grey[350],size: 14),
          ),
          Padding(padding: EdgeInsets.all(_screen.height * 0.01)),
          Cuadros(
          img: 'speakers.jpg',
          name: 'Speaker',
          puntaje: '4.6',
          icon1: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon2: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon3: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon4: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon5: Icon(Icons.star_border, color: Colors.grey[350],size: 14),
          ),
          Padding(padding: EdgeInsets.all(_screen.height * 0.01)),
          Cuadros(
          img: 'air_conditioner.jpg',
          name: 'Air Conditioner',
          puntaje: '5.0',
          icon1: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon2: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon3: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon4: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon5: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          ),
          Padding(padding: EdgeInsets.all(_screen.height * 0.01)),
          Cuadros(
          img: 'television.jpg',
          name: 'Television',
          puntaje: '5.0',
          icon1: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon2: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon3: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon4: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          icon5: Icon(Icons.star, color: Colors.blue[700],size: 14,),
          ),
          Padding(padding: EdgeInsets.all(_screen.height * 0.01)),
      ],
    );
  }
}

class Cuadros extends StatelessWidget {
  final String img;
  final String name;
  final String puntaje;
  final Icon icon1;
  final Icon icon2;
  final Icon icon3;
  final Icon icon4;
  final Icon icon5;

  const Cuadros({@required this.img,
                @required this.name,
                @required this.puntaje,
                @required this.icon1,
                @required this.icon2,
                @required this.icon3,
                @required this.icon4,
                @required this.icon5 });

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(_screen.width * 0.02),
         height: _screen.height * 0.20,
         width: _screen.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage(img), 
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text('    '+name, 
                          textAlign: TextAlign.left,
                          style: TextStyle(
                          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text('     '+puntaje + '   ', 
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey[350], fontSize: 14, fontWeight: FontWeight.bold ),
                            ),
                            icon1,
                            icon2,
                            icon3,
                            icon4,
                            icon5,
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Icon(Icons.menu_rounded, color: Colors.grey[350],)
          ],
      ),
    );
  }
}