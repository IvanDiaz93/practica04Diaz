import 'package:flutter/material.dart';
 
 
class Navegador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: _screen.height - 40,
        ),
        Container(
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(children: [
                  Expanded(child: Container(child: Icon(Icons.home_outlined,color: Colors.grey[300]))),
                  Expanded(child: Container(child: Icon(Icons.search,color: Colors.grey[300]))),
                  Expanded(child: Container(child: Icon(Icons.favorite_outline,color: Colors.grey[300]))),
                  Expanded(child: Container(child: Icon(Icons.comment_outlined,color: Colors.grey[300]))),
                  Expanded(child: Container(child: Icon(Icons.account_circle_sharp ,color: Colors.grey[300]))),
                ],
                )
              ],
            ),
        ),
      ],
    );
  }
}