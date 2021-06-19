import 'package:flutter/material.dart';
 
class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    final _screen = MediaQuery.of(context).size;
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    CuadrosFavorito(img: 'waher_machine-copia.jpg',descripcion: 'Washer Machine',),
                    Padding(padding: EdgeInsets.all(_screen.width * 0.01)),
                    CuadrosFavorito(img: 'drywe_machine.jpg',descripcion: 'Drywe Machine',),
                    Padding(padding: EdgeInsets.all(_screen.width * 0.01)),
                    CuadrosFavorito(img: 'waher_machine-copia.jpg',descripcion: 'Washer Machine',),
                  ],
                ),
            ),
        ),
      ],
    );
  }
}

class CuadrosFavorito extends StatelessWidget {
  
  final String img; 
  final String descripcion; 

  const CuadrosFavorito({@required this.img,@required this.descripcion});
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      height: _screen.height * 0.20,
      width: _screen.width * 0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Image(
                  image: AssetImage(img), 
                  fit: BoxFit.cover,
                  ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[100],
                    child: Icon(Icons.send_sharp, color: Colors.blue[700], size: 15,),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(_screen.height * 0.01)),
          Row(
            children: [
              Text(descripcion, 
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold ),
                  )
            ],
          ),
          Padding(padding: EdgeInsets.all(_screen.height * 0.01)),
          Row(
            children: [
              Expanded(
                child: Text('Ready Wash Stainless', 
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey[350], fontSize: 10, fontWeight: FontWeight.bold ),
                ),
              ),
              Text('4.6  ', 
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey[350], fontSize: 10, fontWeight: FontWeight.bold ),
              ),
              Icon(Icons.star, color: Colors.blue[700],size: 10,),
              Icon(Icons.star, color: Colors.blue[700],size: 10),
              Icon(Icons.star, color: Colors.blue[700],size: 10),
              Icon(Icons.star, color: Colors.blue[700],size: 10),
              Icon(Icons.star_border, color: Colors.grey[350],size: 10),
            ],
          )
        ],
      ),
    );
  }
}