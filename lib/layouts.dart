import 'package:flutter/cupertino.dart';

Widget mainWidget(){
  return gridView();
}

Widget gridView() {
  return GridView.extent(
    maxCrossAxisExtent: 150, 
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridList(25),
  );    
}

List<Container>_buildGridList(int i) => List.generate(
    i, (index) => Container(
      child: Image.network('https://picsum.photos/100/'),
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