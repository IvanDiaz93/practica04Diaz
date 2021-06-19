import 'package:flutter/material.dart';
  
class BarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.dehaze_rounded),
              Container(
                width: _screen.width * 0.8 ,
                child: Text("Kudo", 
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold ),)
                ),
              Icon(Icons.shopping_bag_outlined)
            ],
          ),
          Padding(padding: EdgeInsets.all(30)),
          Row(
            children: [
              Container(
                width: _screen.width * 0.8 ,
                child: Text("favourites", 
                textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold ),)
                ),
                MaterialButton(
                  minWidth: _screen.width * 0.1,
                  shape: StadiumBorder(),
                  color: Colors.blue[700],
                  textColor: Colors.white,
                  child: Text('VIEW ALL', style: TextStyle(fontSize: 8),),
                  onPressed: () => Navigator.pushNamed(context, 'principal'),
                )
            ],
          )
        ],
      ),
    );
  }
}

