import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget mainWidget(){
  return gridView();
}

Widget gridView() {
  return GridView.extent(
    maxCrossAxisExtent: 150, 
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,     //y-Axis
    crossAxisSpacing: 4,    //x-Axis
    children: _buildGridList(25),   //Anzahl Darstellungen-Images
  );    
}

List<Widget>_buildGridList(int i) => List.generate(
    i, (index) => Stack(
  alignment: const Alignment(0, 0.8),
    children: [
      CircleAvatar(
      backgroundImage: NetworkImage('https://picsum.photos/150/'),
        radius: 150,
      ),
      Container (
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.black38,
        ),
          child:Text(
          "Text",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white70
        ),
      )
      )
    ]
    )
);


Widget container(){
  return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0x85A02525),
          border: Border.all(
            color: const Color(0x85000000),
            width: 5,
          ),
          borderRadius: BorderRadius.circular(4)
        ),
        child: Image.network('https://picsum.photos/100'),
        margin: const EdgeInsets.all(4),
      )
  );
}