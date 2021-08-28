import 'package:flutter/cupertino.dart';

Widget mainWidget(){
  return Row(

      children: [
        container(),
        container()
      ]
  );
}

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