import 'package:flutter/material.dart';

Widget superHeroDetails(String _superHeroName){
  return Scaffold(
    appBar: AppBar(
      title: Text(_superHeroName),
    ),
    body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(_superHeroName),
          Row(

              children: [
                Image.network('https://picsum.photos/100'),
                Image.network('https://picsum.photos/100'),
                Image.network('https://picsum.photos/100')
              ]
          ),
          Row(

              children: [
                Image.network('https://picsum.photos/100'),
                Image.network('https://picsum.photos/100'),
                Image.network('https://picsum.photos/100')
              ]
          )
        ]
    ),
  );
}