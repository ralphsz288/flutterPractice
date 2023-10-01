import 'package:flutter/material.dart';

import '../utils/create_squares.dart';

class RowsAndColumnsScreen extends StatelessWidget {
  const RowsAndColumnsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery
        .of(context)
        .size
        .width;
    final sizeY = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and columns'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: sizeX,
        height: sizeY,
        child: Column(
          verticalDirection: VerticalDirection.up,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: createSquares(5),
        ),
      ),
    );
  }
}

//Vertical direction.up switches the order of the elements in a Column
// textDirection: TextDirection.rtl,
// textDirection changes the order in the row