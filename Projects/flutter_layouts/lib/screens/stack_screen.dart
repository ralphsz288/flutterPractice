import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

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
        child: Stack(
          children: createSquares(5),
        ),
      ),
    );
  }
}

List<Widget> createSquares(int number) {
  int i = 0;
  List colors = [
    Colors.amber,
    Colors.indigo,
    Colors.lightBlue,
    Colors.deepOrange,
    Colors.purple
  ];
  List<Widget> squares = [];
  squares.add(Container(color: Colors.black,));
  while (i < number) {
    Positioned square = Positioned(
      top: 100 + i.toDouble()*100,
      left: 25 + i.toDouble()*25,
      child: Container(
        color: colors[i],
        width: 60.0 * (number-i),
        height: 60.0 * (number-i),
        child: Text(i.toString()),
      ),
    );
    squares.add(square);
    i++;
  }
  return squares;
}
